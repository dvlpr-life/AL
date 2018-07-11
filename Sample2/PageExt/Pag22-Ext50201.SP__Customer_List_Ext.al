pageextension 50201 "SP_ Customer List Ext" extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast("&Customer")
        {
              action("SP_ Show Log")
              {
                    ApplicationArea = All;
                    CaptionML = ENU = 'Show Log';
                    Image = Card;
                    Promoted = false;
                    RunObject = page 50200;
                    RunPageLink = Type = const(Customer),"No."=field("No.");
                    RunPageOnRec = false;
                    ToolTipML = ENU = 'Show the name change log entries.';
              }
        }
    }
}