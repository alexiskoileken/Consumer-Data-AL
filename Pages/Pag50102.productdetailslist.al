/// <summary>
/// Page product details list (ID 50102).
/// </summary>
page 50102 "product details list"
{
    ApplicationArea = All;
    Caption = 'product details list';
    PageType = List;
    SourceTable = ProductsDetails;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Product Id"; Rec."Product Id")
                {
                    ToolTip = 'Specifies the value of the Product Id field.', Comment = '%';
                }
                field("Product Name"; Rec."Product Name")
                {
                    ToolTip = 'Specifies the value of the Product Name field.', Comment = '%';
                }
                field("Product Price"; Rec."Product Price")
                {
                    ToolTip = 'Specifies the value of the Product Price field.', Comment = '%';
                }
            }
        }
    }
}
