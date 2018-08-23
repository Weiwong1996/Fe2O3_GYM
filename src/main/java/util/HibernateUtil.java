package util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final SessionFactory sessionFactory;
	// 使用ThreadLocal管理Session
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	static {
		try {
			Configuration configiguration = new Configuration().configure();
			sessionFactory = configiguration.buildSessionFactory(
					new StandardServiceRegistryBuilder().applySettings(configiguration.getProperties()).build());
		} catch (Throwable ex) {
			ex.printStackTrace();
			System.err.println("建立SessionFactory错误" + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static Session getSession() throws HibernateException {
		Session session = (Session) threadLocal.get();
		if (session == null || !session.isOpen()) {
			session = (sessionFactory != null) ? sessionFactory.openSession() : null;
			threadLocal.set(session);
		}
		return session;
	}

	public static void closeSession() throws HibernateException {
		Session session = (Session) threadLocal.get();
		threadLocal.set(null);

		if (session != null) {
			session.close();
		}
	}
}
