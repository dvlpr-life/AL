page 50100 Classes
{
    PageType = List;
    SourceTable = Class;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                   Visible = true; 
                }
                field(Description;Description)
                {
                    Visible = true;
                }
                field(DateTimeInserted;DateTimeInserted)
                {
                    Editable = false;
                    Visible = true;
                }
                field(DateTimeModified;DateTimeModified)
                {
                    Editable = false;
                    Visible = true;
                }
            }
        }
    }
}