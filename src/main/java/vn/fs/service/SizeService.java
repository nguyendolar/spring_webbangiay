package vn.fs.service;

import org.springframework.stereotype.Service;
import vn.fs.entities.Product;
import vn.fs.entities.ProductSize;
import vn.fs.entities.Size;

import java.util.List;


@Service
public interface SizeService {
    List<Size> findAll();
    Size findSizeById(Long id);
    Size save(Size size);
    List<ProductSize> findProductSizeByProduct(Product product);
}
