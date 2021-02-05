/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author U
 */
public class Customer {

    

    
    private String username, password, name, ic, email;
    private int phoneNum, ID;

    
    public Customer(String password, String name, String ic, String email, int phoneNum, int ID) {
        this.password = password;
        this.name = name;
        this.ic = ic;
        this.email = email;
        this.phoneNum = phoneNum;
        this.ID = ID;
    }
    
    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword (String password) {
        this.password = password;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the ic
     */
    public String getIc() {
        return ic;
    }

    /**
     * @param ic the ic to set
     */
    public void setIc(String ic) {
        this.ic = ic;
    }

    /**
     * @return the phoneNum
     */
    public int getPhoneNum() {
        return phoneNum;
    }

    /**
     * @param phoneNum the phoneNum to set
     */
    public void setPhoneNum(int phoneNum) {
        this.phoneNum = phoneNum;
    }
    
        /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
}
