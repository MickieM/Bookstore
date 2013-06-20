<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AjaxSimple.aspx.vb" Inherits="AjaxSimple" %>

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
        <asp:Button ID="FullPostbackButton" runat="server" Text="Full Postback" />
        
        <br />
        <br />
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="CurrentTimeAjax" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="PartialPostbackButton" runat="server" Text="Partial Postback" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
