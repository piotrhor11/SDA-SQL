USE bookstore;

### Zad slajd 52
#UPDATE customers SET customerSurname='Objektowski' WHERE idcustomer=1;

### Zad slajd 55
#UPDATE customers SET idcustomer=1 WHERE idcustomer=3;

### Zad slajd 58
#UPDATE books SET price=ROUND(price*1.1,2); 

### Zad - najdroższa książka
#SELECT * FROM books ORDER BY price DESC LIMIT 1;
#SELECT * FROM books WHERE price=(SELECT MAX(price) FROM books);
## Powyższe SELECTy są podstawą do naszego UPDATE'u [uwaga: SELECT z MAX może zwrócić kilka waratości] 
#UPDATE books SET price=price-10 ORDER BY price DESC LIMIT 1;
##SELECT * FROM books;

### Zad slajd 64
#UPDATE customers SET customerName='Joanna', customerSurname='Dostojewska' WHERE idcustomer=2; 
##SELECT * FROM customers;

### Zad slajd 65
#UPDATE orders SET status='Przygotowane do wysyłki' WHERE idorder=1 OR idorder=3;
##SELECT * FROM orders;

### Zad slajd 67
#INSERT INTO customers VALUES (NULL, "Franciszek", "Janowski", "Chorzów");
##SELECT * FROM customers;

### Zad slajd 69
#SELECT idcustomer FROM customers WHERE customerSurname="Janowski" AND customerName="Franciszek";
#SELECT idbook FROM books WHERE title="JAVA pełna tajemnic";
## Powyżej SELECTy do znalezienia idbook i idcustomer, które są potrzebne do INESRTU
## NOW
#INSERT INTO orders VALUES (
#NULL, 
#(SELECT idcustomer FROM customers WHERE customerSurname="Janowski" AND customerName="Franciszek"),
#(SELECT idbook FROM books WHERE title="JAVA pełna tajemnic"),
#NOW(),
#"Zamówione");

### Zad slajd 72
INSERT INTO books VALUES(NULL, " ", "Grębosz", "Symfonia C++", 0);