package bootsample.dao;

import bootsample.model.Transfer;
import org.springframework.data.repository.CrudRepository;

import java.util.Date;
import java.util.List;


public interface TransferRepository extends CrudRepository<Transfer, Integer> {
    List<Transfer> findAllByTransactionDate(Date now);
}
