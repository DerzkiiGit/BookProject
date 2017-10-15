package net.bookProject.controller;


import net.bookProject.model.Book;
import net.bookProject.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class BookController {

   private BookService bookService;

    public BookService getBookService() {
        return bookService;
    }
    @Autowired
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }
    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String getBooks(@RequestParam(name = "page", defaultValue = "0")int page,
                           @RequestParam(name = "search", defaultValue = "")String search,
                           Model model){
        PagedListHolder<Book> bookPagedListHolder;

        if (search.equals("true")){
            model.addAttribute("search","true");
            bookPagedListHolder = new PagedListHolder<Book>(bookService.getReadOrNotReadBooks(true));
        }else if (search.equals("false")){
            model.addAttribute("search","false");
            bookPagedListHolder = new PagedListHolder<Book>(bookService.getReadOrNotReadBooks(false));

        }else {
            model.addAttribute("search","");
            bookPagedListHolder = new PagedListHolder<Book>(bookService.getAllBooks());
        }

        bookPagedListHolder.setPageSize(10);
        if(bookPagedListHolder.getPageCount()<page){
            bookPagedListHolder.setPage(bookPagedListHolder.getPageCount()-1);
            page=bookPagedListHolder.getPageCount()-1;
        }else{
            bookPagedListHolder.setPage(page);
        }
        model.addAttribute("books",bookPagedListHolder.getPageList());
        model.addAttribute("pageCount",bookPagedListHolder.getPageCount());
        model.addAttribute("currentPage",page);
        return "booksPage";
    }

    @RequestMapping(value = "/books/getForm")
    public String getForm(Model model){

        model.addAttribute("book", new Book());

        return "bookView";
    }

    @RequestMapping(value = "/books/edit/{id}")
    public String editUser(@PathVariable(value = "id")int id,
                           Model model){

        Book book = bookService.getBookById(id);

        if(book!=null){
            model.addAttribute("book",book);
        }else{
            model.addAttribute("book",new Book());
        }

        return "bookView";
    }

    @RequestMapping(value = "/books/delete/{id}")
    public String deleteUser(@PathVariable(value = "id")int id,
                             RedirectAttributes ra,
                             @RequestParam(value = "page", defaultValue = "0")int page,
                             @RequestParam(name = "search", defaultValue = "")String search
    ){

        bookService.removeBook(id);

        if(search.equals("true")||search.equals("false")){
            ra.addAttribute("search",search);
        }

        ra.addAttribute("page", page);


        return "redirect:/books";
    }

    @RequestMapping(value = "/books/save")
    public String saveBook(@ModelAttribute(value = "book")Book book){
        if(book.getId()!=0){
            book.setRead(false);
            bookService.updateBook(book);
        }else{
            bookService.saveBook(book);
        }

        return "redirect:/books";
    }

    @RequestMapping(value = "/books/read/{id}")
    public String readABook(@PathVariable(value = "id")int id,@RequestParam(value = "page", defaultValue = "0")int page,
                            @RequestParam(name="search", defaultValue = "")String search,
                            RedirectAttributes ra){
        Book book = bookService.getBookById(id);
        if(!book.isRead()){
            book.setRead(true);
            bookService.updateBook(book);
        }

        if(search.equals("true")||search.equals("false")){
            ra.addAttribute("search",search);
        }
        ra.addAttribute("page",page);

        return "redirect:/books";
    }

    @RequestMapping(value = "/books/sort")
    public String getBooksByReadField(@RequestParam(value = "search")String search, RedirectAttributes ra){

        if(search.equals("true")){
           ra.addAttribute("search", "true");
        }else if(search.equals("false")){
            ra.addAttribute("search", "false");
        }

        return "redirect:/books";
    }

}
