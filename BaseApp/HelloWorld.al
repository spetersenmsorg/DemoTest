// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 55000 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;
}

// Empty example page
page 55001 "My Example Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(ExampleField; 'This is an example page')
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}

// Role Center extension to add navigation
pageextension 55002 "Business Manager RC Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(Sections)
        {
            group("My Extensions")
            {
                Caption = 'My Extensions';
                action("My Example Page")
                {
                    Caption = 'Example Page';
                    ApplicationArea = All;
                    RunObject = page "My Example Page";
                    Image = Document;
                }
            }
        }
    }
}
