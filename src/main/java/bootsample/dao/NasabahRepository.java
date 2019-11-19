package bootsample.dao;

import bootsample.model.Login;
import bootsample.model.Nasabah;
import domain.CustomerList;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface NasabahRepository extends CrudRepository<Nasabah, Integer> {

    public Nasabah findByUsernameAndPassword(String username, String password);
     Nasabah findByUsername(String username);

     @Query(value = "select md_customer.*,account.account_number from md_customer left join account on account.customer_id = md_customer.id",nativeQuery = true)
     List<Object[]> getcustomer();
}
