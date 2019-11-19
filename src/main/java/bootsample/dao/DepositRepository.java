package bootsample.dao;

import bootsample.model.Deposit;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Date;
import java.util.List;


public interface DepositRepository extends CrudRepository<Deposit, Integer> {

    List<Deposit> findAllByTransactionDate(Date now);
}
