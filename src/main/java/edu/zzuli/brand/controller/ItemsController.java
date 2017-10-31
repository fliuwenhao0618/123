package edu.zzuli.brand.controller;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.zzuli.brand.pojo.po.Brand;
import edu.zzuli.brand.pojo.po.Category;
import edu.zzuli.brand.pojo.po.Items;
import edu.zzuli.brand.pojo.vo.BrandVo;
import edu.zzuli.brand.pojo.vo.ItemsVo;
import edu.zzuli.brand.pojo.vo.PageBean;
import edu.zzuli.brand.service.CategoryService;
import edu.zzuli.brand.service.ItemsService;

/**
 * 订单controller
 * @author 马明旭
 *
 */
@Controller
@RequestMapping("/items")
public class ItemsController {
	@Resource
	private ItemsService itemsService;
	@Resource
	private CategoryService categoryservice;
	/**
	 * 前台页面添加订单
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/insertItems.action")
	public String insertItems(HttpServletRequest request, Model model)throws Exception{
		Items item = new Items();
		item.setIid(UUID.randomUUID().toString());
		item.setName(request.getParameter("name"));
		item.setFunction(request.getParameter("function"));
		item.setBudget(Double.valueOf(request.getParameter("budget")));
		item.setIcategory("电脑配件"/*request.getParameter("")*/);
		item.setIprotfolio("中文+图形"/*request.getParameter("")*/);
		item.setZishu(request.getParameter("zishu"));
		item.setEc(request.getParameter("ec"));
		item.setYear(request.getParameter("year"));
		item.setContent(request.getParameter("context"));
		item.setLinkman(request.getParameter("linkman"));
		item.setTel(request.getParameter("tel"));
		item.setBid("01");
		item.setCid("01");
		item.setStatus((byte) 0);

		try{
			item.setBudget(Double.valueOf(request.getParameter("budget")));
		}catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "提示信息：预算不是数字");
			return "/items/toWanted.action";
		}
		boolean flag=itemsService.insert(item);
		if(flag==true){
			model.addAttribute("message","添加成功");
			System.out.println("添加成功");
			return "/sucess.jsp";
			
		}else{
			
			model.addAttribute("message","添加失败");
			return "/error.jsp";
			
		}
		
	}
	/**
	 * 后台管理显示 订单items
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/showItems.action")
	public String showItems(HttpServletRequest request, Model model) throws Exception{
		List<Items> items=itemsService.selectItems();
		model.addAttribute("items", items);
		return "../admin/bg_items.jsp";
	}
	/**
	 * 查询订单分页
	 * @author 刘文豪
	 * @param model
	 * @param request
	 * @return
	 * @throws Exception
	 */
	  @RequestMapping("/pshowItems.action")
	   public String pshowItems(Model model,HttpServletRequest request) throws Exception{
		  //查询列表的总数
			ItemsVo itemsVo = new ItemsVo();
		    int total = itemsService.findItemsCount(itemsVo);
			int pc = getPc(request);
		    PageBean<Items> pageQuery = new PageBean<Items>();
		    
		    pageQuery.setPs(5);
		    pageQuery.setPc(pc);
		    pageQuery.setTr(total);
		    itemsVo.setPageBean(pageQuery);
		    List<Items> pb = itemsService.findByPage(itemsVo);
		    pageQuery.setBeanList(pb);
	    	model.addAttribute("pageQuery", pageQuery);
	    	return "/admin/bg_items.jsp";
		}
	 /**
	    * 获取当前页码
	    * @param request
	    * @return
	    */
	   public int getPc(HttpServletRequest request){
	    	String value = request.getParameter("pc");
	    	if(value == null || value.trim().isEmpty()){
	    		return 1;
	    	}
	    	return Integer.parseInt(value);
	    }
	/**
	 * 售出商标 修改status字段
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/SellItem.action")
	public String sellItem(HttpServletRequest request, Model model) throws Exception{
		String iid = request.getParameter("iid");
		Items item = new Items();
		item.setIid(iid);
		int result=itemsService.updateStatus(item);
		
		return "/items/showItems.action";
	}
	
	@RequestMapping("/deleteItem.action")
	public String deleteItem(HttpServletRequest request, Model model) throws Exception{
		String iid=request.getParameter("iid");
		int result = itemsService.deleteByIid(iid);
		
		return "/items/showItems.action";
	}
	/**
	 * 跳转到brand_wanted.jsp
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/toWanted.action")
	public String toWanted(HttpServletRequest request, Model model){
		List<Category> category = categoryservice.findAll();
		model.addAttribute("category",category);
		return "../brand_Wanted.jsp";
	}
}
