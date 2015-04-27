package org.com.DaoImpl;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.ArrayList;
import org.com.Dao.CustomerDao;
import org.com.Dao.HibernateUtil;
import org.com.pojo.Ctype;
import org.hibernate.Session;

/**
 *
 * @author Swarnendu
 */
public class CustomerDaoImpl implements CustomerDao{

    @Override
    public ArrayList<Ctype> getAllCust() {
      Session s = HibernateUtil.getSessionFactory().getCurrentSession();
      s.beginTransaction();
      ArrayList<Ctype> list = new ArrayList<>();
      list = (ArrayList<Ctype>) s.createCriteria(Ctype.class).list();
      s.getTransaction().commit();
      return list;
    }

}
