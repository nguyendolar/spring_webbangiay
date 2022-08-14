package vn.fs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.fs.entities.Color;
import vn.fs.entities.Product;
import vn.fs.entities.ProductColor;
import vn.fs.entities.ProductSize;
import vn.fs.repository.ColorRepository;
import vn.fs.repository.ProductColorRepository;
import vn.fs.service.ColorService;

import java.util.List;

@Service
public class ColorServiceImpl implements ColorService {
    @Autowired
    ColorRepository colorRepository;

    @Autowired
    ProductColorRepository productColorRepository;

    @Override
    public List<Color> findAll() {
        return colorRepository.findAll();
    }

    @Override
    public Color findColorById(Long id) {
        return colorRepository.findColorById(id);
    }

    @Override
    public Color save(Color color) {
        return colorRepository.save(color);
    }

    @Override
    public List<ProductColor> findProductColorByProduct(Product product){
        return productColorRepository.findProductColorByProduct(product);
    }
}
