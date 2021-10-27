package service.serviceimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.StaffDao;
import dao.daolmpl.StaffDaoImpl;
import model.StaffBean;
import service.StaffService;
import util.HibernateUtils;

import javax.servlet.annotation.WebServlet;
import java.util.List;

public class StaffServiceImpl implements StaffService{
    SessionFactory factory;
    StaffDao staffDao;

    public StaffServiceImpl() {
        this.factory = HibernateUtils.getSessionFactory();
        staffDao =  new StaffDaoImpl();
    }

    @Override
    public List<StaffBean> findAll() {
        List<StaffBean> beans = null;
        Session session = factory.getCurrentSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            beans = staffDao.findAll();
            tx.commit();
        } catch(Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
        return beans;
    }

	@Override
	public void update(StaffBean staffBean) {
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			staffDao.update(staffBean);
			tx.commit();
		} catch(Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
	}

	@Override
	public StaffBean findById(Integer id) {
		
		StaffBean staffBean = null;
		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			staffBean = staffDao.findById(id);
			tx.commit();
		} catch(Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		
		return staffBean;
	}

	@Override
	public void save(StaffBean sb) {

		Session session = factory.getCurrentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			staffDao.save(sb);
			tx.commit();
		} catch(Exception e) {
			if (tx != null) {
				tx.rollback();
			} 
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public StaffBean findByMemberIdAndPassword(Integer staffId, String password) {
		Session session = factory.getCurrentSession();
		StaffBean sb = null;
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			sb = staffDao.findByMemberIdAndPassword(staffId, password);
			
			tx.commit();
		} catch (Exception ex) {
			if (tx != null)
				tx.rollback();
			ex.printStackTrace();
			throw new RuntimeException(ex);
		}
		return sb;
	}
	
	
	
	
	
	
	
	
    
}
