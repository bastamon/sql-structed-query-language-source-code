<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="调用SQL语句显示数据库连接信息" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="是否连接成功提示信息："></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="连接字符串："></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="数据库名称："></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="服务器实例名："></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="服务器版本："></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
