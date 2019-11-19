package domain;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

public class DepositDomain {

    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int accountNumber;
    private String activity;


    private String amount;
    private Integer leftBalance;
    @Temporal(TemporalType.TIMESTAMP)
    private Date transactionDate = new Date();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public Integer getLeftBalance() {
        return leftBalance;
    }

    public void setLeftBalance(Integer leftBalance) {
        this.leftBalance = leftBalance;
    }

    public Date getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(Date transactionDate) {
        this.transactionDate = transactionDate;
    }
}
