report 50119 "CustomerSalesHeaderLine"
{
    DefaultLayout = RDLC;
    RDLCLayout = './yes.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption='CustomerSalesHeaderLine';

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields="No.";
            column(No_; "No.")
            {

            }
            column(Name_Customer; Name)
            {
            }
            column(Address_Customer; Address)
            {
            }
            
            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink="Sell-to Customer No."=field("No.");
                column(Posting_Date; "Posting Date")
                {

                }
                column(BilltoContactNo_SalesHeader; "Bill-to Contact No.")
                {
                }
                dataitem("Sales Line"; "Sales Line")
                {
                    DataItemLink="Sell-to Customer No."=field("Sell-to Customer No.");
                     column(Document_No_;"Document No."){

                    }
                    column(Description;Description)
                    {
                    }
                }
            }
        }
    }
}



   
