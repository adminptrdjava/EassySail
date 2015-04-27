/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.com.Dao;

import java.util.ArrayList;
import org.com.pojo.Category;
import org.com.pojo.ProductTable;

/**
 *
 * @author Swarnendu
 */
public interface CatagoryDao {
    public ArrayList<Category>getAllProduct();
    public Category getBypid(int id);
    public void removeProduct(Category cg);
    public void editProduct (Category cg);
    public void createProduct(Category cg);
}
