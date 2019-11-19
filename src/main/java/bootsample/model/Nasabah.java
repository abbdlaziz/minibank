package bootsample.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "md_customer")
public class Nasabah implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private BigInteger idCard;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthDate;
    private String address;
    private String motherName;
    private String birthPlace;
    private String gender;
    private String phoneNumber;
    private String username;
    private String password;

    public Nasabah(){

    }

    public Nasabah(String name, BigInteger idCard, Date birthDate, String username, String password,String address, String motherName, String birthPlace, String gender, String phoneNumber) {
        super();
        this.name = name;
        this.idCard = idCard;
        this.birthDate = birthDate;
        this.address = address;
        this.motherName = motherName;
        this.birthPlace = birthPlace;
        this.gender = gender;
        this.phoneNumber = phoneNumber;
        this.username= username;
        this.password= password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigInteger getIdCard() {
        return idCard;
    }

    public void setIdCard(BigInteger idCard) {
        this.idCard = idCard;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Nasabah{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", idCard=" + idCard +
                ", birthDate=" + birthDate +
                ", address='" + address + '\'' +
                ", motherName='" + motherName + '\'' +
                ", birthPlace='" + birthPlace + '\'' +
                ", gender='" + gender + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
