/// <summary>
/// Page CustomerDetailsList (ID 50100).
/// </summary>
page 50100 CustomerDetailsList
{
    ApplicationArea = All;
    Caption = 'CustomerDetailsList';
    PageType = List;
    SourceTable = CustomerDetails;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(CustomerId; Rec.CustomerId)
                {
                    ToolTip = 'Specifies the value of the CustomerId field.', Comment = '%';
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ToolTip = 'Specifies the value of the CustomerName field.', Comment = '%';
                }
                field(CustomerEmailAdress; Rec.CustomerEmailAddress)
                {
                    ToolTip = 'Specifies the value of the CustomerEmailAdress field.', Comment = '%';
                }
            }
        }
    }
}
