package com.grownited.entity;

import java.util.Date;
import jakarta.persistence.*;

@Entity  // ✅ Add this to make it a JPA entity
@Table(name = "inquiry")
public class InquiryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer inquiryId; // ✅ Primary Key should be an Integer

    @Column(name = "property_id")
    private String propertyId;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "message")
    private String message;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "inquiry_date")
    private Date inquiryDate;

    @Column(name = "status")
    private String status;

    // Getters and Setters
    public Integer getInquiryId() {
        return inquiryId;
    }
    public void setInquiryId(Integer inquiryId) {
        this.inquiryId = inquiryId;
    }

    public String getPropertyId() {
        return propertyId;
    }
    public void setPropertyId(String propertyId) {
        this.propertyId = propertyId;
    }

    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }

    public Date getInquiryDate() {
        return inquiryDate;
    }
    public void setInquiryDate(Date inquiryDate) {
        this.inquiryDate = inquiryDate;
    }

    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
}
