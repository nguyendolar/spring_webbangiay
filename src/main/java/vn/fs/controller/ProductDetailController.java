package vn.fs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import vn.fs.commom.CommomDataService;
import vn.fs.entities.*;
import vn.fs.repository.ProductRepository;
import vn.fs.service.ColorService;
import vn.fs.service.SizeService;

/**
 * @author DongTHD
 *
 */
@Controller
public class ProductDetailController extends CommomController{
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	CommomDataService commomDataService;

	@Autowired
	ColorService colorService;

	@Autowired
	SizeService sizeService;

	@GetMapping(value = "productDetail")
	public String productDetail(@RequestParam("id") Long id, Model model, User user) {

		Product product = productRepository.findById(id).orElse(null);
		List<ProductColor> procolor = colorService.findProductColorByProduct(product);
		List<ProductSize> prosize = sizeService.findProductSizeByProduct(product);
		model.addAttribute("product", product);
		model.addAttribute("procolor", procolor);
		model.addAttribute("prosize", prosize);

		commomDataService.commonData(model, user);
		listProductByCategory10(model, product.getCategory().getCategoryId());

		return "web/productDetail";
	}

	// show select option ở add product
	@ModelAttribute("colors")
	public List<Color> showColor(Model model) {
		List<Color> colors = colorService.findAll();
		model.addAttribute("colors", colors);

		return colors;
	}

	// show select option ở add product
	@ModelAttribute("sizes")
	public List<Size> showSize(Model model) {
		List<Size> sizes = sizeService.findAll();
		model.addAttribute("sizes", sizes);
		return sizes;
	}
	
	// Gợi ý top 10 sản phẩm cùng loại
	public void listProductByCategory10(Model model, Long categoryId) {
		List<Product> products = productRepository.listProductByCategory10(categoryId);
		model.addAttribute("productByCategory", products);
	}
}
