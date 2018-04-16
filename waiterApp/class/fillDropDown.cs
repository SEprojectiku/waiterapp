using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Globalization;

namespace waiterApp
{

    public class fillDropDown
{
        string connectionString = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        public DataTable currency()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select * from currency", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable languages()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select * from languages", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable countries()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select * from countries", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable states(int countryid)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select * from states where country_id = " + countryid.ToString(), con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable menucategories()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select * from menucategories order by sorting asc", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable menucategories(int menuID)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select mc.[catName], mc.catID from menucategories mc inner join[business].[menudetails]md on md.catID = mc.catID where md.menuID = '"+menuID+"' group by mc.catName, mc.catID", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable tabletypes()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("select * from tableTypes", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Close();
            return dt;
        }


        public DataTable tableTypes(int bid)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            DataTable dt = new DataTable();
            using (var cmd = new SqlCommand("searchTableTypes", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@bid", bid));
                da.Fill(dt);
            }
            con.Close();
            return dt;
        }
        public DataTable listavaliableTables(int bid, int time, string date1, string date2, int type)
        {

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            DataTable dt = new DataTable();
            using (var cmd = new SqlCommand("listAvaliableTables", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@bid", bid));
                cmd.Parameters.Add(new SqlParameter("@date1", date1));
                cmd.Parameters.Add(new SqlParameter("@date2", date2));
                cmd.Parameters.Add(new SqlParameter("@time", time));
                cmd.Parameters.Add(new SqlParameter("@type", type));
                da.Fill(dt);
            }
           con.Close();
            return dt;
            
        }
        public DataSet listReservations(int bid, int resStatus)
        {

            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            using (var cmd = new SqlCommand("listReservations", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@bid", bid));
                cmd.Parameters.Add(new SqlParameter("@resStatus", resStatus));
                da.Fill(ds);
            }
            con.Close();
            return ds;
        }
        public DataSet listMenus(int bid)
        {

            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            using (var cmd = new SqlCommand("listMenus", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@bid", bid));
                da.Fill(ds);
            }
            con.Close();
            return ds;
        }
        public DataSet listActiveMenuitems(int bid)
        {

            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            using (var cmd = new SqlCommand("listActiveMenuitems", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@bid", bid));
                da.Fill(ds);
            }
            con.Close();
            return ds;
        }
        public DataSet listSetteableTables(int bid,string date1, string date2, int time)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            using (var cmd = new SqlCommand("listSetteableTables", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@bid", bid));
                cmd.Parameters.Add(new SqlParameter("@date1", date1));
                cmd.Parameters.Add(new SqlParameter("@date2", date2));
                cmd.Parameters.Add(new SqlParameter("@time", time));
                da.Fill(ds);
            }
            con.Close();
            return ds;
        }

    }
}