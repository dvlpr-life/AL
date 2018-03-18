pageextension 50105 NavigationPaneExt extends "Order Processor Role Center"
{

    actions
    {
        addlast(Sections)
        {
            group("Extensions")
            {
                action("Classes")
                {
                    RunObject = page "Classes";
                    ApplicationArea = All;
                }
            }
        }
    }
}