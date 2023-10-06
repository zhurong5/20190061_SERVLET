package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
    private static ProductRepository instance = new ProductRepository();

    public static ProductRepository getInstance() {
        return instance;
    }

	public ProductRepository() {
        Product iphone15Pro = new Product("P1234", "iPhone 15 Pro", 1550000); // 제품 객체를 생성하고 초기화합니다. (제품코드/제품이름/가격)
		iphone15Pro.setDescription("17.0cm, Super Retina XDR display, 프로급 카메라 시스템"); // 제품 설명을 설정합니다.
		iphone15Pro.setCategory("Smart Phone");   // 제품 카테고리를 설정합니다.
		iphone15Pro.setManufacturer("Apple");     // 제품 제조사를 설정합니다.
		iphone15Pro.setUnitsInStock(1000);        // 제품의 재고 수량을 설정합니다.
		iphone15Pro.setCondition("New");          // 제품 상태를 설정합니다. New/Refurbished/Old
        
        Product phone15 = new Product("P1235", "iPhone 15", 1250000); 
        phone15.setDescription("17.0cm, Super Retina XDR display, 첨단 듀얼 카메라 시스템");
        phone15.setCategory("Smart Phone");
        phone15.setManufacturer("Apple");
        phone15.setUnitsInStock(1000);
        phone15.setCondition("New");

		Product iphone14 = new Product("P1236", "iPhone 14", 1090000);
		iphone14.setDescription("17.0cm, Super Retina XDR display, 듀얼 카메라 시스템");
		iphone14.setCategory("Smart Phone");
		iphone14.setManufacturer("Apple");
		iphone14.setUnitsInStock(1000);
		iphone14.setCondition("Old");
        
        Product ipadPro = new Product("P1237", "iPad Pro", 1249000);
		ipadPro.setDescription("32.8cm, Liquid Retina XDR display, M2 칩");
		ipadPro.setCategory("tablet");
		ipadPro.setManufacturer("Apple");
		ipadPro.setUnitsInStock(1000);
		ipadPro.setCondition("New");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

        listOfProducts.add(iphone15Pro);
        listOfProducts.add(phone15);
        listOfProducts.add(iphone14);
        listOfProducts.add(ipadPro);
        
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public Product getProductById(String productId) {
        Product productById = null;
        
        for (int i = 0; i < listOfProducts.size(); i++) {
            Product product = listOfProducts.get(i);
            if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
                productById = product;
                break;
            }
        }
        return productById;
    }
    public void addProduct(Product product) {
        listOfProducts.add(product);
    }
}