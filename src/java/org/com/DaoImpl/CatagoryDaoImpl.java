/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.com.DaoImpl;

import java.util.ArrayList;
import org.com.Dao.CatagoryDao;
import org.com.Dao.HibernateUtil;
import org.com.pojo.Category;
import org.hibernate.Session;

/**
 *
 * @author Swarnendu
 */
public class CatagoryDaoImpl implements CatagoryDao{

    @Override
    public ArrayList<Category> getAllProduct() {
        ArrayList<Category> lst = new ArrayList<>();
        Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
        sn.beginTransaction();
        lst = (ArrayList<Category>) sn.createCriteria(Category.class).list();
        sn.getTransaction().commit();
       return lst;
    }

    @Override
    public Category getBypid(int id) {
      Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
       Category cg = new Category();
        try {
            sn.beginTransaction();
            cg = (Category) sn.get(Category.class, id);
             sn.getTransaction().commit();
        } catch (Exception e) {
              sn.getTransaction().rollback();
              e.printStackTrace();
        }finally{
            return cg;
        }
       
    }

    @Override
    public void removeProduct(Category cg) {
       Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
      
        try {
            sn.beginTransaction();
            sn.delete(cg);
             sn.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
              sn.getTransaction().rollback();
        }finally{
          
        }
    }

    @Override
    public void editProduct(Category cg) {
         Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
          
        try {
            sn.beginTransaction();
            sn.update(cg);
             sn.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
              sn.getTransaction().rollback();
        }finally{
          
        }
    }

    @Override
    public void createProduct(Category cg) {
        Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
      
        try {
            sn.beginTransaction();
            sn.save(cg);
             sn.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
              sn.getTransaction().rollback();
        }finally{
          
        }
    }
    
}
