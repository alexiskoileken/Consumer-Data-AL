/// <summary>
/// Page Customer Detail List (ID 50100).
/// </summary>
page 50100 "Customer Detail List"
{
    ApplicationArea = All;
    Caption = 'Customer Detail List';
    PageType = List;
    SourceTable = "Customer Detail";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
            }
        }
    }
}
