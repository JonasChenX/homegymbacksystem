package dao;

import java.util.List;

import model.MemberBean;
import model.OrderBean;

public interface OrdersDao {
	
	abstract List<? super Integer> getCountsAndPage(int pageSize, String hql);
	public List<OrderBean> findOrdersByPage(int currentpage, int pagesize, String hql);
	public OrderBean findOrderItemByPage(String hql);
	public OrderBean findById(int id);
	public MemberBean findMemberByFk(int fk);
	

}
