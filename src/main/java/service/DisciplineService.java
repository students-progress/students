package service;

import database.DBConnection;
import entity.Discipline;
import entity.Student;

import java.util.List;

/**
 * Created by Asus on 01.02.2017.
 */
public class DisciplineService {
    public void add(Discipline name){
        DBConnection conn = new DBConnection();
        conn.createSubject(name);
        conn.close();

    }
        public List<Discipline> get(){
            DBConnection conn = new DBConnection();
            List<Discipline> discipline= conn.getDisciplines();
            conn.close();
            return discipline;

    }
    public void delete(int id){
        DBConnection conn = new DBConnection();
        conn.deleteSubject(id);
        conn.close();
    }
    public Discipline getById(int id){
        DBConnection conn = new DBConnection();
        Discipline discipline= conn.getSubjectById(id);
        conn.close();
        return discipline;
    }

    public void modify(Discipline discipline){
        DBConnection conn = new DBConnection();
        conn.modifySubject(discipline);
        conn.close();
    }
}
