package vietpower.com.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by HauKute on 11/25/2018.
 */
@Entity
@Table(name="Product")
public class Product {
    @Id
    @Column(name = "productId", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long productId;

    @Column(name = "productCode", unique = true)
    private String productCode;

    @Column(name = "productName")
    private String productName;

    @Column(name = "createdDate")
    private Timestamp createdDate;

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }
}
