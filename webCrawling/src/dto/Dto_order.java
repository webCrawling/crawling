package dto;

public class Dto_order {
	
	private String id;
	private String menu;
	private int price;
	private int quan;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuan() {
		return quan;
	}
	public void setQuan(int quan) {
		this.quan = quan;
	
	}
}
