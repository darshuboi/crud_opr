using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crud_opr
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        static string db = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\vs_db\ProgrammingDB.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection conn = new SqlConnection(db);
        protected void submit_Click(object sender, EventArgs e)
        {
            if(submit.Text == "Save")
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into StudentInfo_Tab values('" + int.Parse(txtStudentID.Text) + "','" + txtStudentName.Text + "','" + txtAddress.SelectedValue + "','" + Double.Parse(txtAge.Text) + "','" + txtContact.Text + "')", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted!');", true);
                LoadRecord();
            }
            else if(submit.Text == "Update")
            {

            }
        }
        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab", conn);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}