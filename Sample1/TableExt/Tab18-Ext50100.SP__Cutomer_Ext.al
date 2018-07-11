tableextension 50100 "SP_ Cutomer Ext" extends Customer
{
    fields
    {
        field(50000;"SP_ Class";Code[10])
        {
            CaptionML = ENU = 'Class';
            DataClassification = CustomerContent;
            TableRelation = "SP_ Class";
        }
    }
}