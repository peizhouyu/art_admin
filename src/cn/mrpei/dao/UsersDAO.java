package cn.mrpei.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import cn.mrpei.bean.Users;
import cn.mrpei.util.HibernateSessionFactory;
public class UsersDAO<T> {
	
	SessionFactory factory = HibernateSessionFactory.getSessionFactory();
	Session session ;
	Transaction transaction;
	

	

	
	//添加用户
	public Integer addUser(Users users) {
		session = factory.openSession();
		transaction = session.beginTransaction();
		Integer id = (Integer) session.save(users);
		transaction.commit();
		session.close();
		return id;
	}
	
	//查找多个Entity
	
		@SuppressWarnings("unchecked")
		public List<T> list(String hql) {

			Session session = HibernateSessionFactory.getSessionFactory()
					.openSession();
			try {
				session.beginTransaction();
				Query query = session.createQuery(hql);
				
				return query.list();
			} finally {
				session.getTransaction().commit();
				session.close();
			}
		}
	

	
}
