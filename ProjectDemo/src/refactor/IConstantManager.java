/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.16000
 */
package refactor;

/**
 *
 * @author namita
 */
public interface IConstantManager {

    final static String DATABASE_NAME = "db_student";
    //--------------------------------------------//
    final static String DATABASE_DRIVER = "com.mysql.jdbc.Driver";
    final static String DATABASE_URL = "jdbc:mysql://localhost:3306/" + DATABASE_NAME;
    final static String DATABASE_USERNAME = "root";
    final static String DATABASE_PASSWORD = "";
    //--------------------------------------------//
    final static String TABLE_CUSTOMER = "tbl_contact";
    final static String TABLE_PAYMENT = "";
    final static String TABLE_GREETINGS = "";
    //--------------------------------------------//
}
