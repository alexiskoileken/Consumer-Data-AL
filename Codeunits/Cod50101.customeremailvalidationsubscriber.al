/// <summary>
/// Codeunit customer validation subscriber (ID 50101).
/// </summary>
codeunit 50101 "Email validation subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"customer validations", 'OnEmailAddressAdd', '', false, false)]
    local procedure EmailValidation(EmailAdress: Code[50])
    var
        RegEx: Codeunit Regex;
        IsMatch: Boolean;
        Pattern: Text[100];
    begin
        Pattern := '^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
        IsMatch := RegEx.IsMatch(EmailAdress, Pattern);

        if not IsMatch then
            Error('The email address is not valid.');
    end;
}
