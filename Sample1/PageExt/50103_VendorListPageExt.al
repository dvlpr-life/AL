pageextension 50103 VendorListPageExt extends "Vendor List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Contact)
        {  
            field("Class";Class)
                {
                    Editable = False;                
                }  
        }
    }
}