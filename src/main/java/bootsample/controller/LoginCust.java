package bootsample.controller;

import bootsample.dao.NasabahRepository;
import bootsample.model.Login;
import bootsample.model.Nasabah;
import bootsample.service.NasabahService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import java.time.LocalDate;
import java.util.Date;

@Controller
public class LoginCust {
    @Autowired
    NasabahService nasabahService;
    @Autowired
    NasabahRepository nasabahRepository;

//    @RequestMapping("/login-customers")
//            public String loginCustomers(ModelMap model, @ModelAttribute Nasabah nasabah, HttpServletRequest request) {
//                Nasabah customerData = nasabahService.findByUsernameAndPassword(
//                        nasabah.getUsername(), nasabah.getPassword());
//
//                if (customerData != null) {
//                    Integer Id = customerData.getId();
//                    nasabah.setid(Id);
//                    request.getSession().setAttribute("id", Id);
//                    request.setAttribute("mode", "MODE_HOME");
//            return "customer";
//        } else {
//            request.setAttribute("error", "Invalid Username or Password");
//            request.setAttribute("mode", "MODE_LOGIN_CUSTOMER");
//            return "redirect:/index";
//        }
//    }

    @RequestMapping(value = "/login-customers", method= RequestMethod.POST)
    public String logincust(ModelMap model, @RequestParam String username, HttpSession session, HttpServletRequest request) {
        Nasabah nasabah = nasabahRepository.findByUsername(username);

        Integer id = nasabah.getId();
        String name = nasabah.getName();
        BigInteger idCard = nasabah.getIdCard();
        String birthPlace = nasabah.getBirthPlace();
        Date birthDate = nasabah.getBirthDate();
        String address = nasabah.getAddress();
        String motherName = nasabah.getMotherName();
        String gender = nasabah.getGender();
        String phoneNumber = nasabah.getPhoneNumber();
        String password = nasabah.getPassword();
        if(!username.equalsIgnoreCase(username)) { model.put("error", "Username tidak terdaftar"); return "login"; }
        else if(username.equalsIgnoreCase(username) && password.equalsIgnoreCase(password)) {
            session.setAttribute("id", id);
            session.setAttribute("idCard", idCard);
            session.setAttribute("name", name);
            session.setAttribute("birthDate", birthDate);
            session.setAttribute("birthPlace", birthPlace);
            session.setAttribute("address", address);
            session.setAttribute("motherName", motherName);
            session.setAttribute("gender", gender);
            session.setAttribute("phoneNumber", phoneNumber);
            session.setAttribute("password", password);
            request.setAttribute("mode", "MODE_HOME_CUST2");
            return "customer_home";
        }
        else { model.put("error", "Gagal. Username atau password salah!");
        return "login-customer"; }
    }

    @RequestMapping("/logout-customer")
    public String logoutCustomer(@ModelAttribute Nasabah nasabah, HttpServletRequest request, Object logout) {
        request.setAttribute("mode", "MODE_HOME_CUST");
        request.getSession().invalidate();
        return "redirect:/customer-view";
    }
    }
