table 50102 Class
{
    LookupPageId = 50100;
    DrillDownPageId = 50100;
    
    fields
    {
        field(1;Code;Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(5;Description;Text[50])
        {
            Caption = 'Description';
        }
        field(10;DateTimeInserted;DateTime)
        {
            Caption = 'Date/Time Inserted';
            Editable = False;            
        }
        field(20;DateTimeModified;DateTime)
        {
            Caption = 'Date/Time Modifed';
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
            customer : Record 18;
            vendor : Record 23;
    begin
        //customer.SETRANGE("Class",Rec."Class")
    end;

    trigger OnRename();
    begin
        Error('Unable to Rename.')
    end;

}