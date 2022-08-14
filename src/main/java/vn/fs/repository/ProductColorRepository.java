package vn.fs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.fs.entities.Color;
import vn.fs.entities.Product;
import vn.fs.entities.ProductColor;

@Repository
public interface ProductColorRepository extends JpaRepository<ProductColor, Long> {
    ProductColor findProductColorByColorAndProduct(Color color, Product product);
}
