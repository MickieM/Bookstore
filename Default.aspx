<%@ Page MasterPageFile="~/MasterPage.master" Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>



<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div>
        <h2>Welcome to the best online book store!</h2>
        <p>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
        <p>
            &nbsp;<asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <asp:Login ID="Login1" runat="server">
                    </asp:Login>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    Welcome back, 
                    <asp:LoginName ID="LoginName1" runat="server" />
                </LoggedInTemplate>
            </asp:LoginView>
        </p>
        
    
    </div>
</asp:Content>




