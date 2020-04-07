<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FillingForm.aspx.cs" Inherits="Register.FillingForm" %>
hello coin card
y nhu word online
chưa coi :v
yup
thấy ngon phết

<!DOCTYPE html>
làm trên nhiều file ra sao?
uhm
cũng được, định làm project bằng cái này hả?
rồi Y vs Khôi chạy nổi k?
:v
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1433px;
            background-color:blueviolet;
        }
        .auto-style2 {
            width: 1433px;
        }
        .auto-style7{
            text-align:center;
        }
        .auto-style8 {
            margin-left: 227px;
        }
        .auto-style9 {
            margin-left: 277px;
        }
        .auto-style10 {
            margin-left: 192px;
        }
        .auto-style11 {
            color: #FF0000;
        }
        .auto-style12 {
            color: #FF3300;
        }
        .auto-style13 {
            margin-left: 189px;
        }
        .auto-style14 {
            margin-left: 269px;
        }
        .auto-style15 {
            margin-left: 309px;
        }
        .auto-style16 {
            margin-left: 273px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <%-- section1 --%>
                <tr>
                    <td class="auto-style7"><strong>Đăng ký khách hàng</strong></td>
                </tr>

                <%-- section2 --%>
                <tr>
                    <td class="auto-style1">Thông tin đăng nhập</td>
                </tr>

                <tr>
                    <td class="auto-style2">Tên đăng nhập 
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8" Width="400px"></asp:TextBox>
                        <span class="auto-style11">(*)</span></td>
                </tr>
                
                <tr>
                    <td class="auto-style2">Mật khẩu 
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Width="400px"></asp:TextBox>
                        <span class="auto-style12">(*)</span></td>
                </tr>

                 <tr>
                    <td class="auto-style2">Nhập lại mật khẩu 
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10" Width="400px"></asp:TextBox>
                        <span class="auto-style12">(*)</span></td>
                </tr>
                <%-- section3 --%>
                <tr>
                    <td class="auto-style1">Chi tiết</td>
                </tr>

                <tr>
                    <td class="auto-style2">Họ tên khách hàng<asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style13" Width="400px"></asp:TextBox>
                        <span class="auto-style12">(*)(*)</span></td>
                </tr>

                <tr>
                    <td class="auto-style2">Ngày sinh 
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style14" Width="400px"></asp:TextBox>
                        <span class="auto-style12">(*)</span></td>
                </tr>             
                
                <tr>
                    <td class="auto-style2">Giới tính 
                        <span style="margin-left:273px;"><asp:RadioButton ID="radNam" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Nam" /></span>
                        <span style="margin-left:173px;"><asp:RadioButton ID="radNu" runat="server" Text="Nữ" /></span>
                    </td>
                </tr>           
                
                <tr>
                    <td class="auto-style2">Email <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style15" Width="400px"></asp:TextBox>
                        <span class="auto-style12">(*)</span></td>
                </tr>  
                
                <tr>
                    <td class="auto-style2">Thu nhập 
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style16" Width="400px"></asp:TextBox>
                        <span class="auto-style12">(*)</span></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
