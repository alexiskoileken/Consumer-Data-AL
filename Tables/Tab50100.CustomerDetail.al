/// <summary>
/// Table Customer Detail (ID 50100).
/// </summary>
table 50100 "Customer Detail"
{
    Caption = 'Customer Detail';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; CustomerId; Code[20])
        {
            Caption = 'Customer Id';
            Editable = false;
        }
        field(2; CustomerName; Text[50])
        {
            Caption = 'Customer Name';

        }

        field(3; CustomerEmailAddress; Text[50])
        {
            Caption = 'Customer Email Address';
            NotBlank = true;

            trigger OnValidate()
            var
                CustomerEmail: Codeunit "customer validations";
            begin
                CustomerEmail.OnEmailAddressAdd(Rec.CustomerEmailAddress);

            end;

        }
        field(4; CustomerContacts; Code[20])
        {
            Caption = 'Customer Contacts';
            NotBlank = true;
            trigger OnValidate()
            var
                PhoneNumber: Codeunit "customer validations";
            begin
                PhoneNumber.OnCustomerPhoneNumberAdd(Rec.CustomerContacts);
            end;
        }
        field(5; ProductName; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Product Name';
            TableRelation = ProductsDetails."Product Name";
            trigger OnValidate()
            var
                ProductRec: Record ProductsDetails;
            begin
                ProductRec.SetRange("Product Name", ProductName);

                if ProductRec.FindFirst() then begin
                    ProductPrice := ProductRec."Product Price";
                    CustomerPoints := ProductRec."Product Price" * 0.1;

                end else begin
                    Error('The product does not exist in the ProductsDetails table.');
                end;

            end;
        }
        field(11; ProductPrice; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Product Price';
            Editable = false;

        }

        field(6; CustomerPoints; Decimal)
        {
            Caption = 'Customer Points';
            Editable = false;

        }
        field(7; PaymentTerms; Option)
        {
            Caption = 'Payment Terms';
            OptionMembers = "Mpesa","paypal","Pioneer","Bank";

        }
        field(8; DiscountTerms; Decimal)
        {
            Caption = 'Discount Terms';
        }
        field(9; Noseries; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(10; AmountPayable; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Amount payable';
        }
    }
    keys
    {
        key(PK; CustomerName, CustomerEmailAddress)
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    var
        Noseriesmgt: Codeunit NoSeriesManagement;

    begin
        If CustomerId = '' then begin
            Noseriesmgt.InitSeries('CSi', Noseries, 0D, CustomerId, Noseries);
        end;

    end;

    /// <summary>
    /// CalculatePoints.
    /// </summary>
    procedure CalculatePoints()
    var
        points: Record "Customer Detail";

    begin
        points.CustomerPoints := points.ProductPrice * 0.1;

    end;




}

