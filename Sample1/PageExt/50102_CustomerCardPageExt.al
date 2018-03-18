pageextension 50102 CustomerCardPageExt extends "Customer Card"
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