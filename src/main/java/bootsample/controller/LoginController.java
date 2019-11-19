package bootsample.controller;

import bootsample.model.Login;
import bootsample.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_LOGIN");
        return "login";
    }

    @RequestMapping(value= "/login-user", method = RequestMethod.POST)
    public String loginCustomer(@ModelAttribute Login login, HttpServletRequest request) {
        if (loginService.findByUsernameAndPassword(login.getUsername(),
                login.getPassword()) != null) {
            request.setAttribute("mode", "MODE_HOME");
            return "customer";
        } else {
            request.setAttribute("error", "Invalid Username or Password");
            request.setAttribute("mode", "MODE_LOGIN");
            return "login";
        }
    }
//    @RequestMapping(value = "/home",method = RequestMethod.GET)
//    public String home(HttpServletRequest request) {
//        request.setAttribute("mode", "MODE_HOME");
//        return "transaksi";
//    }
//    @RequestMapping("/login")
//
//    public String loginUser(@ModelAttribute Login login, HttpServletRequest request) {
//        if(loginService.findByUsernameAndPassword(login.getUsername(), login.getPassword())!=null) {
//            request.setAttribute("mode", "MODE_LOGIN");
//            return "transaksi";
//        }
//        else {
//            request.setAttribute("error", "Invalid username or Password");
//            return "/login";
//        }
//    }

//    @RequestMapping("/home")
//    public String login(HttpServletRequest request) {
//    return "transaksi";
//    }
    @RequestMapping("/logout")
    public String logout(@ModelAttribute Login login, HttpServletRequest request, Object logout) {
        return "redirect:/login";
    }

}
