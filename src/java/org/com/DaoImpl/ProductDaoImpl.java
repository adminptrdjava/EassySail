/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.com.DaoImpl;

import java.util.ArrayList;
import org.com.Dao.HibernateUtil;
import org.com.Dao.ProductDao;
import org.com.pojo.Category;
import org.com.pojo.ProductTable;
import org.hibernate.Session;

/**
 *
 * @author Swarnendu
 */
public class ProductDaoImpl implements ProductDao {

    @Override
    public ArrayList<ProductTable> getAllProduct() {
        ArrayList<ProductTable> lst = new ArrayList<ProductTable>();
        Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
        sn.beginTransaction();
        lst = (ArrayList<ProductTable>) sn.createCriteria(ProductTable.class).list();
        sn.getTransaction().commit();
        return lst;
    }

    @Override
    public ProductTable getBypid(int id) {
         Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
       ProductTable pt = new ProductTable();
        try {
            sn.beginTransaction();
            pt = (ProductTable) sn.get(ProductTable.class, id);
             sn.getTransaction().commit();
        } catch (Exception e) {
              sn.getTransaction().rollback();
              e.printStackTrace();
        }finally{
            return pt;
        }
       
    }

    @Override
    public void removeProduct(ProductTable pt) {
       Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
      
        try {
            sn.beginTransaction();
            sn.delete(pt);
             sn.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
              sn.getTransaction().rollback();
        }finally{
          
        }
    }

    @Override
    public void editProduct(ProductTable pt) {
       Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
      
        try {
            sn.beginTransaction();
            sn.update(pt);
             sn.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
              sn.getTransaction().rollback();
        }finally{
          
        }
    }

    @Override
    public void createProduct(ProductTable pt) {
        Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
      
        try {
            sn.beginTransaction();
            sn.save(pt);
             sn.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
              sn.getTransaction().rollback();
        }finally{
          
        }
    }

    @Override
    public ProductTable getBypname(String p) {
        Session sn = HibernateUtil.getSessionFactory().getCurrentSession();
       ProductTable pt = new ProductTable();
       String Hql = "update ProductTable P  set U.pst= :pst WHERE U.uid=:uid and U.pass=:pass  ";
        try {
            sn.beginTransaction();
            pt = (ProductTable) sn.get(ProductTable.class, p);
             sn.getTransaction().commit();
        } catch (Exception e) {
              sn.getTransaction().rollback();
              e.printStackTrace();
        }finally{
            return pt;
        }
    }

}
