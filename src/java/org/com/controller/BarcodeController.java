/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.com.controller;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.Barcode39;
import com.itextpdf.text.pdf.BarcodeCodabar;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.com.DaoImpl.ProductDaoImpl;
import org.com.pojo.BargenTemp;
import org.com.pojo.ProductTable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Swarnendu
 */
@Controller
public class BarcodeController {

    @RequestMapping(value = "/bargen", method = RequestMethod.GET)
    public String barGen(Model m) {
        ProductDaoImpl pdi = new ProductDaoImpl();
        m.addAttribute("lst", pdi.getAllProduct());
        return "bargen";
    }

    @RequestMapping(value = "/barprocess", method = RequestMethod.POST)
    public void barpdfgen(@ModelAttribute(value = "quick") BargenTemp bt, Model m, HttpServletResponse response, HttpServletRequest request,
            OutputStream outputStream) throws Exception {
    System.out.println("on process"+bt.getIsbn());
        if ("".equals(bt.getIsbn())) {
             System.out.println("on process 2");
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "attachment; filename= barcode");
            Document document = new Document(new Rectangle(340, 842));
            PdfWriter writer = PdfWriter.getInstance(document, outputStream);
            document.open();
            PdfContentByte cb = writer.getDirectContent();
            int q = Integer.parseInt(bt.getQuantity());
            System.out.println("QUANTITU" + q);
            document.add(new Paragraph("Cod-39: DATE: " + bt.getDate()));
            document.add(new Paragraph("=========================================="));
            document.add(new Paragraph("                                                                     "));
            PdfPTable table = new PdfPTable(5);
            for (int i = 0; i <= q; i++) {
                Barcode39 code39ext = new Barcode39();
                code39ext.setCode(bt.getBno());
                code39ext.setStartStopText(false);
                code39ext.setExtended(true);
                table.addCell(code39ext.createImageWithBarcode(cb, null, null));

            }
            document.add(table);
            // step 5
            document.close();
            autocomplete(bt);
            //return "null";
        }

    }

    public void autocomplete(BargenTemp bt){
        
        ProductDaoImpl pdi = new ProductDaoImpl();
        ProductTable pt = pdi.getBypname(bt.getPname());
        int q1 = Integer.parseInt(bt.getQuantity());
        int q2 = Integer.parseInt(pt.getQuantity());
        int q = q1+q2;
        pt.setIsbn(bt.getIsbn());
        pt.setQuantity(Integer.toString(q));
        pt.setSprice(bt.getSprice());
        pdi.editProduct(pt);
    }
}
