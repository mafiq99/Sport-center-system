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
    private int phoneNum;

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
    public void setPasword (String password) {
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
    public void setIc(String name) {
        this.name = name;
    }

    /**
     * @return the ic
     */
    public String getIC() {
        return ic;
    }

    /**
     * @param ic the ic to set
     */
    public void setIC(String ic) {
        this.ic = ic;
    }

    /**
     * @return the phoneNum
     */
    public int getAge() {
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
