/// <summary>
/// Table ProductsDetails (ID 50101).
/// </summary>
table 50101 ProductsDetails
{
    Caption = 'ProductsDetails';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Product Id"; Integer)
        {
            Caption = 'Product Id';
            AutoIncrement = true;
        }
        field(2; "Product Name"; Text[50])
        {
            Caption = 'Product Name';
        }
        field(3; "Product Price"; Decimal)
        {
            Caption = 'Product Price';
        }
    }
    keys
    {
        key(PK; "Product Name", "Product Price")
        {
            Clustered = true;
        }
    }
}
