table 50102 "SP_ Class"
{
    CaptionML = ENU = 'Class';
    DataClassification = CustomerContent;
    LookupPageId = "SP_ Classes";
    DrillDownPageId = "SP_ Classes";

    fields
    {
        field(1;Code;Code[10])
        {
            CaptionML = ENU = 'Code';
            NotBlank = true;
        }
        field(5;Description;Text[50])
        {
            CaptionML = ENU = 'Description';
        }
        field(10;DateTimeInserted;DateTime)
        {
            CaptionML = ENU = 'Date/Time Inserted';
            Editable = False;
        }
        field(20;DateTimeModified;DateTime)
        {
            CaptionML = ENU = 'Date/Time Modifed';
            Editable = False;
        }
    }

    keys
    {
        key(PK;Code)
        {
            Clustered = true;
        }
    }

    var
    RenameErr: TextConst ENU = 'Unable to Rename.';
    DeleteErr: TextConst ENU = 'Unable to Delete';

    trigger OnInsert();
    begin
        DateTimeInserted := CurrentDateTime;
    end;

    trigger OnModify();
    begin
        DateTimeModified := CurrentDateTime;
    end;

    trigger OnDelete();
        var
            customer : Record Customer;
            vendor : Record Vendor;
    begin
        customer.SETRANGE("SP_ Class",Code);
        if customer.FindFirst then
            Error(DeleteErr);

        vendor.SETRANGE("SP_ Class", Code);
        if vendor.FindFirst then
            Error(DeleteErr);
    end;

    trigger OnRename();
    begin
        Error(RenameErr);
    end;

}