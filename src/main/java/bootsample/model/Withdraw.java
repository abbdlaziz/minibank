package bootsample.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
@Entity
@Table(name="trx_transaction")
public class Withdraw implements Serializable {

    @Id
    @GeneratedValue(strategy =  GenerationType.AUTO)
    private int id;
    private int accountNumber;
    private String activity;
    private Integer amount;
    private Integer leftBalance;
    @Temporal(TemporalType.TIMESTAMP)
    private Date transactionDate = new Date();

    public Withdraw(){

    }

    public Withdraw(int accountNumber, String activity, Integer amount, Integer leftBalance, Date transactionDate) {
        super();
        this.accountNumber = accountNumber;
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
        return "Withdraw{" +
                "id=" + id +
                ", accountNumber=" + accountNumber +
                ", activity='" + activity + '\'' +
                ", amount=" + amount +
                ", leftBalance=" + leftBalance +
                ", transactionDate=" + transactionDate +
                '}';
    }
}