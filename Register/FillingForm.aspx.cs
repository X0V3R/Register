using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Register
{
    public partial class FillingForm : System.Web.UI.Page
    {
        string tenDN;
        string tenKH;
        string password;
        DateTime date;
        string gioitinh;
        decimal thunhap;
        string email;
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void txtTenDN_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnDangky_Click(object sender, EventArgs e)
        {
            try
            {
                clsDatabase.OpenConnection();
                string strInsert = "Insert Into khachhang(tenDN,tenKH,matkhau,ngaysinh,gioitinh,thunhap) values(@tenDN,@tenKH,@matkhau,@ngaysinh,@gioitinh,@thunhap)";
                SqlCommand com = new SqlCommand(strInsert, clsDatabase.conn);
                SqlParameter p1 = new SqlParameter("@tenDN", SqlDbType.NVarChar);
                p1.Value = txtTenDN.Text;
                SqlParameter p2 = new SqlParameter("@tenKH", SqlDbType.NVarChar);
                p2.Value = txtKH.Text;
                SqlParameter p3 = new SqlParameter("@matkhau", SqlDbType.NVarChar);
                p3.Value = txtMK.Text;
                SqlParameter p4 = new SqlParameter("@ngaysinh", SqlDbType.Date);
                p4.Value = txtNgaySinh.Text;
                SqlParameter p5 = new SqlParameter("@gioitinh", SqlDbType.NVarChar);
                p5.Value = gioitinh;
                SqlParameter p6 = new SqlParameter("@thunhap", SqlDbType.Decimal);
                p6.Value = txtThuNhap.Text;
                SqlParameter p7 = new SqlParameter("@email", SqlDbType.NVarChar);
                p7.Value = txtEmail.Text;

                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                com.Parameters.Add(p3);
                com.Parameters.Add(p4);
                com.Parameters.Add(p5);
                com.Parameters.Add(p6);
                com.Parameters.Add(p7);
                com.ExecuteNonQuery();

                clsDatabase.closeConnection();
                lblThongBao.Text = "Insert successfully!!!";
            }
            catch (Exception ex)
            {

                lblThongBao.Text = "Error:\n"+ex;
            }

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gioitinh = radNam.Text;
        }

        protected void radNu_CheckedChanged(object sender, EventArgs e)
        {
            gioitinh = radNu.Text;
        }
    }
}