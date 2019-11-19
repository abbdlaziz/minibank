package bootsample.service;

import bootsample.dao.AccountRepository;
import bootsample.dao.NasabahRepository;
import bootsample.dao.TransferRepository;
import bootsample.dao.WithdrawRepository;
import bootsample.model.Account;
import bootsample.model.Deposit;
import bootsample.model.Transfer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bootsample.exception.BankTransactionException;
import org.springframework.transaction.annotation.Propagation;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Service
@Transactional

public class TransferService {


    private final TransferRepository transferRepository;

    public TransferService(TransferRepository transferRepository) {

        this.transferRepository = transferRepository;
    }

    public List<Transfer> findAll() {
        List<Transfer> transfers = new ArrayList<>();
        Date date = new Date();
        for (Transfer transfer : transferRepository.findAll()) {
            transfers.add(transfer);
        }
        return transfers;
    }

    public Transfer findTransfer(Integer id) {
        return transferRepository.findOne(id);
    }

    @Autowired
    AccountRepository accountRepository;
    @Transactional
    public Account save(Transfer transfer) {
        Integer norekpengirim = transfer.getAccountNumber();
        Account account1 = accountRepository.findOne(norekpengirim);
        int sisasaldo = (account1.getBalance() - transfer.getAmount());
        Integer norekpenerima = transfer.getRecipientAccount();
        Account account2 = accountRepository.findOne(norekpenerima);
        if (account1.getBalance() >= transfer.getAmount() && account1.getBalance() >= 50000) {
            account1.setBalance(account1.getBalance() - transfer.getAmount());
            account2.setBalance(account2.getBalance() + transfer.getAmount());
        } else {
            System.out.println("Saldo anda tidak cukup");
        }

        accountRepository.save(account1);
        accountRepository.save(account2);
        transfer.setLeftBalance(sisasaldo);
        transferRepository.save(transfer);

        Transfer createTransfer = new Transfer();
        createTransfer.setId((int)(transferRepository.count()+1));
        createTransfer.setAccountNumber(norekpengirim);
        createTransfer.setRecipientAccount(norekpenerima);
        createTransfer.setAmount(transfer.getAmount());
        transferRepository.save(transfer);

        return account1;
    }


    public void delete(Integer id) {
        transferRepository.delete(id);
    }

}