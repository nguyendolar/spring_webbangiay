package vn.fs.controller.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.fs.entities.*;
import vn.fs.repository.*;
import vn.fs.service.ColorService;
import vn.fs.service.SizeService;

/**
 * @author DongTHD
 *
 */
@Controller
@RequestMapping("/admin")
public class ProductController{
	
	@Value("${upload.path}")
	private String pathUploadImage;

	@Autowired
	ProductRepository productRepository;

	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	UserRepository userRepository;

	@Autowired
	ColorService colorService;

	@Autowired
	SizeService sizeService;

	@Autowired
	ProductColorRepository productColorRepository;

	@Autowired
	ProductSizeRepository productSizeRepository;
	
	@ModelAttribute(value = "user")
	public User user(Model model, Principal principal, User user) {

		if (principal != null) {
			model.addAttribute("user", new User());
			user = userRepository.findByEmail(principal.getName());
			model.addAttribute("user", user);
		}

		return user;
	}

	public ProductController(CategoryRepository categoryRepository,
			ProductRepository productRepository) {
		this.productRepository = productRepository;
		this.categoryRepository = categoryRepository;
	}

	// show list product - table list
	@ModelAttribute("products")
	public List<Product> showProduct(Model model) {
		List<Product> products = productRepository.findAll();

		model.addAttribute("products", products);

		return products;
	}


	@GetMapping(value = "/products")
	public String products(Model model, Principal principal) {
		Product product = new Product();
		model.addAttribute("product", product);

		return "admin/products";
	}

	// add product
	@PostMapping(value = "/addProduct")
	public String addProduct(@ModelAttribute("product") Product product, ModelMap model,
			@RequestParam("file") MultipartFile file, HttpServletRequest httpServletRequest) {

		try {

			File convFile = new File(pathUploadImage + "/" + file.getOriginalFilename());
			FileOutputStream fos = new FileOutputStream(convFile);
			fos.write(file.getBytes());
			fos.close();
		} catch (IOException e) {

		}

		product.setProductImage(file.getOriginalFilename());
		Product p = productRepository.save(product);
		if (null != p) {
			model.addAttribute("message", "Update success");
			model.addAttribute("product", product);
		} else {
			model.addAttribute("message", "Update failure");
			model.addAttribute("product", product);
		}
		return "redirect:/admin/products";
	}

	// show select option ở add product
	@ModelAttribute("categoryList")
	public List<Category> showCategory(Model model) {
		List<Category> categoryList = categoryRepository.findAll();
		model.addAttribute("categoryList", categoryList);

		return categoryList;
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
	
	// get Edit brand
	@GetMapping(value = "/editProduct/{id}")
	public String editCategory(@PathVariable("id") Long id, ModelMap model) {
		Product product = productRepository.findById(id).orElse(null);
		
		model.addAttribute("product", product);

		return "admin/editProduct";
	}

	// delete category
	@GetMapping("/deleteProduct/{id}")
	public String delProduct(@PathVariable("id") Long id, Model model) {
		productRepository.deleteById(id);
		model.addAttribute("message", "Delete successful!");

		return "redirect:/admin/products";
	}

	// add product
	@PostMapping(value = "/addProduct1")
	public String addProduct1(@ModelAttribute("product") Product product, ModelMap model, HttpServletRequest httpServletRequest, RedirectAttributes rd) {

		System.out.println(httpServletRequest.getParameter("idColor"));
		System.out.println(httpServletRequest.getParameter("idProduct"));
		Long idColor = Long.parseLong(httpServletRequest.getParameter("idColor"));
		Long idProduct = Long.parseLong(httpServletRequest.getParameter("idProduct"));
		System.out.println(idProduct);
		System.out.println(idColor);

		ProductColor obj = new ProductColor();
		Color color = colorService.findColorById(idColor);
		Product product1 = productRepository.getById(idProduct);
		ProductColor productColor = productColorRepository.findProductColorByColorAndProduct(color,product1);
		if(productColor == null){
			obj.setColor(color);
			obj.setProduct(product1);
			productColorRepository.save(obj);
			rd.addFlashAttribute("message", "Thêm color cho " + product1.getProductName() + " thành công");
		}else{
			rd.addFlashAttribute("error", "Màu của " + product1.getProductName() + " đã tồn tại");
		}


		return "redirect:/admin/products";
	}

	// add product
	@PostMapping(value = "/addProduct2")
	public String addProduct2(@ModelAttribute("product") Product product, ModelMap model, HttpServletRequest httpServletRequest, RedirectAttributes rd) {

		System.out.println(httpServletRequest.getParameter("idSize"));
		System.out.println(httpServletRequest.getParameter("idProduct"));
		Long idSize = Long.parseLong(httpServletRequest.getParameter("idSize"));
		Long idProduct = Long.parseLong(httpServletRequest.getParameter("idProduct"));
		System.out.println(idProduct);
		System.out.println(idSize);

		ProductSize obj = new ProductSize();
		Size size = sizeService.findSizeById(idSize);
		Product product1 = productRepository.getById(idProduct);
		ProductSize productSie = productSizeRepository.findProductSizeBySizeAndProduct(size, product1);
		if(productSie == null){
			obj.setSize(size);
			obj.setProduct(product1);
			productSizeRepository.save(obj);
			rd.addFlashAttribute("message", "Thêm size cho " + product1.getProductName() + " thành công");
		}else{
			rd.addFlashAttribute("error", "Size của " + product1.getProductName() + " đã tồn tại");
		}


		return "redirect:/admin/products";
	}

	@PostMapping(value = "/addColor")
	public String addColor(@PathVariable("id") Long id, Model model,HttpServletRequest request) {
		Long idColor = Long.parseLong(request.getParameter("idColor"));
		Long idProduct = Long.parseLong(request.getParameter("idProduct"));
		ProductColor obj = new ProductColor();
		Color color = colorService.findColorById(idColor);
		Product product = productRepository.getById(idProduct);
		obj.setColor(color);
		obj.setProduct(product);
		productColorRepository.save(obj);
		model.addAttribute("message", "Thêm color cho " + product.getProductName() + " thành công");

		return "redirect:/admin/products";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
}
