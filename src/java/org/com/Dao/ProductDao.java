/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.com.Dao;

import java.util.ArrayList;
import org.com.pojo.ProductTable;

/**
 *
 * @author Swarnendu
 */
public interface ProductDao {
    public ArrayList<ProductTable>getAllProduct();
    public ProductTable getBypid(int id);
    public void removeProduct(ProductTable pt);
    public void editProduct (ProductTable pt);
    public void createProduct(ProductTable pt);
    public ProductTable getBypname(String p);
    
}
