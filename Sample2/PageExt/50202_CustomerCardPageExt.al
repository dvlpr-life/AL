pageextension 50202 CustomerCardPageExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast("&Customer")
        {   
            action("Show Log")
            {
                ApplicationArea = All;
                Image = Card;
                Promoted = false;
                RunObject = page 50200;
                //RunPageLink = Type = const(Customer),"No."=field("No.");
                RunPageOnRec = false;
                ToolTipML = ENU = 'Show the name change log entries.';
            }
        }
    }    
}