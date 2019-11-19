package bootsample.model;


import javax.persistence.*;
import java.io.Serializable;
import java.math.BigInteger;
@Entity
@Table(name = "account")
public class Account implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "accountNumber")
    private int accountNumber;
    @Column(name = "accountType")
    private String accountType;
    @Column(name = "customerId")
    private int customerId;
    @Column(name = "balance")
    private int balance;

    public Account() {
    }

    public Account(String accountType, int customerId, int balance) {
        this.accountType = accountType;
        this.customerId = customerId;
        this.balance = balance;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "Account{" +
                "accountNumber=" + accountNumber +
                ", accountType='" + accountType + '\'' +
                ", customerId=" + customerId +
                ", balance=" + balance +
                '}';
    }
}