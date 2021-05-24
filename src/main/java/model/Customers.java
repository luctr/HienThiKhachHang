package model;

public class Customers {
    private String name;
    private int age;
    private String address;
    private String linkImg;

    public Customers(String name, int age, String address, String linkImg) {
        this.name = name;
        this.age = age;
        this.address = address;
        this.linkImg = linkImg;
    }

    public Customers() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getLinkImg() {
        return linkImg;
    }

    public void setLinkImg(String linkImg) {
        this.linkImg = linkImg;
    }
}
