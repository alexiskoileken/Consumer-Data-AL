/// <summary>
/// Codeunit customer validations (ID 50100).
/// </summary>
codeunit 50104 "customer validations"
{
    /// <summary>
    /// OnEmailAddressAdd.
    /// </summary>
    /// <param name="EmailAdress">Code[20].</param>
    [IntegrationEvent(false, false)]
    procedure OnEmailAddressAdd(EmailAdress: Code[50])
    begin
    end;


    /// <summary>
    /// OnCustomerPhoneNumberAdd.
    /// </summary>
    /// <param name="PhoneNumber">Code[20].</param>
    [IntegrationEvent(false, false)]
    procedure OnCustomerPhoneNumberAdd(PhoneNumber: Code[20])
    begin
    end;
}
