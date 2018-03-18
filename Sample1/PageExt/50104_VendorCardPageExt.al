pageextension 50104 VendorCardPageExt extends "Vendor Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Blocked)
        {  
            field("Class";Class)
                {
                    Editable = true;                
                }  
        }
    }
}