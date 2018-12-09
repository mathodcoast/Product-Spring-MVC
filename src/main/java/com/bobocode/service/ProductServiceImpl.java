package com.bobocode.service;

import com.bobocode.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Service
public class ProductServiceImpl implements ProductService {

    private Map<Long, Product> products;

    @Autowired
    private ProductServiceImpl(Map<Long, Product> products) {
        this.products = products;
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product getById(Long id) {
        return products.get(id);
    }

    @Override
    public List<Product> getAll() {
        return new LinkedList<>(products.values());
    }


}
