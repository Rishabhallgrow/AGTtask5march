report 50120 "vendorpuchaseheader_line"
{
    DefaultLayout = RDLC;
    Caption = 'vendorpuchaseheader_line';
    RDLCLayout = './MyReport1.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;


    dataset
    {
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields = "No.";
            column(No_;
            "No.")
            {

            }
            column(City_Vendor; City)
            {
            }
            column(CountryRegionCode_Vendor; "Country/Region Code")
            {
            }

            dataitem("Purchase Header"; "Purchase Header")
            {
                DataItemLink = "Buy-from Vendor No." = field("No.");
                column(Vendor_Order_No_; "Vendor Order No.")
                {

                }
                dataitem("Purchase Line"; "Purchase Line")
                {
                    DataItemLink = "Document No." = field("No.");
                    column(Quantity; Quantity)
                    {

                    }
                    column(VendorItemNo_PurchaseLine; "Vendor Item No.")
                    {
                    }
                    column(UnitofMeasure_PurchaseLine; "Unit of Measure")
                    {
                    }
                    column(UnitCost_PurchaseLine; "Unit Cost")
                    {
                    }


                }
            }

        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }


        }


        var
            myInt: Integer;
    }
}