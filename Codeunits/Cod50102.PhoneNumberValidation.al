/// <summary>
/// Codeunit Phone Number Validation  (ID 50102).
/// </summary>
codeunit 50102 "Phone Number Validation "
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"customer validations", 'OnCustomerPhoneNumberAdd', '', false, false)]
    local procedure OnvalidatePhoneNumber(PhoneNumber: Code[20])
    var
        errormessage: label 'This is not a correct phone number';

    begin
        if not ValidatePhoneNumber(PhoneNumber) then
            Error(errormessage);
    end;

    local procedure ValidatePhoneNumber(PhoneNumber: code[20]): Boolean
    var
        i: Integer;
    begin
        if PhoneNumber[1] <> '+' then
            Error('Does not start with phone');


        for i := 2 to StrLen(PhoneNumber) do begin
            if not (PhoneNumber[i] in ['0' .. '9']) then
                exit(false);


        end;

        if StrLen(PhoneNumber) <> 13 then
            exit(false);

        exit(true);
    end;
}
