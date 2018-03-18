pageextension 50101 CustomerListPageExt extends "Customer List"
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