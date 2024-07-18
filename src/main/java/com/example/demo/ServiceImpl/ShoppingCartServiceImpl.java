package com.example.demo.ServiceImpl;
import com.example.demo.Service.ShoppingCartService;
import com.example.demo.dao.ProductDAO;
import com.example.demo.model.Products;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.ArrayList;
import java.util.List;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
    List<Products> cartItems = new ArrayList<>();
    @Autowired
    private ProductDAO prodao;
    @Override
    public Products add(Integer id) {
        Products newItem = null;
        for (Products item : cartItems) {
            if (item.getId() == id) {
                newItem = item;
                break;
            }
        }
        if (newItem == null) {
            // Nếu sản phẩm chưa có trong giỏ hàng, ta cần lấy thông tin sản phẩm từ cơ sở dữ liệu và thêm vào giỏ hàng
            Products dbItem = prodao.getById(id); // Giả sử có một phương thức findById trong ProductService để lấy thông tin sản phẩm từ cơ sở dữ liệu
            if (dbItem != null) {
                newItem = new Products(dbItem.getId(), dbItem.getName(), dbItem.getImage(), dbItem.getDescription(), dbItem.getQty(), dbItem.getPrice(), dbItem.isAvailable(), dbItem.getCreateDate(), dbItem.getCategories(), dbItem.getOrderDetails());
                cartItems.add(newItem);
            }
        } else {
            newItem.setQty(newItem.getQty() + 1);
        }
        return newItem;
    }

    @Override
    public void remove(Integer id) {
        Products itemToRemove = null;
        for (Products item : cartItems) {
            if (item.getId() == id) {
                itemToRemove = item;
                break;
            }
        }
        if (itemToRemove != null) {
            cartItems.remove(itemToRemove);
        }
    }

    @Override
    public Products update(Integer id, int qty) {
        Products updatedItem = null;
        for (Products item : cartItems) {
            if (item.getId() == id) {
                item.setQty(qty);
                updatedItem = item;
                break;
            }
        }
        return updatedItem;
    }

    @Override
    public void clear() {
        cartItems.clear();
    }

    @Override
    public List<Products> getItems() {
        return cartItems;
    }

    @Override
    public int getCount() {
        return cartItems.size();
    }

    @Override
    public double getAmount() {
        double amount = 0.0;
        for (Products item : cartItems) {
            amount += item.getPrice() * item.getQty();
        }
        return amount;
    }
}
