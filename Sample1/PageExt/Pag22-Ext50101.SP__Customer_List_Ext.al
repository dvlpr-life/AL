pageextension 50101 "SP_ Customer List Ext" extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Contact)
        {
            field("SP_ Class"; "SP_ Class")
            {
                CaptionML = ENU = 'Class';
                Editable = False;
            }
        }
    }
}