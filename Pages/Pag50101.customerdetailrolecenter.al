/// <summary>
/// Page customer detail rolecenter (ID 50101).
/// </summary>
page 50103 "customer detail rolecenter"
{
    ApplicationArea = All;
    Caption = 'customer detail rolecenter';
    PageType = RoleCenter;

    actions
    {
        area(Sections)
        {
            group(cutomerdetails)
            {
                Caption = 'customers Detail';

                action(customerlists)
                {
                    Caption = 'Customer list';
                    ApplicationArea = All;
                    RunObject = page "Customer Detail List";
                }
            }
        }
    }
}
profile customer
{
    Caption = 'customer';
    RoleCenter = "customer detail rolecenter";
    ProfileDescription = 'hi!';

}

