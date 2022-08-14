package vn.fs.service;

import org.springframework.stereotype.Service;
import vn.fs.entities.Color;
import vn.fs.entities.Product;
import vn.fs.entities.ProductColor;
import vn.fs.entities.Size;

import java.util.List;

@Service
public interface ColorService {
    List<Color> findAll();
    Color findColorById(Long id);
    Color save(Color color);
    List<ProductColor> findProductColorByProduct(Product product);
}
