package Product.DTO;

public class ProductDTO {

	private int productId = 0; // ��ǰ��ȣ
	private String product = ""; // ��ǰ��
	private double price = 0; // ����
	private int stock = 0; // ������
	private String image = ""; // ��ǰ�̹���
	private int status = 1; // ����

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

	/** 1:�ǸŰ��� 2:�Ǹ����� */
	public static final int ACTIVE = 1, INACTIVE = 2;
}