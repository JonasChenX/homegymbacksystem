package dao.daolmpl;


import model.StaffBean;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import dao.StaffDao;
import util.HibernateUtils;

import java.util.Arrays;
import java.util.List;


public class StaffDaoImpl implements StaffDao {
    SessionFactory factory;

    public StaffDaoImpl() {
        this.factory = HibernateUtils.getSessionFactory();
    }

    @Override
    public List<StaffBean> findAll() {
        Session session = factory.getCurrentSession();
        String hql = "FROM StaffBean";
        List<StaffBean> beans = session.createQuery(hql, StaffBean.class)
                .getResultList();
        return beans;
    }

	@Override
	public void update(StaffBean staffBean) {
		Session session = factory.getCurrentSession();
		session.update(staffBean);
		
	}

	@Override
	public StaffBean findById(Integer id) {
		Session session = factory.getCurrentSession();
		return session.get(StaffBean.class, id);
	}

	@Override
	public void save(StaffBean sb) {
		Session session = factory.getCurrentSession();
		session.save(sb);
	}

	@Override
	public StaffBean findByMemberIdAndPassword(Integer staffId, String password) {
		StaffBean sb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM StaffBean m WHERE m.id = :mid and m.staffPassword = :pswd";
		
		try {
			sb = (StaffBean) session.createQuery(hql).setParameter("mid", staffId).setParameter("pswd", password).getSingleResult();
		} catch (Exception e) {
			sb = null;
		}
		return sb;
	}

	@Override
	public List<? super Integer> getCountsAndPage(int pageSize, String hql) {
		
		int totalPages = 0;
		long count = 0; 
	    List<? super Integer> pageInfo;
	    String countHql = "SELECT count(*) " + hql;
		  
	    Session session = factory.getCurrentSession();
	
	    List<Long> list = session.createQuery(countHql, Long.class).getResultList();
		  
	    System.out.println(list);
		  
	    if (list.size() > 0) {
	    	count = list.get(0);
		}
		  
	    totalPages = (int) (Math.ceil(count / (double) pageSize));
		  
	    pageInfo = Arrays.asList(count,totalPages);
		  
	    return pageInfo;
		
	}

	@Override
	public List<StaffBean> findStaffByPage(int currentPage, int pageSize, String hql) {
		Session session = factory.getCurrentSession();
		List<StaffBean> list = session.createQuery(hql, StaffBean.class).setFirstResult((currentPage - 1) * pageSize)
				.setMaxResults(pageSize).getResultList();
		
		return list;
		
		
	}
	
	
	
	
	
	
    
    
    
    
    
}
