page 50101 "Customer Detail card "
{
    ApplicationArea = All;
    Caption = 'Customer Detail card ';
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
                    ToolTip = 'Specifies the value of the Customer Id field.', Comment = '%';
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ToolTip = 'Specifies the value of the Customer Name field.', Comment = '%';
                }
                field(CustomerEmailAddress; Rec.CustomerEmailAddress)
                {
                    ToolTip = 'Specifies the value of the Customer Email Address field.', Comment = '%';
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
