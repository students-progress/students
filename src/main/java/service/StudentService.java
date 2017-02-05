package service;

import database.DBConnection;
import entity.Student;

import java.util.List;

/**
 * Created by Asus on 03.01.2017.
 */
public class StudentService {

    public void modify(Student student){
        DBConnection conn = new DBConnection();
        conn.modifyStudent(student);
        conn.close();
    }
    public void addStudent(Student student){
        DBConnection conn = new DBConnection();
        conn.createStudent(student);
        conn.close();

    }
    public List<Student> get(){
        DBConnection conn = new DBConnection();
        List<Student> students= conn.getAllStudents();
        conn.close();
        return students;
    }
    public Student getById(int id){
        DBConnection conn = new DBConnection();
        Student student= conn.getStudentById(id);
        conn.close();
        return student;
    }

    public void delete(int id){
        DBConnection conn = new DBConnection();
        conn.deleteStudent(id);
        conn.close();



    }


}