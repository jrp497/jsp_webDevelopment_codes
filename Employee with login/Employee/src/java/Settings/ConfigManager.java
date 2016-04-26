package Settings;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Dhara
 */
public class ConfigManager {

    private Connection connection = null;
    private Statement s = null;

    private void getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedb", "root", "");
            s = connection.createStatement();
        } catch (Exception ex) {
        }
    }

    public String setData(String query) throws SQLException {
        String rows = "";
        getConnection();
        try {
            rows = Integer.toString(s.executeUpdate(query));
        } catch (SQLException ex) {
            rows = ex.getMessage();
        } finally {
            connection.close();
        }
        return rows;
    }
    public ResultSet getData(String query) throws SQLException{
        ResultSet rs=null;
        getConnection();
        try {
            rs = s.executeQuery(query);
        } catch (SQLException ex) {
        } finally {
           
        }
        return rs;
    }
}
