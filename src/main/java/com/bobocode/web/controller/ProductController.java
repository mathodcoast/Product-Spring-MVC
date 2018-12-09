package com.bobocode.web.controller;

import com.bobocode.dao.ProductDao;
import com.bobocode.model.Product;
import com.bobocode.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@Controller
@RequestMapping
public class ProductController {

   private ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String testHello(){
        return "productWelcomeTitle";
    }

    @GetMapping("/find")
    public String getById(){
        return "findProduct";
    }

    @GetMapping("/product")
    public String product(@RequestParam(name = "productId") long id, Model model){
        model.addAttribute("product", productService.getById(id));
        return "product";
    }

    @GetMapping("/productForm")
    public String productForm (){
        return "productForm";
    }

    @PostMapping("/saveProduct")
    public String saveProduct(@RequestParam(name = "productName") String name,
                              @RequestParam(name = "productCoast")BigDecimal price,
                              Model model){
        String message;
        if (productService.getAll().stream().map(Product::getName).anyMatch(n -> n.equals(name))){
            message = "Error: This Product is already exist";
        } else {
            Product product = new Product(name, price);
            productService.save(product);
            message = "Product has been stored successfully";
        }
        model.addAttribute("message", message);
        return "productForm";
    }

    @GetMapping("/showAllProducts")
    public String showAllProducts(Model model){
        model.addAttribute("list", productService.getAll());
        return "allProducts";
    }
}
