package com.entity;
import javax.persistence.*;
import java.util.List;


@Entity
@Table
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String categoryName;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "category")
    private List<PidCategory> pidCategories;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<PidCategory> getPidCategories() {
        return pidCategories;
    }

    public void setPidCategories(List<PidCategory> pidCategories) {
        this.pidCategories = pidCategories;
    }
}
