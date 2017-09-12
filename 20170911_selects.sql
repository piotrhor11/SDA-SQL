#SELECT * FROM bookstore.books ORDER BY title;


### Do poprawy :(
#SELECT * FROM bookstore.books WHERE price=MAX(price);



### advanced SELECTs from two or three tables

### Zad1
SELECT c.customerName, c.CustomerSurname, o.idorder, o.orderdate
FROM customers AS c, orders AS o
WHERE o.idcustomer=c.idcustomer;

### Zad2
SELECT c.customerName, c.customerSurname
FROM customers AS c, orders AS o
WHERE o.idbook = 1 AND c.idcustomer=o.idcustomer;

### Zad3
SELECT b.authorName, b.authorSurname, b.title
FROM customers AS c, orders AS o, books AS b
WHERE c.customerName='Julian' 
AND c.customerSurname='!'
AND c.idcustomer=o.idcustomer
AND o.idbook=b.idbook;

### Zad4
SELECT c.customerName, c.customerSurname, o.idorder, o.orderdate, o.status, b.title
FROM customers AS c, orders AS o, books AS b
WHERE c.customerSurname='M.'
AND c.idcustomer = o.idcustomer
AND o.idbook = b.idbook
ORDER BY o.orderdate ASC;

### Zad samochody!!!