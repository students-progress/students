package database;

import entity.Student;
import entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Asus on 30.12.2016.
 */
public class DBConnection {
    private PreparedStatement statement;
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement allstudents;
    private PreparedStatement allLogins;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public PreparedStatement getStatement() {
        return statement;
    }

    public void setStatement(PreparedStatement statement) {
        this.statement = statement;
    }

    public DBConnection() {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/student_system?user=root&password=root&characterEncoding=UTF-8");
            statement = con.prepareStatement("INSERT INTO `students` (`name`,`surname`,`group`) VALUES (?,?,?)");
            allstudents = con.prepareStatement("SELECT * FROM `students`");
            allLogins = con.prepareStatement("SELECT * FROM `user`");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    public List<User> getAllAcounts(){
        List<User> users=new ArrayList<User>();
        try {
            rs=allLogins.executeQuery();
            while (rs.next()) {
                User st1 = new User();
                st1.setLogin(rs.getString("login"));
                st1.setPassword(rs.getString("password"));
                users.add(st1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    public void createStudent(Student student) {
        try {
            getStatement().setString(1, student.getName());
            getStatement().setString(2, student.getSurname());
            getStatement().setString(3, student.getGroup());
            getStatement().executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public List<Student> getAllStudents(){
        List<Student> students=new ArrayList<Student>();
        try {
            rs=allstudents.executeQuery();
            while (rs.next()){
                Student st1=new Student();
                st1.setId(rs.getInt("id"));
                st1.setName(rs.getString("name"));
                st1.setSurname(rs.getString("surname"));
                st1.setGroup(rs.getString("group"));
                students.add(st1);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    public void close(){
        try {
            statement.close();
            con.close();
            allLogins.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
