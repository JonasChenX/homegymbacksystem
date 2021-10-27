package dao.daolmpl;


import model.StaffBean;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import dao.StaffDao;
import util.HibernateUtils;

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
	
	
	
	
	
	
    
    
    
    
    
}
