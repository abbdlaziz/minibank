package bootsample.controller;

import bootsample.model.User;
import bootsample.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "adminpage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "adminpage";
	}

	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "adminpage";
	}

	@GetMapping("/show-users")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "adminpage";
	}

	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int iduser, HttpServletRequest request) {
		userService.deleteMyUser(iduser);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "adminpage";
	}
	
	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int iduser,HttpServletRequest request) {
		request.setAttribute("user", userService.editUser(iduser));
		request.setAttribute("mode", "MODE_UPDATE");
		return "adminpage";
	}
	
	@RequestMapping("/login-admin-super")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGINADMIN");
		return "loginadmin";
	}

	@RequestMapping ("/login-admin")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
			return "homeadmin";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGINADMIN");
			return "adminpage";
			
		}
	}

}