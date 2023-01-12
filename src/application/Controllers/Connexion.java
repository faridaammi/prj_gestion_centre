package application.Controllers;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connexion {
    public static Connection getConnection(){
        Connection con ;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=  DriverManager.getConnection("jdbc:mysql://localhost/db_project_lp","root","");
            return  con;
        }catch (Exception e)
        {
            System.out.println(e.getMessage());
            return null;

        }
    }


}
