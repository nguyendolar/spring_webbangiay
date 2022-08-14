package vn.fs.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author DongTHD
 *
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long productId;
	private String productName;
	private int quantity;
	private double price;
	private int discount;
	private String productImage;
	private String description;
	@Temporal(TemporalType.DATE)
	private Date enteredDate;
	private Boolean status;
	public boolean favorite;

	@ManyToOne
	@JoinColumn(name = "categoryId")
	private Category category;

	@OneToMany(mappedBy = "product")
	private List<ProductSize> productSizes;

	@OneToMany(mappedBy = "product")
	private List<ProductColor> productColors;

}
