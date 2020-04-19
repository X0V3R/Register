<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FillingForm.aspx.cs" Inherits="Register.FillingForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 871px;
            background-color: blueviolet;
        }
        .auto-style2 {
            width: 871px;
        }
        .auto-style7{
            text-align:center;
            width: 871px;
        }
        .auto-style8 {
            margin-left: 176px;
        }
        .auto-style9 {
            margin-left: 227px;
        }
        .auto-style10 {
            margin-left: 145px;
        }
        .auto-style11 {
            color: #FF0000;
        }
        .auto-style12 {
            color: #FF3300;
        }
        .auto-style13 {
            margin-left: 140px;
        }
        .auto-style14 {
            margin-left: 226px;
        }
        .auto-style15 {
            margin-left: 264px;
        }
        .auto-style16 {
            margin-left: 231px;
        }
        .auto-style17 {
            margin-left: 350px;
        }
        .auto-style18{
            margin-left:530px;
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
                        <asp:TextBox ID="txtTenDN" runat="server" CssClass="auto-style8" Width="400px" OnTextChanged="txtTenDN_TextChanged"></asp:TextBox>
                        
                        <span class="auto-style11">(*)</span></td>
                </tr>
                
                <tr>
                    <td class="auto-style2">Mật khẩu 
                        <asp:TextBox ID="txtMK" runat="server" CssClass="auto-style9" Width="400px" TextMode="Password"></asp:TextBox>
                        
                        <span class="auto-style12">(*)</span></td>
                </tr>

                 <tr>
                    <td class="auto-style2">Nhập lại mật khẩu 
                        <asp:TextBox ID="txtNhaplaiMK" runat="server" CssClass="auto-style10" Width="400px" TextMode="Password"></asp:TextBox>
                        
                        
                        <span class="auto-style12">(*)</span></td>
                </tr>
                <%-- section3 --%>
                <tr>
                    <td class="auto-style1">Chi tiết</td>
                </tr>

                <tr>
                    <td class="auto-style2">Họ tên khách hàng
                        <asp:TextBox ID="txtKH" runat="server" CssClass="auto-style13" Width="400px"></asp:TextBox>
                        
                        <span class="auto-style12">(*)(*)</span></td>
                </tr>

                <tr>
                    <td class="auto-style2">Ngày sinh 
                        <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="auto-style14" Width="400px" TextMode="Date"></asp:TextBox>
                        <span class="auto-style12">(*)</span>
                    </td>
                </tr>             
                
                <tr>
                    <td class="auto-style2">Giới tính 
                        <span style="margin-left:273px;"><asp:RadioButton ID="radNam" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Nam" /></span>
                        <span style="margin-left:173px;"><asp:RadioButton ID="radNu" runat="server" Text="Nữ" OnCheckedChanged="radNu_CheckedChanged" /></span>
                    </td>
                </tr>           
                
                <tr>
                    <td class="auto-style2">Email 
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style15" Width="400px"></asp:TextBox>
                        
                        <span class="auto-style12">(*)</span>
                    </td>
                </tr>  
                
                <tr>
                    <td class="auto-style2">Thu nhập 
                        <asp:TextBox ID="txtThuNhap" runat="server" CssClass="auto-style16" Width="400px"></asp:TextBox>
                    
                        <span class="auto-style12">(*)</span>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnDangky" runat="server" CssClass="auto-style17" Text="Đăng ký" Width="242px" OnClick="BtnDangky_Click" />
            <p>
            <asp:Label ID="lblThongBao" runat="server" CssClass="auto-style18" Text="lblThongBao"></asp:Label>
            </p>

            <%-- Validator --%>
            
            <%-- Check username --%>
            <asp:RequiredFieldValidator Display="None" ID="rf_TenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được rỗng"> </asp:RequiredFieldValidator>

            <%-- Check password --%>
            <asp:RequiredFieldValidator Display="None" ID="rf_MK" ControlToValidate="txtMK" runat="server" ErrorMessage="Mật khẩu không được rỗng"> </asp:RequiredFieldValidator>

            <%-- Compare password --%>
            <asp:RequiredFieldValidator id="rf_Nhaplai"  ControlToValidate="txtNhaplaiMK" runat="server" Display="None" ErrorMessage="Nhập lại mật khẩu không được rỗng"> </asp:RequiredFieldValidator>
            <asp:CompareValidator Display="None" id="cv_Nhaplai" ControlToValidate="txtNhaplaiMK" runat="server" ControlToCompare="txtMK" ErrorMessage="Mật khẩu nhập lại chưa đúng"></asp:CompareValidator>
            
            <%-- Check customer name --%>
            <asp:RequiredFieldValidator id="rf_KH" Display="None" runat="server" ControlToValidate="txtKH" ErrorMessage="Họ tên khách hàng không được rỗng"></asp:RequiredFieldValidator>

            <%-- Check birthday --%>
            <asp:CompareValidator id="cv_Ngaysinh" Display="None" ControlToValidate="txtNgaySinh" operator="DataTypeCheck" runat="server" type="Date" ErrorMessage="Ngày sinh không hợp lệ"></asp:CompareValidator>

            <%-- Check email --%>    
            <asp:RegularExpressionValidator Display="None" id="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="Internet Email" ErrorMessage="Email không hợp lệ"></asp:RegularExpressionValidator>

            <%-- Check income --%>
            <asp:RangeValidator Display="None" runat="server" ErrorMessage="Thu nhập từ 1 triệu đến 50 triệu" id="rvThuNhap" ControlToValidate="txtThuNhap" MaximumValue="50000000" MinimumValue="1000000"></asp:RangeValidator>

            <asp:ValidationSummary id="vsTongHop" HeaderText="Danh sách các lỗi" ForeColor="Red" runat="server"/>
    </form>
</body>
</html>
