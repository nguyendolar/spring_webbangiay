package vn.fs.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "productColor")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductColor {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "id_product",referencedColumnName = "productId")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "id_color",referencedColumnName = "id")
    private Color color;
}
