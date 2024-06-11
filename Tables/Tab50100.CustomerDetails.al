/// <summary>
/// Table CustomerDetails (ID 50100).
/// </summary>
table 50100 CustomerDetails
{
    Caption = 'CustomerDetails';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CustomerId; Code[20])
        {
            Caption = 'Customer Id';
        }
        field(2; CustomerName; Text[50])
        {
            Caption = 'Customer Name';
        }
        field(3; CustomerEmailAddress; Code[50])
        {
            Caption = 'Customer Email Address';
        }
        field(4; CustomerContacts; Code[20])
        {
            Caption = 'Customer Contacts';
        }
        field(5; CreditLimit; Decimal)
        {
            Caption = 'Credit Limit';
            
        }
        field(6; PaymentTerms; Option)
        {
            Caption = 'Payment Terms';
            OptionMembers = "Mpesa","paypal","Pioneer";
        }
        field(7; DiscountTerms; Decimal)
        {
            Caption = 'Discount Terms';
        }
    }
    keys
    {
        key(PK; CustomerId)
        {
            Clustered = true;
        }
    }
}
