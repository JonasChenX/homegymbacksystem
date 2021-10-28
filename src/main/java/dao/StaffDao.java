package dao;

import model.StaffBean;

import java.util.List;


public interface StaffDao {

    List<StaffBean> findAll();
    
    void update(StaffBean staffBean);
    
    StaffBean findById(Integer id);
    
    void save(StaffBean sb);
    
    StaffBean findByMemberIdAndPassword(Integer staffId, String password);	
    
    List<? super Integer> getCountsAndPage(int pageSize, String hql);
    
	public List<StaffBean> findStaffByPage(int currentpage, int pagesize, String hql);


}
