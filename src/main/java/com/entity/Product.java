package com.entity;
import com.servise.CustomValidation.CustomValidationEmailUser;
import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
@Table
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

   // @Size(min = 2, max = 15, message = "введите имя (от 2 до 15 знаков)")
    private String name;

    private String price;

    private String text;

    private String stanProducta;

    private String nameUser;

    private String email;

    private String telephonNamber;

    private  String skype;


    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "productSentMessenger")
    private List<Messenger> productSentMessages;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "productReceivedMessenger")
    private List<Messenger> productReceivedMessages;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "product")
    private List<ProductPhotos>productPhotos;

    @ManyToOne
    @JoinColumn
    private PidCategory pidCategory;

    @ManyToOne
    @JoinColumn
    private User user;

    @ManyToOne
    @JoinColumn
    private City city;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getStanProducta() {
        return stanProducta;
    }

    public void setStanProducta(String stanProducta) {
        this.stanProducta = stanProducta;
    }

    public List<ProductPhotos> getProductPhotos() {
        return productPhotos;
    }

    public void setProductPhotos(List<ProductPhotos> productPhotos) {
        this.productPhotos = productPhotos;
    }

    public PidCategory getPidCategory() {
        return pidCategory;
    }

    public void setPidCategory(PidCategory pidCategory) {
        this.pidCategory = pidCategory;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephonNamber() {
        return telephonNamber;
    }

    public void setTelephonNamber(String telephonNamber) {
        this.telephonNamber = telephonNamber;
    }

    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public List<Messenger> getProductSentMessages() {
        return productSentMessages;
    }

    public void setProductSentMessages(List<Messenger> productSentMessages) {
        this.productSentMessages = productSentMessages;
    }

    public List<Messenger> getProductReceivedMessages() {
        return productReceivedMessages;
    }

    public void setProductReceivedMessages(List<Messenger> productReceivedMessages) {
        this.productReceivedMessages = productReceivedMessages;
    }
}
