page 50100 "SP_ Classes"
{
    CaptionML = ENU = 'Classes';
    PageType = List;
    SourceTable = "SP_ Class";
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