package database;

import entity.Discipline;
import entity.Mark;
import entity.Student;
import entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Asus on 30.12.2016.
 */
public class DBConnection {
    private PreparedStatement deleteStudent;
    private PreparedStatement deleteSubject;
    private PreparedStatement statement;
    private PreparedStatement modifyStudentStatement;
    private PreparedStatement modifySubjectStatement;
    private PreparedStatement statement1;
    private PreparedStatement statement2;
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement getStudentById;
    private PreparedStatement getSubjectById;
    private PreparedStatement allstudents;
    private PreparedStatement allLogins;
    private PreparedStatement alldisciplines;
    private PreparedStatement markByStudentId;
    public DBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/student_system?user=root&password=root&characterEncoding=UTF-8");
            statement = con.prepareStatement("INSERT INTO `students` (`name`,`surname`,`group`) VALUES (?,?,?)");
            markByStudentId=con.prepareStatement("SELECT discipline.disciplineName, marks.mark FROM discipline left join terms_discipline on discipline.id = terms_discipline.id_discipline left join marks on marks.id_terms_discipline = terms_discipline.id left join students on students.id=marks.id_student where students.id = ?");
            deleteStudent=con.prepareStatement("DELETE FROM `student_system`.`students` WHERE `id`=? ");
            deleteSubject=con.prepareStatement("DELETE FROM `student_system`.`discipline` WHERE `id`=? ");
            modifyStudentStatement = con.prepareStatement("UPDATE  `students` SET `name`=?,`surname`=?,`group`=? WHERE `id`=?");
            modifySubjectStatement = con.prepareStatement("UPDATE  `discipline` SET `disciplineName`=? WHERE `id`=?");
            statement1 = con.prepareStatement("INSERT INTO `discipline` (`disciplineName`) VALUES (?)");
            alldisciplines = con.prepareStatement("SELECT * FROM `discipline`");
             statement2 = con.prepareStatement("INSERT INTO `students` (`name`,`surname`,`group`) VALUES (?,?,?) WHERE `id`=?");
            allstudents = con.prepareStatement("SELECT * FROM `students`");
            getSubjectById = con.prepareStatement("SELECT * FROM `discipline` WHERE `id`=?");
             getStudentById = con.prepareStatement("SELECT * FROM `students` WHERE `id`=?");
            allLogins = con.prepareStatement("SELECT * FROM `user`");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Map<Discipline, Mark> getMarkByStudent(int id){
Map<Discipline,Mark> map=new HashMap<Discipline, Mark>();

        try {

            markByStudentId.setInt(1, id);
            rs= markByStudentId.executeQuery();
            while (rs.next()){
            Discipline discipline=new Discipline();
            Mark mark =new Mark();
            discipline.setName(rs.getString("discipline.disciplineName"));
            mark.setMark(rs.getInt(Integer.parseInt("marks.mark")));
          map.put(discipline,mark);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
return map;

    }

    public Discipline getSubjectById(int id){
        Discipline discipline=new Discipline();
        try {
            getSubjectById.setString(1, String.valueOf(id));
            rs=getSubjectById.executeQuery();

            if (rs.next()) {
                discipline.setId(id);
                discipline.setName(rs.getString("disciplineName"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return discipline;

    }


public Student getStudentById(int id){
    Student student=new Student();
        try {
        getStudentById.setString(1, String.valueOf(id));
        rs=getStudentById.executeQuery();

        if (rs.next()) {
           student.setId(id);
            student.setSurname(rs.getString("surname"));
            student.setName(rs.getString("name"));
            student.setGroup(rs.getString("group"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
return student;

}

    public void deleteStudent(int id) {
        try {
            deleteStudent.setInt(1, id);

            deleteStudent.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void deleteSubject(int id) {
        try {

            deleteSubject.setInt(1,id);
            deleteSubject.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void modifySubject(Discipline discipline) {
        try { modifySubjectStatement.setString(1, discipline.getName());
            modifySubjectStatement.setInt(2, discipline.getId());




            modifySubjectStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void modifyStudent(Student student) {
        try {

            modifyStudentStatement.setString(1, student.getName());
            modifyStudentStatement.setString(2, student.getSurname());
            modifyStudentStatement.setString(3, student.getGroup());
            modifyStudentStatement.setInt(4, student.getId());

            modifyStudentStatement.executeUpdate();
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
            statement.setString(1, student.getName());
            statement.setString(2, student.getSurname());
            statement.setString(3, student.getGroup());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void createSubject(Discipline discipline) {
        try {
            statement1.setString(1, discipline.getName());
            statement1.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public List<Discipline> getDisciplines() {
        List<Discipline> discipline=new ArrayList<Discipline>();

        try {
            rs=alldisciplines.executeQuery();
            while (rs.next()){
            Discipline disciplin1=new Discipline();
            disciplin1.setId(rs.getInt("id"));
            disciplin1.setName(rs.getString("disciplineName"));
            discipline.add(disciplin1);
        }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return discipline;
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

             statement1.close();
               statement2.close();
                alldisciplines.close();
                 getStudentById.close();
                 statement.close();
               con.close();
             allLogins.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
