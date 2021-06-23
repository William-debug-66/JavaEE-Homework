package com.swufe.javaee.beerV1.model;

import java.util.ArrayList;
import java.util.List;

public class BeerExpert {
    public List<beer> getBrands(String color) {
        List<beer> brands = new ArrayList<>();
        if (color.equals("amber")) {
            brands.add(new beer("Jack Amber",1928,15));
            brands.add(new beer("Red Moose",1857,23));
        } else {
            brands.add(new beer("Jali Pale Ale",1333,56));
            brands.add(new beer("Gout Stout",1896,23));
        }
        return brands;
    }
}
