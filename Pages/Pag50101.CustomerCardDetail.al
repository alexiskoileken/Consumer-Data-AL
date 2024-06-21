/// <summary>
/// Page CustomerCard (ID 50101).
/// </summary>
page 50101 CustomerCardDetail
{
    ApplicationArea = All;
    Caption = 'CustomerCard';
    PageType = Card;
    SourceTable = "Customer Detail";



    layout
    {

        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(CustomerId; Rec.CustomerId)
                {
                    ToolTip = 'Specifies the value of the CustomerId field.', Comment = '%';
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ToolTip = 'Specifies the value of the CustomerName field.', Comment = '%';


                }
                field(CustomerEmailAddress; Rec.CustomerEmailAddress)
                {
                    ToolTip = 'Specifies the value of the CustomerEmailAdress field.', Comment = '%';

                }
                field(CustomerContacts; Rec.CustomerContacts)
                {
                    ToolTip = 'Specifies the value of the Customer Contacts field.', Comment = '%';
                }
                field(ProductName; Rec.ProductName)
                {
                    ToolTip = 'Specifies the value of the Product Price  field.', Comment = '%';
                }
                field(ProductPrice; Rec.ProductPrice)
                {
                    ToolTip = 'Specifies the value of the Product price  field.', Comment = '%';

                }
                field(CustomerPoints; Rec.CustomerPoints)
                {
                    ToolTip = 'Specifies the value of the Customer Points field.', Comment = '%';
                }
                field(PaymentTerms; Rec.PaymentTerms)
                {
                    ToolTip = 'Specifies the value of the Payment Terms field.', Comment = '%';
                }
                field(DiscountTerms; Rec.DiscountTerms)
                {
                    ToolTip = 'Specifies the value of the Discount Terms field.', Comment = '%';
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CalcPoints)
            {
                ApplicationArea = All;

                trigger OnAction()

                begin
                    CalculatePoints();
                end;
            }
        }

    }
    procedure CalculatePoints()
    var
        points: Record "Customer Detail";

    begin
        points.CustomerPoints := points.ProductPrice * 0.1;
    end;
}
