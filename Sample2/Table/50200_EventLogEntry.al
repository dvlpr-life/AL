table 50200 "Event Log Entry"
{
CaptionML = ENU='Event Log Entry';
DrillDownPageId = 50200;
DataPerCompany = false;
LookupPageId = 50200;
PasteIsValid = false;

    fields
    {
        field(1;"Entry No.";Integer)
        {           
            CaptionML = ENU = 'Entry No.';
            Editable = false;
        }
        field(2;Type;Option)
        {
            CaptionML = ENU ='Type';
            OptionCaptionML = ENU = 'Customer,Vendor';
            OptionMembers = Customer, Vendor;
        }
        field(3;"No.";Code[20])
        {
            CaptionML = ENU = 'No.';
            TableRelation = IF (Type=CONST("Customer")) "Customer" ELSE IF (Type=CONST(Vendor)) "Vendor";
        }
        field(5;"Old Value";Text[50])
        {
            CaptionML = ENU = 'Old Value';
        }
        field(10;"New Value";Text[50])
        {
            CaptionML = ENU = 'New Value';
        }
        field(15;"Mod Date/Time";DateTime)
        {

        }

        field(20;"User ID";Text[50])
        {
            CaptionML = ENU = 'User ID';
        }
    }

    keys
    {
        key(PK;"Entry No.")
        {
            Clustered = true;
        }
        key(TypeNo;"Type","No.")
        {
            Clustered = false;
        }
    }
    
    var
        ErrorMsg : TextConst ENU = 'Unable to perform Action';

    trigger OnInsert();
    var
        EventLog : Record "Event Log Entry";
    begin
        if EventLog.FindLast then
            "Entry No." := EventLog."Entry No." + 1
        else
            "Entry No." := 1;

        "Mod Date/Time" := CurrentDateTime;
        "User ID" := UserId;
    end;

    trigger OnModify();
    begin
        Error(ErrorMsg);
    end;

    trigger OnDelete();
    begin
        Error(ErrorMsg);
    end;

    trigger OnRename();
    begin
        Error(ErrorMsg);
    end;

    procedure InsertEntry(Type : Option; No : Code[20]; OldValue : Text[50]; NewValue : Text[50]);
    var
        EventLog : Record 50200;
    begin
        EventLog.Init;
        EventLog.Type := Type;
        EventLog."No." := No;
        EventLog."Old Value" := OldValue;
        EventLog."New Value" := NewValue;
        EventLog.Insert(true);
    end;

}