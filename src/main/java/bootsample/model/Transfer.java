package bootsample.model;

import io.swagger.models.auth.In;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
@Entity
@Table(name = "trx_transaction")
public class Transfer implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private Integer accountNumber;
    private Integer recipientAccount;
    private String activity;
    private Integer amount;
    private Integer leftBalance;
    @Temporal(TemporalType.TIMESTAMP)
    private Date transactionDate = new Date();

    public Transfer() {
    }

    public Transfer(Integer accountNumber, Integer recipientAccount, String activity, Integer amount, Integer leftBalance, Date transactionDate) {
        super();
        this.accountNumber = accountNumber;
        this.recipientAccount = recipientAccount;
        this.activity = activity;
        this.amount = amount;
        this.leftBalance = leftBalance;
        this.transactionDate = transactionDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(Integer accountNumber) {
        this.accountNumber = accountNumber;
    }

    public Integer getRecipientAccount() {
        return recipientAccount;
    }

    public void setRecipientAccount(Integer recipientAccount) {
        this.recipientAccount = recipientAccount;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
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

    @Override
    public String toString() {
        return "Transfer{" +
                "id=" + id +
                ", accountNumber=" + accountNumber +
                ", recipientAccount=" + recipientAccount +
                ", activity='" + activity + '\'' +
                ", amount=" + amount +
                ", leftBalance=" + leftBalance +
                ", transactionDate=" + transactionDate +
                '}';
    }
}