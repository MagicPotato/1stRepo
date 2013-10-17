<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>Наша лаба</title>
 <style type="text/css">
    body{ 
    margin: 0; /* Убираем отступы */
   }
   .kn
   {
   float: right;
   }
   .opis { 
    width: 550px; 
    background: #ccc;
    padding: 10px;
    padding-right: 10px;
    border: solid 1px black; 
    margin:0px 0px 10px 10px;
    clear:left;
   }.nazv { 
    width: 550px; 
    background: #ccc;
    padding: 10px;
    border: solid 1px black; 
    margin:10px 0px 0px 10px;
    clear:left;
   }
   .zago {
    width: 570px; 
    padding: 10px;
    margin:10px 0px 10px 10px;
    clear:left;
    }  
    </style>
</head>
<body>
<div class="zago">
    <asp:Label ID="Zagolovok" runat="server" Text="Скачивание файлов" Font-Size="50"></asp:Label>
</div>

<form id="form1" runat="server">

<div class="nazv">
    <asp:Label ID="nazv1" runat="server" Text="Файл 1"></asp:Label>
    <div class="kn">
        <asp:Button ID="Button2" runat="server" Text="Удалить" />
    </div>
</div>
<div class="opis">
    <asp:Label ID="opis1" runat="server" Text="Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла Описание 1 файла "></asp:Label>
</div>


<div class="nazv">
    <asp:Label ID="nazv2" runat="server" Text="Файл 2"></asp:Label>
    <div class="kn">
        <asp:Button ID="Button3" runat="server" Text="Удалить"/>
    </div>
</div>
<div class="opis">
    <asp:Label ID="opis2" runat="server" Text="Описание 2 файла Описание 2 файла  "></asp:Label>
</div>


<div class="nazv">
    <asp:Label ID="nazv3" runat="server" Text="Файл 3"></asp:Label>
    <div class="kn">
        <asp:Button ID="Button4" runat="server" Text="Удалить" />
    </div>
</div>
<div class="opis">
    <asp:Label ID="opis3" runat="server" Text="Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла Описание 3 файла "></asp:Label>
</div>

<div class="zago" >
    <asp:Button ID="Button1" runat="server" Text="загрузка файлов" Width="200" Height="100" Font-Size="16" OnClick="Button1_Click"/>
</div>
</form>
</body>
</html>