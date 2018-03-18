tableextension 50101 VendorTableExt extends Vendor
{
    fields
    {
        field(50000;"Class";Code[10])
        {
            TableRelation = "Class";
        }
    }
}