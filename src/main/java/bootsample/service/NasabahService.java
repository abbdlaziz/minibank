package bootsample.service;

import bootsample.dao.NasabahRepository;
import bootsample.model.Account;
import bootsample.model.Nasabah;
import domain.CustomerList;
import domain.NasabahDetail;
import io.swagger.models.auth.In;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class NasabahService {

    private final NasabahRepository nasabahRepository;
    private final AccountService accountService;

    public NasabahService(NasabahRepository nasabahRepository, AccountService accountService) {
        this.nasabahRepository = nasabahRepository;
        this.accountService = accountService;
    }

    public List<Nasabah> findAll() {
        List<Nasabah> nasabahs = new ArrayList<>();
        for (Nasabah nasabah : nasabahRepository.findAll()) {
            nasabahs.add(nasabah);
        }
        return nasabahs;
    }

    public Nasabah findNasabah(int id) {
        return nasabahRepository.findOne(id);
    }

    public void save(Nasabah nasabah, Account account) {
        nasabahRepository.save(nasabah);
        Account newAcc = new Account();
        newAcc.setBalance(account.getBalance());
        newAcc.setAccountType(account.getAccountType());
        newAcc.setCustomerId(nasabah.getId());
        accountService.save(newAcc);
    }
    public void updates(Nasabah nasabah) {
        nasabahRepository.save(nasabah);
    }

    public void delete(int id) {
        nasabahRepository.delete(id);
    }

    public NasabahDetail updateNasabah(int id) {
        NasabahDetail detail = new NasabahDetail();
        Nasabah nasabah = nasabahRepository.findOne(id);
        detail.setId(nasabah.getId());
        detail.setAddress(nasabah.getAddress());
        detail.setBirthPlace(nasabah.getBirthPlace());
        detail.setGender(nasabah.getGender());
        detail.setIdCard(nasabah.getIdCard());
        detail.setMotherName(nasabah.getMotherName());
        detail.setName(nasabah.getName());
        detail.setPassword(nasabah.getPassword());
        detail.setPhoneNumber(nasabah.getPhoneNumber());
        detail.setUsername(nasabah.getUsername());
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        detail.setBirthDate(formatter.format(nasabah.getBirthDate()));
        return detail;
//        return nasabahRepository.findOne(id);
    }
    public Nasabah updatesNasabah(int id) {
        Nasabah getNasabah = nasabahRepository.findOne(id);
        return nasabahRepository.findOne(id);
    }

    public Nasabah findByUsernameAndPassword(String username, String password) {
        return nasabahRepository.findByUsernameAndPassword(username, password);
    }

    public Object customerLists() {
        List<Object[]> getCustomer = nasabahRepository.getcustomer();
        List<CustomerList> listCust = new ArrayList<CustomerList>();

        for (Object[] objects : getCustomer) {
            CustomerList customerList = new CustomerList();
            customerList.setCustomerId((Integer) objects[0]);
            customerList.setCustomerName((String) objects[1]);
            customerList.setIdCard((BigInteger) objects[2]);
            customerList.setBirthDate((Date) objects[3]);
            customerList.setAddress((String) objects[4]);
            customerList.setMotherName((String) objects[5]);
            customerList.setBirthPlace((String) objects[6]);
            customerList.setGender((String) objects[7]);
            customerList.setPhoneNumber((BigInteger) objects[8]);
            customerList.setUsername((String) objects[9]);
            customerList.setPassword((String) objects[10]);
            customerList.setAccountNumber((Integer) objects[11]);
            listCust.add(customerList);
        }
        System.out.println(listCust);
        return listCust;
    }
}


//    @Transactional
//    public Nasabah update(Nasabah nasabah) {
//        nasabah.set();
//
//        nasabahRepository.save(nasabah);
//        return nasabah;
//    }
