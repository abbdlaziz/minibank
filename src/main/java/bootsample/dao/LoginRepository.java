package bootsample.dao;

import bootsample.model.Deposit;
import bootsample.model.Login;
import org.springframework.data.repository.CrudRepository;

public interface LoginRepository extends CrudRepository<Login, Integer> {
    public Login findByUsernameAndPassword(String username, String password);

}