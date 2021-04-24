package com.s7it;

public class Book {
       private String category;
       private String author;
       private String title;
       private String avail;
       private int isbn;
       private int year;
       private int price;
       
       public Book(String category, String author, String title, String avail, int isbn, int year, int price ){
    	   this.category=category;
    	   this.author=author;
    	   this.title=title;
    	   this.avail=avail;
    	   this.isbn=isbn;
    	   this.year=year;
    	   this.price=price;
       }
public String getcategory()
{
	return category;
}
public void setcategory(String category)
{
	this.category=category;
}

public String getauthor()
{
	return author;
}
public void setauthor(String author)
{
	this.author=author;
}

public String gettitle()
{
	return title;
}
public void settitle(String title)
{
	this.title=title;
}
public String getavail()
{
	return avail;
}
public void setavail(String avail)
{
	this.avail=avail;
}

public int getisbn()
{
	return isbn;
}
public void setisbn(int isbn)
{
	this.isbn=isbn;
}
public int getyear()
{
	return year;
}
public void setyear(int year)
{
	this.year=year;
}
public int getprice()
{
	return price;
}
public void setprice(int price)
{
	this.price=price;
}

}