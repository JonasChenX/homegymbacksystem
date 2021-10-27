package service;

import model.StaffBean;

import java.util.List;

public interface StaffService {

    List<StaffBean> findAll();
    
    void update(StaffBean staffBean);
    
    StaffBean findById(Integer id);
    
    void save(StaffBean sb);
    
    StaffBean findByMemberIdAndPassword(Integer staffId, String password);	

}
