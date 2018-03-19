codeunit 50200 EventHandler
{
    trigger OnRun();
    begin
        Message('Hello!');
    end;
    


    [EventSubscriber(ObjectType::Table,18,'OnAfterValidateEvent','Name',true,true)]
    procedure OnCustomerNameValidate(var Rec : Record customer;var xRec : Record customer;currFieldNo : Integer);
    var 
        EventLog : Record "Event Log Entry";
    begin      
         //EventLog.InsertEntry(0, Rec."No.",xRec."Name", Rec."Name");
         EventLog.InsertEntry(EventLog.Type::Customer,'10000','test','test');
    end;

    [EventSubscriber(ObjectType::Table,23,'OnAfterValidateEvent','Name',true,true)]
    procedure OnVendorNameValidate(var Rec : Record 23;var xRec : Record 23;currFieldNo : Integer);
    var 
        EventLog : Record "Event Log Entry";
    begin
       // EventLog.InsertEntry(EventLog.Type::Vendor, Rec."No.",xRec."Name", Rec."Name");
    end;        
}