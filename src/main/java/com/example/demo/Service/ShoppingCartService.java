package com.example.demo.Service;

import java.util.Collection;

import com.example.demo.model.Products;

public interface ShoppingCartService {
    Products add(Integer id);
    void remove(Integer id);
    Products update(Integer id, int qty);
    void clear();
    Collection<Products> getItems();
    int getCount();
    double getAmount();
}
