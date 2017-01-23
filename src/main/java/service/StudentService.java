package service;

import database.DBConnection;
import entity.Student;

import java.util.List;

/**
 * Created by Asus on 03.01.2017.
 */
public class StudentService extends DBConnection {

    public void addStudent(Student student){
        DBConnection conn = new DBConnection();
        conn.createStudent(student);
        conn.close();

    }
    public List<Student> getAllStudents(){
        DBConnection conn = new DBConnection();
        List<Student> students= conn.getAllStudents();
        conn.close();
        return students;
    }


}