package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

	public ProductRepository() {
        Product phone = new Product("P1234", "iPhone 15", 1250000); // 제품 객체를 생성하고 초기화합니다. (제품코드/제품이름/가격)
        phone.setDescription("17.0cm, Super Retina XDR 디스플레이, 첨단 듀얼 카메라 시스템");  // 제품 설명을 설정합니다.
        phone.setCategory("Smart Phone");   // 제품 카테고리를 설정합니다.
        phone.setManufacturer("Apple");     // 제품 제조사를 설정합니다.
        phone.setUnitsInStock(1000);        // 제품의 재고 수량을 설정합니다.
        phone.setCondition("New");          // 제품 상태를 설정합니다.
        
        Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}