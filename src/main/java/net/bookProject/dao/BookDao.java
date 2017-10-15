package net.bookProject.dao;

import net.bookProject.model.Book;

import java.util.List;

public interface BookDao {

     void saveBook(Book book);

    Book getBookById(int id);

    List<Book> getAllBooks();

    List<Book> getBookByYear(int year, String prefix);

    List<Book> getReadOrNotReadBooks(boolean read);

    void updateBook(Book book);

    void removeBook(int id);
}
