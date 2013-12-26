<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel='stylesheet' type="text/css" href="stylesheet.css" />
</head>


<body>
    <form id="form1" runat="server">
    <div>
      <div class="Label">
      <asp:label ID="Label3" runat="server" Font-Size="3em" text="UpLoad & DownLoad service"></asp:label>
      </div>
      <div id="ControlPanel">
        <div>  
            <asp:Label ID="Label1" runat="server" Text="Below you can change description of any file."></asp:Label> 
        </div>

        <div>      
            <asp:TextBox ID="CDTB" runat="server" TextMode="MultiLine" Rows="5" Width="300"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label2" runat="server" Text="Also you can upload you own files."></asp:Label>
        </div>

        <div>
            <asp:FileUpload ID="OurFileUpload" runat="server" />
        </div>

        <div>
            <asp:TextBox ID="ULTB" runat="server" TextMode="MultiLine" Rows="5" Width="300" Text="description has not been writen yet..."></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="ULbutton" runat="server" Text="Upload" 
                onclick="ULbutton_Click" />
        </div>
       </div>

        <asp:Repeater runat="server" ID="Repeater1">
            <HeaderTemplate>
                <div id="rptr">
            </HeaderTemplate>
            <ItemTemplate>
            <div class="BLOK">
                <div class="name">
                <%# Eval("Name") %>
                </div>

                <div class="description">
                <%# Eval("Description") %>
                </div>

                <div>
                <asp:Button runat="server" Text="Delete" 
                        ID="ButtonRemove" 
                        OnClick="delete_Click" 
                        CommandArgument='<%# Eval("Id") %>'
                        UseSubmitBehavior="False" />
                </div>

                <div>
                <asp:Button runat="server" Text="Download" 
                        ID="ButtonDownLoad" 
                        OnClick="loadButton_Click" 
                        CommandArgument='<%# Eval("Id") %>'
                        UseSubmitBehavior="False" />
                </div>

                <div>
                <asp:Button runat="server" Text="Change description" 
                        ID="Button2" 
                        OnClick="changeButton_Click" 
                        CommandArgument='<%# Eval("Id") %>'
                        UseSubmitBehavior="False" />
                </div>

                <div id="line"></div>

            </div>
            </ItemTemplate>
            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>
        
    </div>
    </form>
</body> 
</html>
