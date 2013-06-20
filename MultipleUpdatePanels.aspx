<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MultipleUpdatePanels.aspx.vb" Inherits="MultipleUpdatePanels" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

    
        <asp:Label ID="CurrentTime" runat="server"></asp:Label>

    
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:SqlDataSource ID="BooksDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [BookID], [Title] FROM [Books]"></asp:SqlDataSource>
                <asp:GridView ID="BooksGrid" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" DataKeyNames="BookID" 
                    DataSourceID="BooksDataSource">
                    <Columns>
                        <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="BookID" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="CurrentTimeAjax1" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:SqlDataSource ID="GenreDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Genre] FROM [Books]"></asp:SqlDataSource>
                <asp:GridView ID="GenreGrid" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" DataSourceID="GenreDataSource">
                    <Columns>
                        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="CurrentTimeAjax2" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </div>
    <asp:Button ID="FullPostbackButton" runat="server" Text="Full PostBack" />
    </form>
</body>
</html>
