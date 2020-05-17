package model;
import javax.persistence.*;

@Entity
@Table (name = "customer")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column (name = "id")
    private Integer id;

    @Column (name = "F_name")
    private String F_name;

    @Column (name = "S_name")
    private String S_name;

    @Column (name = "age")
    private Integer age;

    @Column (name = "email")
    private String email;

    @Column (name = "address")
    private String address;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id =id;
    }

    public String getF_name() {
        return F_name;
    }
    public void setF_name(String F_name) {
        this.F_name = F_name;
    }

    public String getS_name() {return S_name;}
    public void setS_name(String S_name) {
        this.S_name = S_name;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public Customer() {     }

    public Customer(String F_name, String S_name, Integer age, String email, String address){
        this.F_name = F_name;
        this.S_name = S_name;
        this.age = age;
        this.email= email;
        this.address = address;
    }

    @Override
    public String toString() {
        return "com.devcolibri.servlet.Customer{" +
                "id=" + id +
                ", F_name='" + F_name + '\'' +
                ", S_name='" + S_name + '\''+
                ", email='" + age + '\''+
                ", number=" + email + '\''+
                ", address='" + address +
                '}';
    }
}