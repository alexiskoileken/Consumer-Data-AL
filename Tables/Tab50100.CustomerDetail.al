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
        field(2; CustomerName; Code[50])
        {
            Caption = 'Customer Name';


        }

        field(3; CustomerEmailAddress; Code[50])
        {
            Caption = 'Customer Email Address';

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
            trigger OnValidate()
            var
                PhoneNumber: Codeunit "customer validations";
            begin
                PhoneNumber.OnCustomerPhoneNumberAdd(Rec.CustomerContacts);
            end;
        }
        field(5; CreditLimit; Decimal)
        {
            Caption = 'Credit Limit';

        }
        field(6; PaymentTerms; Option)
        {
            Caption = 'Payment Terms';
            OptionMembers = "Mpesa","paypal","Pioneer","Bank";
        }
        field(7; DiscountTerms; Decimal)
        {
            Caption = 'Discount Terms';
        }
        field(8; Noseries; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; CustomerId)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        Noseriesmgt: Codeunit NoSeriesManagement;

    begin

        if CustomerName = '' then begin
            Error('this field cannot be empty');
        end;
        // if CustomerEmailAddress = '' then begin
        //     Error('this field cannot be empty');
        // end;

        If CustomerId = '' then begin
            Noseriesmgt.InitSeries('CSi', Noseries, 0D, CustomerId, Noseries);
        end;



    end;

}

