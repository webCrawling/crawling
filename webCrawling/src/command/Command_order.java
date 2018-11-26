package command;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao_order;
import dto.Dto_order;
import etc.Command;

public class Command_order implements Command {
	// field
	private Dto_order dto;
	private Dao_order dao;
	
	private String menu; // 주문한 메뉴들
	
	private int quan2; // 주문한 메뉴들 수량
	private int price;	// 주문한 메뉴들 총 가격
	
	// constructor
	public Command_order() throws NamingException {
		dto = new Dto_order();
		dao = new Dao_order();
		
		menu = "";
		
		price = 0;
	}
	
	// method
	public void exe(HttpServletRequest request, HttpServletResponse response) {
		
		
		System.out.println("Command_order.exe 실행");
		// 주문 고객 정보 가져오기
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String phone = (String)session.getAttribute("phone");
				
		// 주문 내역 가져오기
		String[] check = request.getParameterValues("check");	// check된 메뉴 목록
		String[] quan =request.getParameterValues("num"); // 주문할 메뉴 수량
		String[] field = request.getParameterValues("field");	// check된 메뉴들의 가격
		
		
		
		// 수량과 가격을 int타입으로 파싱
		int[] quan_parsing=new int[quan.length];
		int[] parsing = new int[field.length];
		
		
		for(int i =0 ; i<quan.length ; i++) {
			quan_parsing[i] = Integer.parseInt(quan[i]);
			
			
		}
		
		for(int i =0 ; i<field.length ; i++) {
			parsing[i] = Integer.parseInt(field[i]);
			
		}
		
		for(int i=0;i<check.length;i++) {
			
			// 주문 내역 
			if(menu.equals("")) {
				menu = menu+check[i];
			}
			else {
			menu = menu+","+check[i];
			}
			quan2=quan_parsing[i];
			// 총 금액
			price += parsing[i]*quan_parsing[i];
		}
		
		System.out.println("주문내역 : "+menu);
		System.out.println("총 금액"+price);
		
		// 데이터베이스에 insert할 Data를 dto객체에 설정
		dto.setId(id);
		dto.setMenu(menu);
		dto.setPrice(price);
		dto.setQuan(quan2);
		
		dao.doOrder(dto);
		
		
		
		
		
	}

	
		
	

}
