package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import util.Constants.TransactionStatus;
import util.Constants.TransactionType;

/**
 * @Prime13 Consultants
 */
@Entity
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long transactionId;

    @Column
    private Long customerId;

    // TODO get fund name
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "fundId", referencedColumnName = "fundId")
    private Fund fund;

    @Column
    @Temporal(TemporalType.DATE)
    private Date executeDate;

    @Column
    @Temporal(TemporalType.DATE)
    private Date orderDate;

    @Column
    private Long shares;

    // BUY or SELL or DEPOSIT or REQUEST CHECK
    @Column(nullable = false, length = 20)
    @Enumerated(EnumType.STRING)
    private TransactionType transactionType;

    @Column
    private Long amount;

    // COMPLETED or PENDING
    @Column(nullable = false, length = 20)
    @Enumerated(EnumType.STRING)
    private TransactionStatus status;

    @Column
    private Long sharePrice;

    public Long getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(Long transactionId) {
        this.transactionId = transactionId;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public Fund getFund() {
        return fund;
    }

    public void setFund(Fund fund) {
        this.fund = fund;
    }

    public Date getExecuteDate() {
        return executeDate;
    }

    public void setExecuteDate(Date executeDate) {
        this.executeDate = executeDate;
    }

    public Long getShares() {
        return shares;
    }

    public Double getPresentShares() {
        if (shares == null) {
            return null;
        }
        return shares / 1000.0;
    }

    public void setShares(Long shares) {
        this.shares = shares;
    }

    public TransactionType getTransactionType() {
        return transactionType;
    }

    public void setTransactionType(TransactionType transactionType) {
        this.transactionType = transactionType;
    }

    public Long getAmount() {
        return amount;
    }

    public Double getPresentAmount() {
        if (amount == null) {
            return null;
        }
        return amount / 100.0;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public TransactionStatus getStatus() {
        return status;
    }

    public void setStatus(TransactionStatus status) {
        this.status = status;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Long getSharePrice() {
        return sharePrice;
    }

    public Double getPresentSharePrice() {
        if (sharePrice == null) {
            return null;
        }
        return sharePrice / 100.0;
    }

    public void setSharePrice(Long sharePrice) {
        this.sharePrice = sharePrice;
    }

}
