/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.com.controller;

import org.com.DaoImpl.CustomerDaoImpl;
import java.util.ArrayList;
import org.com.pojo.Ctype;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.com.DaoImpl.CustomerDaoImpl;

/**
 *
 * @author Swarnendu
 */
@Controller
public class CustomerController {

    @RequestMapping(value = "/cust", method = RequestMethod.GET)
    public String getAllcust(Model m) {
        ArrayList<Ctype> lst = new ArrayList<>();
        CustomerDaoImpl cd = new CustomerDaoImpl();
        lst = cd.getAllCust();
        m.addAttribute("lst",lst);
        return "cust";
    }
}
