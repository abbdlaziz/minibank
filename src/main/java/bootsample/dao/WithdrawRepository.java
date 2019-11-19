package bootsample.dao;


import bootsample.model.Withdraw;
import org.springframework.data.repository.CrudRepository;

import java.util.Date;
import java.util.List;

public interface WithdrawRepository extends CrudRepository<Withdraw, Integer> {
    List<Withdraw> findAllByTransactionDate(Date now);
}