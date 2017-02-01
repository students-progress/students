package service;

import database.DBConnection;
import entity.Discipline;
import entity.Student;

import java.util.List;

/**
 * Created by Asus on 01.02.2017.
 */
public class DisciplineService {
    public void addSubject(Discipline name){
        DBConnection conn = new DBConnection();
        conn.createSubject(name);
        conn.close();

    }
        public List<Discipline> getDiscipline(){
            DBConnection conn = new DBConnection();
            List<Discipline> discipline= conn.getDisciplines();
            conn.close();
            return discipline;

    }
}
