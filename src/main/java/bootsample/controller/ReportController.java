package bootsample.controller;

import bootsample.model.Withdraw;
import bootsample.service.AccountService;
import bootsample.service.DepositService;
import bootsample.service.TransferService;
import bootsample.service.WithdrawService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ReportController {

    @Autowired
    private DepositService depositService;
    @GetMapping("/report-deposit")
    public String reportDeposit(HttpServletRequest request){
        request.setAttribute("deposits", depositService.findAll());
        request.setAttribute("mode", "MODE_REPORTD");
        return "report";
    }

    @Autowired
    private WithdrawService withdrawService;
    @GetMapping("/report-withdraw")
    public String reportWithdraw(HttpServletRequest request){
        request.setAttribute("withdraws", withdrawService.findAll());
        request.setAttribute("mode", "MODE_REPORTW");
        return "report";
    }

    @Autowired
    private TransferService transferService;
    @GetMapping("/report-transfer")
    public String reportTransfer(HttpServletRequest request){
        request.setAttribute("transfers", transferService.findAll());
        request.setAttribute("mode", "MODE_REPORTTRANS");
        return "report";
    }

    @GetMapping("/report-all")
    public String reportALL(HttpServletRequest request){
        request.setAttribute("alls", transferService.findAll());
        request.setAttribute("mode", "MODE_REPORTALL");
        return "report";
    }

    @GetMapping("/report-print")
    public String reportPrint(HttpServletRequest request){
        request.setAttribute("alls", transferService.findAll());
        request.setAttribute("mode", "MODE_REPORTPRINT");
        return "printreport";
    }
}
