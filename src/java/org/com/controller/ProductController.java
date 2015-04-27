package org.com.controller;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.com.DaoImpl.CatagoryDaoImpl;
import org.com.DaoImpl.ProductDaoImpl;
import org.com.pojo.ProductTable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Swarnendu
 */
@Controller
public class ProductController {

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String getAllProduct(Model m) {
        ProductDaoImpl pdi = new ProductDaoImpl();
        m.addAttribute("lst", pdi.getAllProduct());
        return "product";
    }

    @RequestMapping(value = "/newProduct", method = RequestMethod.GET)
    public String addProduct(Model m) {
        CatagoryDaoImpl cgi = new CatagoryDaoImpl();
        m.addAttribute("lst", cgi.getAllProduct());
        return "addproduct";
    }

    @RequestMapping(value = "/addnewp", method = RequestMethod.POST)
    public String addNewPro(@ModelAttribute(value = "pd") ProductTable pd, BindingResult result) {

        ProductDaoImpl pdi = new ProductDaoImpl();
        pdi.createProduct(pd);
        return "redirect:product.htm";

    }

    @RequestMapping(value = "/editp", method = RequestMethod.GET)
    public String editProduct(@RequestParam(value = "id") int id, Model m) {
        ProductDaoImpl pdi = new ProductDaoImpl();
        ProductTable pt = new ProductTable();
        pt = pdi.getBypid(id);
        m.addAttribute("pd", pt);
        CatagoryDaoImpl cgi = new CatagoryDaoImpl();
        m.addAttribute("lst", cgi.getAllProduct());

        return "editp";

    }

    @RequestMapping(value = "/updatep", method = RequestMethod.POST)
    public String updateProduct(@ModelAttribute(value = "pd") ProductTable pd, BindingResult result) {
        ProductDaoImpl pdi = new ProductDaoImpl();
        pdi.editProduct(pd);
        return "redirect:product.htm";
    }

    @RequestMapping(value = "/delpro", method = RequestMethod.GET)

    public String delProduct(@RequestParam(value = "id") int id) {
        ProductDaoImpl pdi = new ProductDaoImpl();
        ProductTable pt = new ProductTable();
        pt = pdi.getBypid(id);
        pdi.removeProduct(pt);

        return "redirect:product.htm";
    }

    @RequestMapping(value = "/repProduct", method = RequestMethod.GET)
    public void productReport(Model m, HttpServletResponse response, HttpServletRequest request,
            OutputStream outputStream) throws Exception {
        String name = "ProductReport-";
        Date d = new Date();
        name = name + d.toString() + ".pdf";
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=" + name);
        Rectangle pagesize = new Rectangle(216f, 720f);
        Document document = new Document(PageSize.A4);
        PdfWriter.getInstance(document, outputStream);
        document.open();
        document.addTitle("PRODUCT DETAILSA REPORT");
        document.add(new Paragraph("PRODUCT DETAILSA REPORT ", FontFactory.getFont(FontFactory.HELVETICA, 28, BaseColor.CYAN)));
        document.add(new Paragraph("DATE: " + new Date()));
        document.add(new Paragraph("-------------------------------------------------------- "));
        document.add(new Paragraph(" "));
         ProductDaoImpl pdi = new ProductDaoImpl();
         PdfPTable  table = new PdfPTable(4);
                table.getDefaultCell().setBackgroundColor(BaseColor.LIGHT_GRAY);
                table.addCell("ID");
                table.addCell("TITLE");
                table.addCell("PUBLISHER");
                table.addCell("PRICE");
              ArrayList<ProductTable> list = pdi.getAllProduct();
              for(ProductTable u : list){
                  table.getDefaultCell().setBackgroundColor(BaseColor.LIGHT_GRAY);
                  table.addCell(u.getPid().toString());
                  table.getDefaultCell().setBackgroundColor(BaseColor.GRAY);
                  table.addCell(u.getPname());
                  table.getDefaultCell().setBackgroundColor(BaseColor.LIGHT_GRAY);
                  table.addCell(u.getPublisher());
                  table.getDefaultCell().setBackgroundColor(BaseColor.GRAY);
                  table.addCell(u.getSprice().toString());
              }
            document.add(table);
              document.close();
       
        
    }
         
    

}
