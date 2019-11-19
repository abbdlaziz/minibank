package bootsample.service;

import bootsample.dao.AccountRepository;
import bootsample.dao.DepositRepository;
import bootsample.model.Account;
import bootsample.model.Deposit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Service
@Transactional
public class DepositService {

    private final DepositRepository depositRepository;

    public DepositService(DepositRepository depositRepository) {
        this.depositRepository = depositRepository;
    }

    public List<Deposit> findAll() {
        List<Deposit> deposits = new ArrayList<>();
        Date date = new Date();
        for (Deposit deposit : depositRepository.findAll()) {
            deposits.add(deposit);
        }
        return deposits;
    }

    public Deposit findDeposit(int id) {
        return depositRepository.findOne(id);
    }


    public void delete(int id) {
        depositRepository.delete(id);
    }

    @Autowired
    AccountRepository accountRepository;

    @Transactional
    public Account save(Deposit deposit) {
        Integer accountNumber = deposit.getAccountNumber();
        Account account = accountRepository.findOne(accountNumber);
        int leftBalance = (account.getBalance() + deposit.getAmount());
        account.setBalance(account.getBalance() + deposit.getAmount());
        deposit.setLeftBalance(leftBalance);
        depositRepository.save(deposit);
        accountRepository.save(account);

        Deposit createDeposit = new Deposit();

        createDeposit.setId((int) (depositRepository.count() + 1));
        createDeposit.setAccountNumber(accountNumber);
        createDeposit.setAmount(deposit.getAmount());

        depositRepository.save(deposit);
        return account;
    }
}