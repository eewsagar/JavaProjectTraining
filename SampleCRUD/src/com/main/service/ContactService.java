package com.main.service;


import com.main.dto.ContactDTO;
import com.main.refector.SingoltonConnection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Logger;

public class ContactService {

    public static Integer saveContact(ContactDTO dTO) {
        String insertQuery = "INSERT INTO tbl_contact( fullName,address,emailid,isActive)VALUES ("
                + "'" + dTO.getFullName() + "',"
                + "'" + dTO.getAddress()+ "',"
                + "'" + dTO.getEmailid()+ "',"
                + "'" + dTO.getIsActive() + "');";
        System.out.println("insertQuery = " + insertQuery);

        try {
            SingoltonConnection.makePreparedStatement(insertQuery).execute();

            return 1;
        } catch (Exception e) {
            Logger.getLogger(ContactService.class.getName());
        }
        return null;
    }

    public static Integer updateContact(ContactDTO dTO, String id) {
        String updateQuery = "UPDATE tbl_contact SET "
                + "fullName = '" + dTO.getFullName() + "',"
                + "address = '" + dTO.getAddress() + "',"
                + "emailid = '" + dTO.getEmailid() + "',"
                + "isActive = '" + dTO.getIsActive() + "'  WHERE id = '" + id + "' ";
        System.out.println("updateQuery = " + updateQuery);

        try {
            SingoltonConnection.makePreparedStatement(updateQuery).execute();

            return 1;
        } catch (Exception e) {
            Logger.getLogger(ContactService.class.getName());
        }
        return null;
    }

    public static ArrayList<ContactDTO> searchOrListContact(String id, String mode) {
        String searchQuery = "";
        if (mode.equals("all")) {

            searchQuery = "SELECT * FROM tbl_contact";

        }
        if (mode.equals("search")) {
            searchQuery = "SELECT * FROM tbl_contact WHERE id = '" + id + "'";

        }
        System.out.println("searchQuery = " + searchQuery);
        ArrayList<ContactDTO> arrayList = new ArrayList<ContactDTO>();
        try {
            ResultSet executeQuery = SingoltonConnection.makePreparedStatement(searchQuery).executeQuery();

            while (executeQuery.next()) {
                ContactDTO dTO = new ContactDTO();
                dTO.setId(executeQuery.getString("id"));
                dTO.setFullName(executeQuery.getString("fullName"));
                dTO.setAddress(executeQuery.getString("address"));
                dTO.setEmailid(executeQuery.getString("emailid"));
                dTO.setIsActive(executeQuery.getString("isActive"));
                arrayList.add(dTO);
            }
            executeQuery.close();
        } catch (Exception e) {
            Logger.getLogger(ContactService.class.getName());
        }
        return arrayList;
    }
}
