package org.com.pojo;
// Generated 25 Apr, 2015 7:30:18 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Category generated by hbm2java
 */
@Entity
@Table(name="category"
    ,catalog="bsale"
)
public class Category  implements java.io.Serializable {


     private Integer catid;
     private String catname;
     private String catdetails;

    public Category() {
    }

    public Category(String catname, String catdetails) {
       this.catname = catname;
       this.catdetails = catdetails;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="Catid", unique=true, nullable=false)
    public Integer getCatid() {
        return this.catid;
    }
    
    public void setCatid(Integer catid) {
        this.catid = catid;
    }

    
    @Column(name="Catname", nullable=false, length=20)
    public String getCatname() {
        return this.catname;
    }
    
    public void setCatname(String catname) {
        this.catname = catname;
    }

    
    @Column(name="Catdetails", nullable=false, length=20)
    public String getCatdetails() {
        return this.catdetails;
    }
    
    public void setCatdetails(String catdetails) {
        this.catdetails = catdetails;
    }




}


