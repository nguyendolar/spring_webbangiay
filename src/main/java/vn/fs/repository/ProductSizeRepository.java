package vn.fs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.fs.entities.Product;
import vn.fs.entities.ProductColor;
import vn.fs.entities.ProductSize;
import vn.fs.entities.Size;

import java.util.List;

@Repository
public interface ProductSizeRepository extends JpaRepository<ProductSize, Long> {
    ProductSize findProductSizeBySizeAndProduct(Size size, Product product);
    List<ProductSize> findProductSizeByProduct(Product product);
}
