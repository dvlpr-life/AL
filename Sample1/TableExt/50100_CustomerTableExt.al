tableextension 50100 CutomerTableExt extends Customer
{
    fields
    {
        field(50000;"Class";Code[10])
        {
            TableRelation = "Class";
        }
    }
}