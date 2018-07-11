page 50200 "SP_ Event Log Entries"
{
    ApplicationArea = All;
    CaptionML = ENU='Event Log Entries';
    Editable = false;
    PageType = List;
    SourceTable = "SP_ Event Log Entry";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No.";"Entry No.")
                {

                }
                field(Type;Type)
                {

                }
                field("No.";"No.")
                {

                }
                field("Old Value";"Old Value")
                {

                }
                field("New Value";"New Value")
                {

                }

                field("Mod Date/Time";"Mod Date/Time")
                {

                }

                field("User ID";"User ID")
                {

                }
            }
        }
    }
}