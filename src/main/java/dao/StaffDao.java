package dao;

import model.StaffBean;

import java.util.List;


public interface StaffDao {

    List<StaffBean> findAll();
    
    void update(StaffBean staffBean);
    
    StaffBean findById(Integer id);
    
    void save(StaffBean sb);
    
    StaffBean findByMemberIdAndPassword(Integer staffId, String password);	


}
