package com.entity;

import javax.persistence.*;

@Entity
@Table
public class Messenger {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String Messenger;
    private  String UserEmailSendCommentsForProduct;

    @ManyToOne
    @JoinColumn
    private User userSentMessenger;

    @ManyToOne
    @JoinColumn
    private User userReceivedMessenger;


    @ManyToOne
    @JoinColumn
    private Product productReceivedComments;


    public Product getProductReceivedComments() {
        return productReceivedComments;
    }

    public void setProductReceivedComments(Product productReceivedComments) {
        this.productReceivedComments = productReceivedComments;
    }


    public String getUserEmailSendCommentsForProduct() {
        return UserEmailSendCommentsForProduct;
    }

    public void setUserEmailSendCommentsForProduct(String userEmailSendCommentsForProduct) {
        UserEmailSendCommentsForProduct = userEmailSendCommentsForProduct;
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
