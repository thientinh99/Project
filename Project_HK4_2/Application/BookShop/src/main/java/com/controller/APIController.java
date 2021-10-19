package com.controller;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entity.Author;
import com.entity.Book;
import com.entity.Cart;
import com.entity.Category;
import com.entity.Comment;
import com.entity.PublishingCompany;
import com.entity.Role;
import com.entity.User;
import com.service.authorService;
import com.service.bookService;
import com.service.categoryService;
import com.service.commentService;
import com.service.productService;
import com.service.publishingCompanyService;
import com.service.roleService;
import com.service.userService;

@Controller
@RequestMapping("/api/")

@SessionAttributes({ "user", "cart" })
public class APIController {
	@Autowired
	authorService author;
	@Autowired
	userService user;
	@Autowired
	publishingCompanyService publishing;
	@Autowired
	roleService role;
	@Autowired
	categoryService category;
	@Autowired
	productService product;
	@Autowired
	bookService book;
	@Autowired
	commentService comment;

	@GetMapping(path = "LayDanhSachLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần author
	public String LayDanhSachLimit(@RequestParam int start) {
		String html = " ";
		List<Author> list = author.findAll(start);
		for (Author author : list) {
			System.out.print(author.getAge());
			html += "<tr>";
			html += "<td>" + author.getName() + "</td>";
			html += "<td>" + author.getPseudonym() + "</td>";
			html += "<td>" + author.getAge() + "</td>";
			html += "<td>" + author.getDomicile() + "</td>";
			html += "<td> <a href=\"/shopEcommerce/dashboard/author/" + author.getAuthorId()
					+ "\" class=\"btn btn-primary\">Update</a>";
			html += "<a href=\"/shopEcommerce/dashboard/author/delete/" + author.getAuthorId()
					+ "\" class=\"btn btn-secondary\">Delete</a></td>";
			html += "</tr>";
			html += "<tr>";
			html += "<tr>";
		}
		System.out.println(html);
		return html;
	}

	@GetMapping(path = "LayDanhSachUserLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần author
	public String LayDanhSachUserLimit(@RequestParam int start) {
		String html = " ";
		List<User> list = user.findAll(start);
		for (User user : list) {
			html += "<tr>";
			html += "<td>" + user.getUsername() + "</td>";
			html += "<td>" + user.getName() + "</td>";
			html += "<td>" + user.getAge() + "</td>";
			html += "<td>" + user.getAddress() + "</td>";
			if (user.getGender() == false) {
				html += "<td>  FeMale </td>";
			} else {
				html += "<td>  Male </td>";
			}
			html += "<td>" + user.getRoleId().getName() + "</td>";
			if (user.getStatus() == true) {
				html += "<td>Non Disabled</td>";
			} else {
				html += "<td>Disable</td>";
			}
			html += "<td> <a href=\"/shopEcommerce/dashboard/user/updateUser/" + user.getUserId()
					+ "\" class=\"btn btn-primary\">Update</a>";
			html += "<a href=\"/shopEcommerce/dashboard/user/delete/" + user.getUserId()
					+ "\" class=\"btn btn-secondary\">Delete</a></td>";
			html += "</tr>";
		}
		System.out.println(html);
		return html;
	}

	@GetMapping(path = "LayDanhSachPublishingCompanyLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần author
	public String LayDanhSachPublishingCompanyLimit(@RequestParam int start) {
		String html = " ";
		List<PublishingCompany> list = publishing.findAll(start);
		for (PublishingCompany pub : list) {
			html += "<tr>";
			html += "<td>" + pub.getPublishingName() + "</td>";
			html += "<td>" + pub.getAddress() + "</td>";
			html += "<td>" + pub.getDescription() + "</td>";
			html += "<td> <a href=\"/shopEcommerce/dashboard/publishingCompany/" + pub.getPublishingId()
					+ "\" class=\"btn btn-primary\">Update</a>";
			html += "<a href=\"/shopEcommerce/dashboard/user/delete/" + pub.getPublishingId()
					+ "\" class=\"btn btn-secondary\">Delete</a></td>";
			html += "</tr>";
			html += "<tr>";
			html += "<tr>";
		}
		System.out.println(html);
		return html;
	}

	@GetMapping(path = "LayDanhSachRoleLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần author
	public String LayDanhSachRoleLimit(@RequestParam int start) {
		String html = " ";
		List<Role> list = role.findAll(start);
		for (Role role : list) {
			html += "<tr>";
			html += "<td>" + role.getName() + "</td>";
			html += "<td>" + role.getStatus() + "</td>";

			html += "</tr>";
		}
		System.out.println(html);
		return html;
	}

	@GetMapping(path = "LayDanhSachCategoryLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần author
	public String LayDanhSachCategoryLimit(@RequestParam int start) {
		String html = " ";
		List<Category> list = category.findAll(start);
		for (Category cat : list) {
			html += "<tr>";
			html += "<td>" + cat.getName() + "</td>";
			html += "<td>" + cat.getStatus() + "</td>";
			html += "<td>" + cat.getDescription() + "</td>";
			html += "<td> <a href=\"/shopEcommerce/dashboard/category/" + cat.getCategoryId()
					+ "\" class=\"btn btn-primary\">Update</a>";
			html += "<a href=\"/shopEcommerce/dashboard/category/delete/" + cat.getCategoryId()
					+ "\" class=\"btn btn-secondary\">Delete</a></td>";

			html += "</tr>";
		}
		System.out.println(html);
		return html;
	}

	@GetMapping(path = "LayDanhSachProuctLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần Product
	public String LayDanhSachProuctLimit(@RequestParam int start) {
		String html = " ";
		List<Book> list = product.findAll(start);
		for (Book book : list) {
			if (book.getCategoryId().getStatus() == true) {

				html += "<li class=\"product-item col-lg-3 col-md-3 col-sm-4 col-xs-6\">";
				html += "<div class=\"contain-product layout-default\">";
				html += "	<div class=\"product-thumb\">";
				html += "<a href=\"/shopEcommerce/product/" + book.getBookId() + "\" class=\"link-to-product\">";
				html += "	<img id=\"bookImage\" src=\"/shopEcommerce/resources/uploads/book/" + book.getImage()
						+ "\" alt=\"\" width=\"270\" height=\"270\" class=\"product-thumnail\"></a>";
				html += "</div>";
				html += "<div class=\"info\">";
				html += "<b class=\"categories\">" + book.getCategoryId().getName() + "</b>";
				html += "<h4 class=\"product-title\">";
				html += "<a href=\"#\" id=\"bookName\" class=\"pr-name\">" + book.getName() + "</a>";
				html += "</h4>";
				html += "<div class=\"price\">";
				html += "	<ins>";
				html += "<span id=\"bookPrice\" class=\"price-amount\"data-value=\"" + book.getPrice()
						+ "\"><span class=\"currencySymbol\">£</span>" + book.getPrice() + "</span>";
				html += "</ins>";
				html += "</div>";
				html += "<div class=\"slide-down-box\">";
				html += "<p class=\"message\">All products are carefully selected\r\n"
						+ "							to ensure food safety.</p>";
				html += "	<div class=\"buttons\">";
				html += "<a href=\"#\" class=\"btn wishlist-btn\">";
				html += "<i class=\"fa fa-heart\" aria-hidden=\"true\"></i></a> <a href=\"#\"\r\n"
						+ "								class=\"btn add-to-cart-btn\">";
				html += "	<i\r\n"
						+ "								class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i>add\r\n"
						+ "								to cart</a> <a href=\"#\" class=\"btn compare-btn\">";
				html += "<i class=\"fa fa-random\" aria-hidden=\"true\"></i></a>";
				html += "</div>";
				html += "</div>";
				html += "</div>";
				html += "</div>";
			}
		}
		System.out.println(html);
		return html;
	}

	@GetMapping("addToCart")
	@ResponseBody
	public void addToCard(@RequestParam int bookId, @RequestParam String bookName, @RequestParam String image,
			@RequestParam int number, @RequestParam float price, HttpSession httpSession) {

		if (null == httpSession.getAttribute("cart")) {
			List<Cart> carts = new ArrayList<>();
			Cart cart = new Cart();
			cart.setBookId(bookId);
			cart.setBookName(bookName);
			cart.setNumber(number);
			cart.setPrice(price);
			cart.setImage(image);

			carts.add(cart);
			httpSession.setAttribute("cart", carts);
			List<Cart> listCart = (List<Cart>) httpSession.getAttribute("cart");
		} else {
			List<Cart> listCart = (List<Cart>) httpSession.getAttribute("cart");
			int position = checkBookExitsInCart(listCart, httpSession, bookId);
			if (position == -1) {

				Cart cart = new Cart();
				cart.setBookId(bookId);
				cart.setBookName(bookName);
				cart.setNumber(number);
				cart.setPrice(price);
				cart.setImage(image);

				listCart.add(cart);
			} else {
				int newNumber = listCart.get(position).getNumber() + 1;
				listCart.get(position).setNumber(newNumber);
			}
		}

	}

	@GetMapping(path = "LayDanhSachBookLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần author
	public String LayDanhSachBookLimit(@RequestParam int start) {
		String html = " ";
		List<Book> list = book.findAll(start);
		for (Book book : list) {
			html += "<tr>";
			html += "<td>" + book.getName() + "</td>";
			html += "<td width=\"180px\"><img src=\"/resources/uploads/book/" + book.getImage()
					+ "\"/>' class=\"card-img-top\"  style=\"width: 60%\" /></td>";
			html += "<td>" + book.getPrice() + "</td>";
			html += "<td>" + book.getNumber() + "</td>";
			html += "<td>" + book.getPublishingYear() + "</td>";
			html += "<td>" + book.getCategoryId().getName() + "</td>";
			html += "<td>" + book.getAuthorId().getName() + "</td>";
			html += "<td>" + book.getPublishingId().getPublishingName() + "</td>";
			html += "<td> <a href=\"/shopEcommerce/dashboard/book/" + book.getBookId()
					+ "\" class=\"btn btn-primary\">Update</a>";
			html += "<a href=\"/shopEcommerce/dashboard/book/delete/" + book.getBookId()
					+ "\" class=\"btn btn-secondary\">Delete</a></td>";

			html += "</tr>";
		}
		System.out.println(html);
		return html;
	}

	// Comment bằng ajax
	@PostMapping(path = "/CommentBookDetails/", produces = "text/plain; charset=utf-8")
	@ResponseBody
	public String CommentBookDetails(@RequestParam String content, @RequestParam int bookId, @RequestParam int userId) {
		String html = "";
		Comment commentobj = new Comment();
		User userobj = new User();
		Book bookobj = new Book();
		commentobj.setContent(content);
		userobj.setUserId(userId);
		commentobj.setUserId(userobj);
		bookobj.setBookId(bookId);
		commentobj.setBookId(bookobj);
		comment.save(commentobj);
		List<Comment> list = comment.findById(commentobj.getBookId().getBookId());
		for (Comment cmt : list) {
			html+="<div class=\"comment-content col-lg col-md col-sm col-xs-12\">";
			html+="<p class=\"comment-in\">";
			html+="<span class=\"post-name\">"+cmt.getUserId().getName()+"</span>";
			html+="</p>";
			html+="<p class=\"comment-text\">"+cmt.getContent()+"</p>";
			html+="</div>";
		}

		return html;
	}
	@GetMapping(path = "LayDanhSachCommentLimit", produces = "text/plain; charset=utf-8")
	@ResponseBody
	// phân trang phần author
	public String LayDanhSachCommentLimit(@RequestParam int start) {
		String html = " ";
		List<Comment> list = comment.findAll(start);
		for (Comment comment : list) {
			html += "<tr>";
			html += "<td>" + comment.getUserId().getName() + "</td>";
			html += "<td>" + comment.getBookId().getName() + "</td>";
			html += "<td> <a href=\"/shopEcommerce/dashboard/comment/" + comment.getCmtId()
					+ "\" class=\"btn btn-primary\">Details</a>";
			html += "</tr>";
		}
		System.out.println(html);
		return html;
	}
	private int checkBookExitsInCart(List<Cart> listCart, HttpSession httpSession, int bookId) {

		/* if (httpSession.getAttribute("cart") == null) { */
		for (int i = 0; i < listCart.size(); i++) {
			if (listCart.get(i).getBookId() == bookId) {
				return i;
			}
		}
		/* } */
		return -1;

	}

	@GetMapping("NumberOfCart")
	@ResponseBody
	public String NumberOfCart(HttpSession session) {
		if (null != session.getAttribute("cart")) {
			List<Cart> list = (List<Cart>) session.getAttribute("cart");
			return list.size() + "";
		}
		return "";
	}
}
