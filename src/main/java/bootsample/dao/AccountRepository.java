package bootsample.dao;

import bootsample.model.Account;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface AccountRepository extends CrudRepository<Account, Integer> {
    Account findOneByCustomerId(int customerId);

    Account findOneByAccountNumber(int accountNumber);

    List<Account> findByCustomerId(int customerId);

    List<Account> findAllByCustomerId(int customerId);
}


