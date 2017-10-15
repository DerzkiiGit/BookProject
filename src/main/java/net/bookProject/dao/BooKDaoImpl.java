package net.bookProject.dao;

import net.bookProject.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;


import java.util.List;
@Repository
public class BooKDaoImpl implements BookDao {

   private SessionFactory sessionFactory;


    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveBook(Book book) {
        sessionFactory.getCurrentSession().persist(book);
    }

    public Book getBookById(int id) {
        Book book= sessionFactory.getCurrentSession().load(Book.class,new Integer(id));
        return book;
    }

    public List<Book> getAllBooks() {
        List<Book> books = sessionFactory.getCurrentSession().createQuery("From Book").getResultList();
        return books;
    }

    public List<Book> getBookByYear(int year, String prefix) {
        Session session = sessionFactory.getCurrentSession();
        List<Book> books;
        Query bookQuery;
        if(prefix.equals("before")){
            bookQuery = session.createQuery("From Book b where b.printyear< :year");
        }else if(prefix.equals("after")){
            bookQuery = session.createQuery("From Book b where b.printyear> :year");
        }else {
            bookQuery = session.createQuery("From Book b where b.printyear= :year");
        }
       bookQuery.setParameter("year",year);
        books=bookQuery.getResultList();
        return books;
    }

    public List<Book> getReadOrNotReadBooks(boolean read) {
        Session session = sessionFactory.getCurrentSession();
        Query bookQuery = session.createQuery("From Book b where b.read= :isread");
        bookQuery.setParameter("isread",read);
        return bookQuery.getResultList();
    }

    public void updateBook(Book book) {
        sessionFactory.getCurrentSession().update(book);
    }

    public void removeBook(int id) {
        Session session = sessionFactory.getCurrentSession();

        Book book = session.load(Book.class,new Integer(id));

        if(book!=null){
            session.delete(book);
        }
    }
}


