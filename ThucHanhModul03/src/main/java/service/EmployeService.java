package service;

import config.EmployeDao;
import model.Employe;

import java.util.List;

public class EmployeService {

    public List<Employe> getAll(){
        return EmployeDao.getAll();
    }

    public List<Employe> findByName(String name){
        return EmployeDao.findByName(name);
    }

    public void save(Employe employe){
        EmployeDao.saveHocVien(employe);
    }

    public void deleteByID(int id) {
        EmployeDao.deleteByID(id);
    }
}
