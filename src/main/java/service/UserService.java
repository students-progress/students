package service;

import database.DBConnection;
import entity.User;

import java.util.List;

/**
 * Created by Asus on 13.01.2017.
 */
public class UserService {
    public List<User> getAllUsers(){
        DBConnection conn = new DBConnection();
        List<User> users= conn.getAllAcounts();
        conn.close();
        return users;
    }

}
