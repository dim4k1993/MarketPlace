package com.entity;

import javax.persistence.*;

@Entity
@Table
public class Messenger {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String Messenger;

    @ManyToOne
    @JoinColumn
    private User userSentMessenger;

    @ManyToOne
    @JoinColumn
    private User userReceivedMessenger;

    @ManyToOne
    @JoinColumn
    private Product productSentMessenger;

    @ManyToOne
    @JoinColumn
    private Product productReceivedMessenger;

    public Product getProductSentMessenger() {
        return productSentMessenger;
    }

    public void setProductSentMessenger(Product productSentMessenger) {
        this.productSentMessenger = productSentMessenger;
    }

    public Product getProductReceivedMessenger() {
        return productReceivedMessenger;
    }

    public void setProductReceivedMessenger(Product productReceivedMessenger) {
        this.productReceivedMessenger = productReceivedMessenger;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMessenger() {
        return Messenger;
    }

    public void setMessenger(String messenger) {
        Messenger = messenger;
    }

    public User getUserSentMessenger() {
        return userSentMessenger;
    }

    public void setUserSentMessenger(User userSentMessenger) {
        this.userSentMessenger = userSentMessenger;
    }

    public User getUserReceivedMessenger() {
        return userReceivedMessenger;
    }

    public void setUserReceivedMessenger(User userReceivedMessenger) {
        this.userReceivedMessenger = userReceivedMessenger;
    }
}
