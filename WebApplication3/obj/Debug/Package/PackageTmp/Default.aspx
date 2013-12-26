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
        <div>
            <asp:PlaceHolder ID="OurPlaceHolder" runat="server"></asp:PlaceHolder>
        </div>

       

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




         <
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete all" />
    </p>
    </form>
</body> 
</html>
