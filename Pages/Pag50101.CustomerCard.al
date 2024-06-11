page 50101 CustomerCard
{
    ApplicationArea = All;
    Caption = 'CustomerCard';
    PageType = Card;
    SourceTable = CustomerDetails;
    
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
                field(CreditLimit; Rec.CreditLimit)
                {
                    ToolTip = 'Specifies the value of the Credit Limit field.', Comment = '%';
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
}
