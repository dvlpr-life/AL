pageextension 50104 "SP_ Vendor Card Ext" extends "Vendor Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Blocked)
        {
            field("SP_ Class"; "SP_ Class")
            {
                CaptionML = ENU = 'Class';
                Editable = true;
            }
        }
    }
}