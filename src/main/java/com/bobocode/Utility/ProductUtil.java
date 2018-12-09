package com.bobocode.Utility;

import com.bobocode.model.Product;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

@Component
public class ProductUtil {
    public static Map<Long, Product> productMap;

    @Bean
    public static Map<Long, Product> getProductBase() {
        productMap = new HashMap<>();
        Product carBmw = new Product("BMW",BigDecimal.valueOf(10000));
        Product carMercedes = new Product("Mercedes",BigDecimal.valueOf(25000));
        Product carAudi = new Product("Audi",BigDecimal.valueOf(8000));
        productMap.put(carBmw.getId(),carBmw);
        productMap.put(carMercedes.getId(),carMercedes);
        productMap.put(carAudi.getId(),carAudi);
        return productMap;
    }
}
