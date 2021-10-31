package controller.orderServlet;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrderBean;
import model.PageBean;
import model.VideoBean;
import service.ClassService;
import service.OrdersService;
import service.serviceimpl.ClassServiceImpl;
import service.serviceimpl.OrdersServiceImpl;

@WebServlet("/Order/OrdersListPageServlet")
public class OrdersListPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentpage = 1;// 默認的當前頁
		int pagesize = 5;// 每頁顯示的商品數
		
//		String hql = "From OrderBean m  WHERE m.member.id != null";
		String hql = "From OrderBean";
//		String hql2 = "From VideoBean";
//		String hql2 = "From OrderBean";
		
		
		String curpage = request.getParameter("pageNo");
		
		String servletPath = request.getServletPath();
		request.setAttribute("servletPath", servletPath);

		// 為當前頁賦值
		if (!"".equals(curpage) && curpage != null) {
			currentpage = Integer.parseInt(curpage);
		}
		
		OrdersService ordersService = new OrdersServiceImpl();
//		ClassService classService = new ClassServiceImpl();
		
		PageBean pageBean = ordersService.findOrdersByPage(currentpage, pagesize, hql);
//		OrderBean orderItem = ordersService.findOrderItemByPage(hql1);
//		PageBean pageBean2 = classService.findCourseByPage(currentpage, pagesize, hql2);
		
		List<OrderBean> list  = pageBean.getOrderBean();
		
		for(OrderBean ob: list) {
			for(VideoBean vb : ob.getCourse()) {
				System.out.println(vb);
			}
		}
		
			
		
		
		
		request.setAttribute("pageBean", pageBean);
		
		request.getRequestDispatcher("/BackendSystem/orderBackend.jsp").forward(request, response);
		
		return;
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
