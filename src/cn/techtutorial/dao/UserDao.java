package cn.techtutorial.dao;

import java.sql.*;
import cn.techtutorial.model.User;

public class UserDao {
    private Connection con;

    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean userRegister(User user) {
        boolean result = false;
        try {
            query = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getPassword());
            pst.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return result;
    }

    public User userLogin(String email, String password) {
        User user = null;
        try {
            query = "SELECT * FROM users WHERE email=? AND password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
}
