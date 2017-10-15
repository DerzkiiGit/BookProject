package net.bookProject.service;


import net.bookProject.dao.BookDao;
import net.bookProject.model.Book;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class BookServiceImpl implements BookService {

   private BookDao bookDao;

    public BookDao getBookDao() {
        return bookDao;
    }

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }
    @Transactional
    public void saveBook(Book book) {
        bookDao.saveBook(book);
    }
    @Transactional
    public Book getBookById(int id) {
        return bookDao.getBookById(id);
    }
    @Transactional
    public List<Book> getAllBooks() {
        return bookDao.getAllBooks();
    }
    @Transactional
    public List<Book> getBookByYear(int year, String prefix) {
        return bookDao.getBookByYear(year,prefix);
    }
    @Transactional
    public List<Book> getReadOrNotReadBooks(boolean read) {
        return bookDao.getReadOrNotReadBooks(read);
    }
    @Transactional
    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }
    @Transactional
    public void removeBook(int id) {
        bookDao.removeBook(id);
    }
}
