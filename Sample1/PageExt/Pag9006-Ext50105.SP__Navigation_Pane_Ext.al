pageextension 50105 "SP_ Navigation Pane Ext" extends "Order Processor Role Center"
{

    actions
    {
        addlast(Sections)
        {
            group("Extensions")
            {
                action("SP_ Classes")
                {
                    RunObject = page "SP_ Classes";
                    ApplicationArea = All;
                }
            }
        }
    }
}