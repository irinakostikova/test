package model;

import javax.persistence.*;

@Entity
@Table(name="users")
public class Users {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="idUsers")
    private int idUsers;

    @Column(name="Login")
    private String login;

    @Column(name="Password")
    private String password;

    public int getidUsers() {
        return idUsers;
    }
    public void setidUsers(int idUsers) {
        this.idUsers = idUsers;
    }

    public String getlogin() {
        return login;
    }
    public void setlogin(String login) {
        this.login = login;
    }

    public String getpassword() {
        return password;
    }
    public void setpassword(String password) {
        this.password = password;
    }
}


