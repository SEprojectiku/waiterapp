using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;

namespace waiterApp
{
    
    public class insertions
{
string connectionString = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        public void insertMenu(ArrayList catid, ArrayList name, ArrayList price, ArrayList indgr, ArrayList pretime, int iteration, int menuid)
        {
            string[] catidarr = new string[iteration];
            string[] namearr = new string[iteration];
            string[] pricearr = new string[iteration];
            string[] indgrarr = new string[iteration];
            string[] pretimearr = new string[iteration];

            catid.CopyTo(catidarr);
            name.CopyTo(namearr);
            price.CopyTo(pricearr);
            indgr.CopyTo(indgrarr);
            pretime.CopyTo(pretimearr);

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            for (int j = 0; j < iteration-1; j++)
            {
                try
                {
            SqlCommand cmd = new SqlCommand("insertfoods", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@menuid", menuid));
            cmd.Parameters.Add(new SqlParameter("@name", namearr[j]));
            cmd.Parameters.Add(new SqlParameter("@catID", catidarr[j]));
            cmd.Parameters.Add(new SqlParameter("@ingrediends", indgrarr[j]));
            cmd.Parameters.Add(new SqlParameter("@pretime", pretimearr[j]));
            cmd.Parameters.Add(new SqlParameter("@price", pricearr[j]));
             cmd.ExecuteNonQuery();
                }
                catch(Exception e)
                {

                }
           
            }

            con.Close();
        }
        public void insertUser(string fn, string ln, string username, string email, string phone, string bd, string gender, int city, int lang, int curr, string photo, string pass)
        {
        


            
        }
        public void insertTable(ArrayList typeid, ArrayList name, ArrayList chairnum, int iteration, int bid)
        {
            string[] typearr = new string[iteration];
            string[] namearr = new string[iteration];
            string[] chairarr = new string[iteration];

            typeid.CopyTo(typearr);
            name.CopyTo(namearr);
            chairnum.CopyTo(chairarr);

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            for (int j = 0; j < iteration; j++)
            {
                try
                {
                SqlCommand cmd = new SqlCommand("insertTableinfo", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@tname", namearr[j]));
                cmd.Parameters.Add(new SqlParameter("@chairnumber", chairarr[j]));
                cmd.Parameters.Add(new SqlParameter("@type", typearr[j]));
                cmd.Parameters.Add(new SqlParameter("@bid", bid));
                cmd.ExecuteNonQuery();
                }
                catch(Exception e)
                {

                }
                
            }

            con.Close();
        }
        public void insertReservation(int userID,int tableID, string date, int time, string message)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            try
            {
            SqlCommand cmd = new SqlCommand("insertReservation", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@userID", userID));
            cmd.Parameters.Add(new SqlParameter("@tableID", tableID));
            cmd.Parameters.Add(new SqlParameter("@date", date));
            cmd.Parameters.Add(new SqlParameter("@time", time));
            cmd.Parameters.Add(new SqlParameter("@message", message));
            cmd.ExecuteNonQuery();
            }
            catch(Exception e)
            {

            }
            con.Close();
        }
        public void insertnewMenu(int bid, ArrayList menuname, int iteration)
        {
            string[] namearr = new string[iteration];
            menuname.CopyTo(namearr);
            SqlConnection con = new SqlConnection(connectionString);

            con.Open();
            for (int j = 0; j < iteration; j++)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("insertnewmenu", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@bid", bid));
                    cmd.Parameters.Add(new SqlParameter("@menuname", namearr[j]));
                    cmd.ExecuteNonQuery();
                }
                catch (Exception e)
                {

                }
            }
                
            con.Close();
        }
    }
}