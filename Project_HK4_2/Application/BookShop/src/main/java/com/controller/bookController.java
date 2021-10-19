package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entity.Author;
import com.entity.Book;
import com.entity.Category;
import com.entity.PublishingCompany;
import com.service.authorService;
import com.service.bookService;
import com.service.categoryService;
import com.service.publishingCompanyService;

@Controller
@RequestMapping("/dashboard/book")
public class bookController {
	@Autowired
	bookService bookservice;
	@Autowired
	categoryService categoryserivce;
	@Autowired
	publishingCompanyService pubserivce;
	@Autowired
	authorService authorserivce;

	// vào trang mặt định author
	@GetMapping
	public String Default(ModelMap modelMap) {
		List<Book> list = bookservice.findAll(0);
		List<Book> listfindAll = bookservice.findAll(-1);
		double tongsopage = Math.ceil((double) listfindAll.size() / 4);
		modelMap.addAttribute("list", list);
		modelMap.addAttribute("list1", listfindAll);
		modelMap.addAttribute("tongsopage", tongsopage);
		return "book";
	}

	// vào trang add author
	@GetMapping(value = "/addNewBook")
	public String AddbookGet(ModelMap modelMap) {
		List<Author> listAuthor = authorserivce.findAll(-1);
		modelMap.addAttribute("listAuthor", listAuthor);
		List<Category> listCategory = categoryserivce.findAll(-1);
		modelMap.addAttribute("listCategory", listCategory);
		List<PublishingCompany> listPublishingCompany = pubserivce.findAll(-1);
		modelMap.addAttribute("listPublishingCompany", listPublishingCompany);
		return "AddNewBook";
	}

	@PostMapping(value = "/addNewBook")
	public String AddbookPost(HttpServletRequest request, @RequestParam CommonsMultipartFile[] txtimage,
			@RequestParam String name, @RequestParam float price, @RequestParam int number,
			@RequestParam int categoryid, @RequestParam String description, @RequestParam String publishingYear,
			@RequestParam int authorid, @RequestParam int publishingid, MultipartFile multipartFile, ModelMap modelMap,
			RedirectAttributes redirectAttributes) {
		String saveDirectory = request.getSession().getServletContext().getRealPath("/") + "/resources/uploads/book/";
		System.out.println(saveDirectory);
		List<Book> listfindAll = bookservice.findAll(-1);
		modelMap.addAttribute("list1", listfindAll);
		if (txtimage != null && txtimage.length > 0) {
			for (CommonsMultipartFile aFile : txtimage) {
				Book book = new Book();
				book.setImage(aFile.getOriginalFilename());
				book.setName(name);
				book.setPrice(price);
				book.setNumber(number);
				book.setStatus(true);
				book.setDescription(description);
				book.setPublishingYear(publishingYear);
				Category cat = new Category();
				cat.setCategoryId(categoryid);
				Author au = new Author();
				au.setAuthorId(authorid);
				PublishingCompany pub = new PublishingCompany();
				pub.setpublishingId(publishingid);
				book.setCategoryId(cat);
				book.setPublishingId(pub);
				book.setAuthorId(au);
				if (!aFile.getOriginalFilename().equals("")) {
					try {
						aFile.transferTo(new File(saveDirectory + aFile.getOriginalFilename()));
						bookservice.save(book);
					} catch (IllegalStateException e) {
						redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
						return "redirect:/dashboard/book";
					} catch (IOException e) {
						redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
						return "redirect://dashboard/book";
					} catch (Exception e) {
						redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
						return "redirect:/dashboard/book";
					}
				} else {
					modelMap.addAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
					redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
					return "redirect:/dashboard/book";
				}

			}
		}
		return "redirect:/dashboard/book";
	}

	@GetMapping(value = "/{bookId}")
	public String UpdateBookGet(@PathVariable int bookId, ModelMap modelMap) {
		List<Book> listBook = bookservice.findById(bookId);
		modelMap.addAttribute("listBook", listBook);
		List<Author> listAuthor = authorserivce.findAll(-1);
		modelMap.addAttribute("listAuthor", listAuthor);
		List<Category> listCategory = categoryserivce.findAll(-1);
		modelMap.addAttribute("listCategory", listCategory);
		List<PublishingCompany> listPublishingCompany = pubserivce.findAll(-1);
		modelMap.addAttribute("listPublishingCompany", listPublishingCompany);
		return "UpdateBook";
	}

	@PostMapping(value = "/{bookId}")
	public String UpdateBookPost(@PathVariable int bookId, HttpServletRequest request,
			@RequestParam CommonsMultipartFile[] txtimage, @RequestParam String name, @RequestParam float price,
			@RequestParam int number, @RequestParam int categoryid, @RequestParam String description,
			@RequestParam String publishingYear, @RequestParam int authorid, @RequestParam int publishingid,
			MultipartFile multipartFile, ModelMap modelMap, RedirectAttributes redirectAttributes,
			@RequestParam String txtimageOld) {
			if(txtimage==null && txtimage.length==0){
				Book book = new Book();
				book.setImage(txtimageOld);
				book.setName(name);
				book.setPrice(price);
				book.setNumber(number);
				book.setStatus(true);
				book.setDescription(description);
				book.setPublishingYear(publishingYear);
				Category cat = new Category();
				cat.setCategoryId(categoryid);
				Author au = new Author();
				au.setAuthorId(authorid);
				PublishingCompany pub = new PublishingCompany();
				pub.setpublishingId(publishingid);
				book.setCategoryId(cat);
				book.setPublishingId(pub);
				book.setAuthorId(au);
				
			}
		if (txtimage != null && txtimage.length > 0) {
			String saveDirectory = request.getSession().getServletContext().getRealPath("/")
					+ "/resources/uploads/book/";
			System.out.println(saveDirectory);
			for (CommonsMultipartFile aFile : txtimage) {
				Book book = new Book();
				book.setImage(aFile.getOriginalFilename());
				book.setName(name);
				book.setPrice(price);
				book.setNumber(number);
				book.setStatus(true);
				book.setDescription(description);
				book.setPublishingYear(publishingYear);
				Category cat = new Category();
				cat.setCategoryId(categoryid);
				Author au = new Author();
				au.setAuthorId(authorid);
				PublishingCompany pub = new PublishingCompany();
				pub.setpublishingId(publishingid);
				book.setCategoryId(cat);
				book.setPublishingId(pub);
				book.setAuthorId(au);
				if (!aFile.getOriginalFilename().equals("")) {
					try {
						aFile.transferTo(new File(saveDirectory + aFile.getOriginalFilename()));
						bookservice.update(bookId, name, book.getImage(), price, categoryid, categoryid, number,
								description, publishingid, authorid, publishingid);
					} catch (IllegalStateException e) {
						redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
						return "redirect:/dashboard/book";
					} catch (IOException e) {
						redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
						return "redirect://dashboard/book";
					} catch (Exception e) {
						redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
						return "redirect:/dashboard/book";
					}
				} else {
					modelMap.addAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
					redirectAttributes.addFlashAttribute("message", "Không thể thêm file vui lòng kiểm tra lại");
					return "redirect:/dashboard/book";
				}
			}
		} 
		return "redirect:/dashboard/book";
	}

	// thực hiện chức năng delete author
	@GetMapping(value = "/delete/{bookId}")
	public String DeleteBook(@PathVariable int bookId, RedirectAttributes redirectAttributes) {
		try {
			bookservice.delete(bookId);
			redirectAttributes.addFlashAttribute("messagesuccess", "Delete Successfully");
			return "redirect:/dashboard/book";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Delete Faild");
			return "redirect:/dashboard/book";
		}
	}

}
