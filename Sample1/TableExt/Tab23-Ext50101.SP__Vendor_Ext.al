tableextension 50101 "SP_ Vendor Ext" extends Vendor
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