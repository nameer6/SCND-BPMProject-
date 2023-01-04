package main;
public class Products {
	private Double id;
	private String name;
	private String category;
	private Double price;
	private int orderProduct[];
	
	public Products() {
		
	}

	
	public Products(Double id, String name, String category, Double price) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		
	}


	
	public Double getId() {
		return (Double) id;
	}
	

	public void setId(Double id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public void setorderProduct(int ids[] ) {
		this.orderProduct=ids;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price +"]";
	}
	
	
}
