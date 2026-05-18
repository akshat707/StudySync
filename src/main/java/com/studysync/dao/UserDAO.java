package com.studysync.dao;

import com.studysync.entity.User;
import com.studysync.util.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.Transaction;

import org.hibernate.query.Query;

public class UserDAO {

    public void saveUser(User user) {

        Transaction transaction = null;

        try(Session session =
                    HibernateUtil.getSessionFactory().openSession()) {

            transaction = session.beginTransaction();

            session.persist(user);

            transaction.commit();

        } catch(Exception e) {

            if(transaction != null) {

                transaction.rollback();
            }

            e.printStackTrace();
        }
    }

    public User login(String email, String password) {

        try(Session session =
                    HibernateUtil.getSessionFactory().openSession()) {

            Query<User> query =
                    session.createQuery(
                            "from User where email=:e and password=:p",
                            User.class);

            query.setParameter("e", email);

            query.setParameter("p", password);

            return query.uniqueResult();
        }
    }
}
