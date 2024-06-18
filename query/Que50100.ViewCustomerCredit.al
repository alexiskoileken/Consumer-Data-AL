/// <summary>
/// Query ViewCustomerCredit (ID 50100).
/// </summary>
query 50100 ViewCustomerCredit
{
    Caption = 'View Customer Credit limit ';
    QueryType = Normal;
    QueryCategory = 'customer list';
    OrderBy = descending(CreditLimit);


    elements
    {
        dataitem("customer"; "Customer Detail")
        {

            column(CustomerId; CustomerId)
            {

            }
            column(name; CustomerName)
            {

            }
            column(EmailAddress; CustomerEmailAddress)
            {

            }
            column(CreditLimit; CreditLimit)
            {

            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
