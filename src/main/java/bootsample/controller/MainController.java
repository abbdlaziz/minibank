package bootsample.controller;
import javax.servlet.http.HttpServletRequest;

import bootsample.service.TransferService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    @GetMapping("/home")
    public String home(HttpServletRequest request) {
	request.setAttribute("mode", "MODE_HOME");
        return "customer";
    }

    @GetMapping("/customer-view")
    public String customer_view(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME_CUST");
        return "customer_view";
    }

    @GetMapping("/customer-home")
    public String customer_home(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_DATACUST");
        return "customer_home";
    }
    @RequestMapping(value = "/tables", method = RequestMethod.GET)
    public String tables(HttpServletRequest request) {
//        request.setAttribute("mode", "MODE_LOGIN_ADMIN");
        return "tables";
    }

    @Autowired
    private TransferService transferService;
    @GetMapping("/index")
    public String index(HttpServletRequest request) {
        request.setAttribute("transfers", transferService.findAll());
        request.setAttribute("mode", "MODE_REPORTTRANS");
        return "index";
    }
//
}
