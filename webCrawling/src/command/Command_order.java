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
	
	private String menu; // �ֹ��� �޴���
	
	private int quan2; // �ֹ��� �޴��� ����
	private int price;	// �ֹ��� �޴��� �� ����
	
	// constructor
	public Command_order() throws NamingException {
		dto = new Dto_order();
		dao = new Dao_order();
		
		menu = "";
		
		price = 0;
	}
	
	// method
	public void exe(HttpServletRequest request, HttpServletResponse response) {
		
		
		System.out.println("Command_order.exe ����");
		// �ֹ� �� ���� ��������
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String phone = (String)session.getAttribute("phone");
				
		// �ֹ� ���� ��������
		String[] check = request.getParameterValues("check");	// check�� �޴� ���
		String[] quan =request.getParameterValues("num"); // �ֹ��� �޴� ����
		String[] field = request.getParameterValues("field");	// check�� �޴����� ����
		
		
		
		// ������ ������ intŸ������ �Ľ�
		int[] quan_parsing=new int[quan.length];
		int[] parsing = new int[field.length];
		
		
		for(int i =0 ; i<quan.length ; i++) {
			quan_parsing[i] = Integer.parseInt(quan[i]);
			
			
		}
		
		for(int i =0 ; i<field.length ; i++) {
			parsing[i] = Integer.parseInt(field[i]);
			
		}
		
		for(int i=0;i<check.length;i++) {
			
			// �ֹ� ���� 
			if(menu.equals("")) {
				menu = menu+check[i];
			}
			else {
			menu = menu+","+check[i];
			}
			quan2=quan_parsing[i];
			// �� �ݾ�
			price += parsing[i]*quan_parsing[i];
		}
		
		System.out.println("�ֹ����� : "+menu);
		System.out.println("�� �ݾ�"+price);
		
		// �����ͺ��̽��� insert�� Data�� dto��ü�� ����
		dto.setId(id);
		dto.setMenu(menu);
		dto.setPrice(price);
		dto.setQuan(quan2);
		
		dao.doOrder(dto);
		
		
		
		
		
	}

	
		
	

}
