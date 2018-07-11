pageextension 50103 "SP_ Vendor List Ext" extends "Vendor List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Contact)
        {
            field("SP_ Class";"SP_ Class")
                {
                    CaptionML = ENU = 'Class';
                    Editable = False;
                }
        }
    }
}