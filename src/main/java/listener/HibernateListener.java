//package listener;
//
//import dao.GenericDAO;
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
//import javax.servlet.annotation.WebListener;
//import java.util.logging.Logger;
//
//@WebListener
//public class HibernateListener implements ServletContextListener {
//    private static final Logger logger = Logger.getLogger(HibernateListener.class.getName());
//
//    @Override
//    public void contextDestroyed(ServletContextEvent event) {
//        logger.info("Shutting down Hibernate...");
//        GenericDAO.closeEntityManagerFactory();
//    }
//
//    @Override
//    public void contextInitialized(ServletContextEvent event) {
//        logger.info("Application started: Hibernate is ready.");
//    }
//}
