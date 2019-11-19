package bootsample.service;

import bootsample.dao.AccountRepository;
import bootsample.dao.WithdrawRepository;
import bootsample.model.Account;
import bootsample.model.Withdraw;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class WithdrawService {


    private final WithdrawRepository withdrawRepository;

    public WithdrawService(WithdrawRepository withdrawRepository) {

        this.withdrawRepository = withdrawRepository;
    }

    public List<Withdraw> findAll() {
        List<Withdraw> withdraws = new ArrayList<>();
        Date date = new Date();
        for (Withdraw withdraw : withdrawRepository.findAll()) {
            withdraws.add(withdraw);
        }
        return withdraws;
    }

    public Withdraw findWithdraw(int id) {
        return withdrawRepository.findOne(id);
    }

    @Autowired
    AccountRepository accountRepository;

    @Transactional
    public Account save(Withdraw withdraw){
        Integer accountNumber = withdraw.getAccountNumber();
        Account account = accountRepository.findOne(accountNumber);
        int leftBalance = (account.getBalance() - withdraw.getAmount());
        if(account.getBalance() >= withdraw.getAmount() && account.getBalance()>=50000) {
            account.setBalance(account.getBalance() - withdraw.getAmount());
            withdraw.setLeftBalance(leftBalance);
        } else {
            System.out.println("The balance is not sufficient");
        }
        accountRepository.save(account);
        withdrawRepository.save(withdraw);
        accountRepository.save(account);

        Withdraw createWithdraw = new Withdraw();

        createWithdraw.setId((int) (withdrawRepository.count() +1));
        createWithdraw.setAccountNumber(accountNumber);
        createWithdraw.setAmount(withdraw.getAmount());

        withdrawRepository.save(withdraw);
        return account;
    }

    public void delete(int id) {
        withdrawRepository.delete(id);
    }
}
