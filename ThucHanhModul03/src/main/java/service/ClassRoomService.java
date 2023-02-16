package service;

import config.DepartmentDao;
import model.Department;

import java.util.List;

public class ClassRoomService {

    public List<Department> getAll(){
        return DepartmentDao.getAll();
    }
}
