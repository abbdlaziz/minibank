package bootsample.service;

import bootsample.dao.AccountRepository;
import bootsample.model.Account;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;

import javax.transaction.Transactional;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
@Service
@Transactional
public class AccountService {

    private final AccountRepository accountRepository;

    public AccountService(AccountRepository accountRepository) {

        this.accountRepository = accountRepository;
    }

    public List<Account> showAllAccounts(int customerId) {
        List<Account> accounts = new ArrayList<>();
        for (Account account : accountRepository.findByCustomerId(customerId)) {
            accounts.add(account);
        }
        return accounts;
    }

    public Account findAccount(int accountNumber) {
        return accountRepository.findOneByCustomerId(accountNumber);
    }

    public Account findAccountById(int id) {
        return accountRepository.findOneByCustomerId(id);
    }

    public Account findNorek(int accountNumber) {
        return accountRepository.findOneByAccountNumber(accountNumber);
    }

    public void save(Account account) {
        accountRepository.save(account);
    }

    public void delete(int norek) {
        accountRepository.delete(norek);
    }
}