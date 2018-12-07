package Product.DTO;

public class ProductDTO {

	private int productId = 0; // 상품번호
	private String product = ""; // 상품명
	private double price = 0; // 가격
	private int stock = 0; // 재고수량
	private String image = ""; // 상품이미지
	private int status = 1; // 상태

	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProduct() {
		return this.product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return this.stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	/** 1:판매가능 2:판매정지 */
	public static final int ACTIVE = 1, INACTIVE = 2;
}