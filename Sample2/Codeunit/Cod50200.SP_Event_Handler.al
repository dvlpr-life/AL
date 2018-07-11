codeunit 50200 "SP_ Event Handler"
{
    trigger OnRun();
    begin
        Message('Hello!');
    end;



    [EventSubscriber(ObjectType::Table,18,'OnAfterValidateEvent','Name',false,false)]
    procedure OnCustomerNameValidate(var Rec : Record Customer; var xRec : Record Customer; currFieldNo : Integer);
    var
        EventLog : Record "SP_ Event Log Entry";
    begin
        EventLog.InsertEntry(EventLog.Type::Customer, Rec."No.",xRec.Name, Rec.Name);
    end;

    [EventSubscriber(ObjectType::Table,23,'OnAfterValidateEvent','Name',false,false)]
    procedure OnVendorNameValidate(var Rec : Record Vendor; var xRec : Record Vendor; currFieldNo : Integer);
    var
        EventLog : Record "SP_ Event Log Entry";
    begin
        EventLog.InsertEntry(EventLog.Type::Vendor, Rec."No.",xRec."Name", Rec."Name");
    end;
}