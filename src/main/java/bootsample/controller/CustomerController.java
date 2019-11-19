package bootsample.controller;

import bootsample.model.Account;
import bootsample.model.Nasabah;
import bootsample.model.Transfer;
import bootsample.service.AccountService;
import bootsample.service.NasabahService;
import bootsample.service.TransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class CustomerController {

    @GetMapping("/customer-list")
    public String CustomerList(HttpServletRequest request) {
//        request.setAttribute("nasabahs", nasabahService.findAll());
        request.setAttribute("mode", "MODE_CUSTOMER");
        request.setAttribute("nasabahs",nasabahService.customerLists());
        return "customer";
    }

    @GetMapping("/nasabah-view")
    public String customerView(@RequestParam Integer id, HttpServletRequest request) {
        request.setAttribute("nasabah", nasabahService.findNasabah(id));
        request.setAttribute("account", accountService.findAccount(id));
        request.setAttribute("accounts", accountService.showAllAccounts(id));
        request.setAttribute("mode", "MODE_NASABAHVIEW");
        return "customer";
    }

    @GetMapping("/input-customer")
    public String nasabah(HttpServletRequest request) {
//        request.setAttribute("tasks", taskService.findAll());
        request.setAttribute("mode", "MODE_NASABAH");
        return "customer";
    }
    @GetMapping("/input-banking")
    public String banking(HttpServletRequest request) {
//        request.setAttribute("tasks", taskService.findAll());
        request.setAttribute("mode", "MODE_BANKING");
        return "customer";
    }
    @GetMapping("/input-account")
    public String account(@RequestParam Integer id, HttpServletRequest request) {
        request.setAttribute("nasabah", nasabahService.findNasabah(id));
        request.setAttribute("nasabahs", nasabahService.findAll());
//        request.setAttribute("account", accountService.findAccount(id));
        request.setAttribute("mode", "MODE_ACCOUNT");
        return "customer";
    }

    @Autowired
    private NasabahService nasabahService;
//
    @PostMapping("/save-nasabah")
    public String saveNasabah(@ModelAttribute Nasabah nasabah,@ModelAttribute Account account, BindingResult bindingResult, HttpServletRequest request) {
        nasabahService.save(nasabah,account);
//        request.setAttribute("nasabahs", nasabahService.findAll());
        request.setAttribute("mode", "MODE_NASABAH");
//        request.setAttribute("success", "Create Nasabah Sucesss");
        return "redirect:/input-customer";
    }
    @PostMapping("/updates-nasabah")
    public String updates(@ModelAttribute Nasabah nasabah,BindingResult bindingResult, HttpServletRequest request) {
        nasabahService.updates(nasabah);
//        request.setAttribute("nasabahs", nasabahService.findAll());
        request.setAttribute("mode", "MODE_NASABAH");
        return "redirect:/customer-list";
    }

//    @PostMapping("/save-nasabah")
//    public String saveNasabah(@ModelAttribute Nasabah nasabah, BindingResult bindingResult, HttpServletRequest request) {
//        nasabahService.save(nasabah);
//        request.setAttribute("nasabahs", nasabahService.findAll());
//        request.setAttribute("mode", "MODE_NASABAH");
//        return "redirect:/customer-list";
//    }

    @RequestMapping("/update-nasabah")
    public String editNasabah(@RequestParam int id, HttpServletRequest request) {
        request.setAttribute("nasabah", nasabahService.updateNasabah(id));
        request.setAttribute("mode", "MODE_UPDATE");
        return "customer";
    }

    @GetMapping("/delete-nasabah")
    public String deleteNasabah(@RequestParam Integer id, HttpServletRequest request) {
        nasabahService.delete(id);
        request.setAttribute("nasabahs", nasabahService.findAll());
        request.setAttribute("mode", "MODE_CUSTOMER");
        return "customer";
    }

    @Autowired
    private AccountService accountService;

    @PostMapping("/save-account")
    public String saveAccount(@ModelAttribute Account account, BindingResult bindingResult, HttpServletRequest request) {
        accountService.save(account);
        request.setAttribute("mode", "MODE_NASABAHVIEW");
        return "redirect:/customer-list";
    }

    @GetMapping("/customer-data")
    public String CustomerData(HttpSession session, HttpServletRequest request) {
        Integer id = (Integer) session.getAttribute("id");
        request.setAttribute("accounts", accountService.showAllAccounts(id));
        request.setAttribute("nasabahs", nasabahService.findAll());
//        request.setAttribute("account", accountService.findAccount(id));
//        request.setAttribute("accounts", accountService.showAllAccounts(id));
        request.setAttribute("mode", "MODE_VIEWDATACUST");
        return "customer_home";
    }

    @GetMapping("/about")
    public String about(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_ABOUT");
        return "customer_view";
    }

    @GetMapping("/contact")
    public String contact(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_CONTACT");
        return "customer_view";
    }

    @GetMapping("/homecust")
    public String homecust(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME_CUST2");
        return "customer_home";
    }

}
