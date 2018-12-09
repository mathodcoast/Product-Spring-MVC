package com.bobocode.service;

import com.bobocode.model.Product;

import java.util.List;

public interface ProductService {

    void save(Product product);

    Product getById(Long id);

    List<Product> getAll();
}
