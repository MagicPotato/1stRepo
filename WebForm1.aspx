<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
     <style type="text/css">
    body{ 
    margin: 0; /* Убираем отступы */
   }
   .gusi { 
    width: 570px; 
    padding: 5px;
    margin:0px 0px 0px 10px;
    clear:left;
   }
   </style>
</head>
<body>
<div class="gusi">
    <asp:Label ID="zagolovok" runat="server" Text="Добавление файла" Font-Size="50"></asp:Label>
</div>


<div class="gusi">
    <asp:Label ID="Label1" runat="server" Text="Краткое описание файла:"></asp:Label>
</div>
<form id="form1" runat="server">
<div class="gusi">
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="5" Width="300"></asp:TextBox>
</div>

<div class="gusi">
    <asp:FileUpload ID="FU" runat="server" Width="200" />
</div>

<div class="gusi">
    <asp:Button ID="Button1" runat="server" Text="Отправить" />
</div>
    
    </form>
</body>
</html>