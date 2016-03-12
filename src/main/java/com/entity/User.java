package com.entity;

import javax.persistence.*;
import java.util.List;

//показує, що клас буде відображено у БД
@Entity
@Table
public class User {
    //показує, що поле нижще буде виконувати роль стовпця id
    @Id
    //вказує яким генератором скористатись при генерації поля нижче
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    //показує, що поле нижче буде стовпцем,
    //параметр вказує як буде називатись стовпець в БД

    private String foto;

    private  String parol;

    private String email;

    private String telephon_namber;

    private String name;

    private String lastName;

    private  String skype;

    private  int adminStatus;


    //вказує, що поле нижче є відображенням зв`зку один до багатьох
    //з цієї сторони зв`язку, тобто в анотації OneToMany, завжди необхідно описати додаткові параметри
    //cascade опціональний параметр, який вказує на поведінку БД в випадку видалення, оновлення, створення елементів
    //fetch зазвичай обов`язковий, оскільки по замовчуванню витягує з БД весь ланцюжок з повною колекцією
    //mappedBy обов`язковий, вказує на сторону відповідальну за зв`язок
    //ссилається завжди на поле з іншої сторони яке приймає за параметр об`єкт цього класу, див. ProductPhone
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
    private List<Product>product;
    //вказує, що поле нижче є відображенням зв`зку багато до одного
    @ManyToOne
    //вказує на те що необхідно створити додатковий стовпець, який буде FK
    //до протилежної сторони зв`язку
    @JoinColumn
    private City city;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getParol() {
        return parol;
    }

    public void setParol(String parol) {
        this.parol = parol;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephon_namber() {
        return telephon_namber;
    }

    public void setTelephon_namber(String telephon_namber) {
        this.telephon_namber = telephon_namber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public int getAdminStatus() {return adminStatus;}

    public void setAdminStatus(int adminStatus) {this.adminStatus = adminStatus;}

}
