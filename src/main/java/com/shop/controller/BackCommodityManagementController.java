
package com.shop.controller;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.CategoriesEntity;
import com.shop.entity.ProductEntity;
import com.shop.service.CategoriesService;
import com.shop.service.ProductService;
import com.shop.utils.BaseController;
import com.shop.utils.CurrentPath;
import com.shop.utils.FileUtil;
import com.shop.utils.Req;
import com.shop.utils.ReturnMsg;
import com.shop.utils.UUIDUtil;

@Controller
@RequestMapping("/backCommodityManagement")
public class BackCommodityManagementController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoriesService categoriesService;
	
	@RequestMapping("/index")
	public String index(Model model) {
		List<ProductEntity> findAll = productService.findAll();
		model.addAttribute("findAll", findAll);
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/delete")
	public String delete(Req req,Model model) {
		String ids = req.getIds();
		productService.deleteById(ids);
		List<ProductEntity> findAll = productService.findAll();
		model.addAttribute("findAll", findAll);
		return "backCommodityManagement/backCommodityManagement_index";
	}
	
	@RequestMapping("/update")
	public String update(Req req,Model model) {
		String ids = req.getIds();
		ProductEntity productInfo = productService.findById(ids);
		List<CategoriesEntity> categoriesFindAll = categoriesService.findAll();
		model.addAttribute("productInfo", productInfo);
		model.addAttribute("categoriesFindAll", categoriesFindAll);
		return CurrentPath.getCURRENTPATH();
	}
	
	@RequestMapping("/insert")
	public String insert(Req req,Model model) {
		List<CategoriesEntity> categoriesFindAll = categoriesService.findAll();
		model.addAttribute("categoriesFindAll", categoriesFindAll);
		return CurrentPath.getCURRENTPATH();
	}
	@RequestMapping("/toUpdate")
	@ResponseBody
	public ReturnMsg toUpdate(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException{
		ReturnMsg msg = new ReturnMsg(FAIL);
		String ids = req.getIds();
		ProductEntity findById = productService.findById(ids);
		if(findById==null){
			return msg;
		}
		findById.setProd002(req.getString("prod002"));
		findById.setProd003(req.getString("prod003"));
		findById.setProd004(req.getString("prod004"));
		String prod005 = req.getString("prod005");
		String[] split = findById.getProd005().split("http://127.0.0.1:8081");
		if(prod005!=null) {//表示更新了图片
			String path = "D:"+split[1];
			FileUtil.DeleteFolder(path);//删除旧图片
		}
		findById.setProd005(prod005);
		findById.setProd006(req.getString("prod006"));
		findById.setProd009(req.getString("prod009"));
		findById.setProd010(req.getString("prod010"));
		findById.setProd011(Integer.parseInt(req.getString("prod011")));
		int prod012 = Integer.parseInt(req.getString("prod012"));
		if(prod012==0) {
			findById.setProd007(new Date());
		}
		findById.setProd008(new Date());
		findById.setProd012(prod012);
		String update = productService.update(findById);
		if("SUCCESS".equals(update)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
	
	@RequestMapping("/toInsert")
	@ResponseBody
	public ReturnMsg toInsert(Req req) throws SecurityException, IllegalArgumentException, NoSuchFieldException, IllegalAccessException, InvocationTargetException, ParseException {
		ReturnMsg msg = new ReturnMsg(FAIL);
		ProductEntity entity = new ProductEntity();
		entity.setProd002(req.getString("prod002"));
		entity.setProd003(req.getString("prod003"));
		entity.setProd004(req.getString("prod004"));
		entity.setProd005(req.getString("prod005"));
		entity.setProd006(req.getString("prod006"));
		entity.setProd009(req.getString("prod009"));
		entity.setProd010(req.getString("prod010"));
		entity.setProd011(Integer.parseInt(req.getString("prod011")));
		int prod012 = Integer.parseInt(req.getString("prod012"));
		if(prod012==0) {
			entity.setProd007(new Date());
		}
		entity.setProd001(UUIDUtil.getUUID());
		entity.setProd008(new Date());
		entity.setProd012(prod012);
		String insert = productService.insert(entity);
		if("SUCCESS".equals(insert)) {
			msg.setStatus(SUCCESS);
		}
		return msg;
	}
}
