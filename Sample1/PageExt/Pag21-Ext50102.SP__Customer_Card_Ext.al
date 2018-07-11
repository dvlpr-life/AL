pageextension 50102 "SP_ Customer Card Ext" extends "Customer Card"
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