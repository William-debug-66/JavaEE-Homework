package com.swufe.javaee.beerV1.model;

public class beer {
    private String band;
    private int year_of_birth;
    private int size;

    public beer(){

    }

    public beer(String brand,int year,int size){
        this.band=brand;
        this.year_of_birth=year;
        this.size=size;
    }

    public String getBand(){
        return band;
    }
    public int getYear_of_birth(){
        return year_of_birth;
    }
    public int getSize(){
        return size;
    }

}
