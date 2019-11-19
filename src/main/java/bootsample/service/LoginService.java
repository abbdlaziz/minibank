package bootsample.service;

import bootsample.dao.LoginRepository;
import bootsample.model.Login;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
    @Transactional
    public class LoginService {

    private LoginRepository loginRepository;

    public LoginService(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

//	public void LoginRepository(LoginRepository loginRepository) {
//		this.loginRepository = loginRepository;
//	}
//
//	public List<Login> findAll(){
//		List<Login> logins = new ArrayList<>();
//		for(Login login : loginRepository.findAll()){
//			logins.add(login);
//		}
//		return logins;
//	}
//

    public Login findByUsernameAndPassword(String username, String password) {
        return loginRepository.findByUsernameAndPassword(username, password);
    }
}
