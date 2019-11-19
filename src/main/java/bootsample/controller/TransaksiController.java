package bootsample.controller;

import bootsample.dao.DepositRepository;
import bootsample.exception.BankTransactionException;
import bootsample.model.*;
import bootsample.service.*;
import domain.DepositDomain;
import domain.TransferDomain;
import domain.WithdrawDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller("/trans")
public class TransaksiController {
    @Autowired
    private AccountService accountService;
    @Autowired
    private NasabahService nasabahService;
    @Autowired
    private DepositRepository depositRepository;
    @GetMapping("/deposit")
    public String Deposit(@RequestParam("accountNumber") int accountNumber, HttpServletRequest request) {
        request.setAttribute("accountNumber", accountNumber);
        request.setAttribute("mode", "MODE_DEPOSIT");
        return "transaksi";
    }

    @GetMapping("/withdraw")
    public String Withdraw(@RequestParam("accountNumber") int accountNumber, HttpServletRequest request) {
//        request.setAttribute("nasabah", nasabahService.findNasabah(id));
        request.setAttribute("accountNumber", accountNumber);
        request.setAttribute("mode", "MODE_WITHDRAW");
        return "transaksi";
    }

    @GetMapping(value = "/transfer")
    public String Transfer(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_TRANSFER");
        return "transaksi";
    }

    @Autowired
    private DepositService depositService;

    @PostMapping("/save-deposit")
    public String saveDeposit(@ModelAttribute DepositDomain deposit, BindingResult bindingResult, HttpServletRequest request) {
        Deposit deposit1 = new Deposit();
        String mantul = deposit.getAmount().replaceAll("Rp. ","");
        String mantaps = mantul.replace(".","");
        deposit1.setAmount(Integer.parseInt(mantaps));
        deposit1.setAccountNumber(deposit.getAccountNumber());
        deposit1.setActivity(deposit.getActivity());
        Account account = depositService.save(deposit1);
        request.setAttribute("deposits", depositService.findAll());
        request.setAttribute("mode ", "MODE_DEPOSIT");



        return "redirect:/nasabah-view?id=" + account.getCustomerId();
    }

    @Autowired
    private WithdrawService withdrawService;
    @PostMapping("/save-withdraw")
    public String saveWithdraw(@ModelAttribute WithdrawDomain withdraw, BindingResult bindingResult, HttpServletRequest request) {
        Withdraw withdraw1 = new Withdraw();
        String mantul = withdraw.getAmount().replaceAll("Rp. ","");
        String mantaps = mantul.replace(".","");
        withdraw1.setAmount(Integer.parseInt(mantaps));
        withdraw1.setAccountNumber(withdraw.getAccountNumber());
        withdraw1.setActivity(withdraw.getActivity());
        Account account = withdrawService.save(withdraw1);
        request.setAttribute("withdraws", withdrawService.findAll());
        request.setAttribute("mode", "MODE_WITHDRAW");
        return "redirect:/nasabah-view?id=" + account.getCustomerId();
//        return "redirect:/customer-list";
    }

    @Autowired
    private TransferService transferService;

    @PostMapping("/save-transfer")
    public String saveTransfer(@ModelAttribute TransferDomain transfer, BindingResult bindingResult, HttpServletRequest request)
            throws BankTransactionException
    {
        Transfer transfer1 = new Transfer();
        String mantul = transfer.getAmount().replaceAll("Rp. ","");
        String mantaps = mantul.replace(".","");
        transfer1.setAmount(Integer.parseInt(mantaps));
        transfer1.setAccountNumber(transfer.getAccountNumber());
        transfer1.setRecipientAccount(transfer.getRecipientAccount());
        transfer1.setActivity(transfer.getActivity());
        Account account = transferService.save(transfer1);
        request.setAttribute("transfer", transferService.findAll());
        request.setAttribute("mode", "MODE_TRANSFER");
//        return "redirect:/customer-list";
        return "redirect:/nasabah-view?id=" + account.getCustomerId();
    }

    @Autowired
    private TransferService transferServices;

    @GetMapping("/save-transfercust")
    public String saveTransfercust(@ModelAttribute Transfer transfer, BindingResult bindingResult, HttpServletRequest request) throws BankTransactionException {
        transferService.save(transfer);
        request.setAttribute("transfer", transferService.findAll());
        request.setAttribute("mode", "MODE_TRANSFER");
        return "customer_home";
    }
    @GetMapping(value = "/transfer-cust")
    public String Transfercust(@RequestParam("accountNumber") int accountNumber, HttpServletRequest request){
        request.setAttribute("accountNumber", accountNumber);
        request.setAttribute("mode", "MODE_TRANSFERCUST");
        return "customer_home";
    }
}
