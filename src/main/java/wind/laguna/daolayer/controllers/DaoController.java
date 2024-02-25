package wind.laguna.daolayer.controllers;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import wind.laguna.daolayer.dao.OrdersDao;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("/products")
public class DaoController {
    private final OrdersDao ordersDao;

    @GetMapping("/fetch-product")
    public List<String> showProductsName(@RequestParam String name) {
        return ordersDao.getProductName(name);
    }
}
