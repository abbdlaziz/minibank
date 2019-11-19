package domain;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

public class TransferDomain {

    private Integer accountNumber;
    private Integer recipientAccount;
    private String activity;
    private String amount;
    private Integer leftBalance;
    @Temporal(TemporalType.TIMESTAMP)
    private Date transactionDate = new Date();


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
