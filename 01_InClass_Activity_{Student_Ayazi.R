#' Author: {Amir Ayazi}  
#' Date Created: 01/16/2025
#' This R script demonstrates handling data in R, various data structures  
#' available, and demonstrate vector operations    

# Creating vectors ----
# Q1. Create a vector named numbers containing the integers from 1 to 20.
numbers <- 1:20

# Q2. Create a vector named names containing the following names: "Alice", "Bob", "Charlie", "David", "Emily".
names <- c("Alice", "Bob", "Charlie", "David", "Emily")

# Q3. Create a vector named mixed_data containing the following values: 10, "hello", TRUE, 3.14, 5i.
mixed_data <- c(10, "hello", TRUE, 3.14, 5i)

# Q4. Access the fourth element of the names vector created in Q2. 
fourth_name <- names[4]

# Q5. Change the third element of the numbers vector created in Q1 to 30.
numbers[3] <- 30

# Creating Lists (Uses the objects created from questions Q1 to Q5) ----  
# Q6. Create a list named my_list containing the following elements:  
#         the vector numbers, the number 100, and the logical value TRUE.
my_list <- list(numbers = numbers, value = 100, flag = TRUE)

# Q7. Access the first element of the my_list list.
first_element <- my_list[[1]]

# Q8. Add a new element to the my_list list: the vector mixed_data from Q3.
my_list$mixed_data <- mixed_data

# Creating Matrices ----  
# Q9. Create a 4x3 matrix named my_matrix with values ranging from 1 to 12, filled by column.
my_matrix <- matrix(1:12, nrow = 4, ncol = 3, byrow = FALSE)

# Q10. Create a 3x3 matrix named identity_matrix with 1s on the diagonal and 0s elsewhere.
identity_matrix <- diag(3)

# Q11. Extract the second column of the my_matrix matrix.
second_column <- my_matrix[, 2]

# Q12. Calculate the determinant of the identity_matrix.
identity_det <- det(identity_matrix)

# Creating Arrays ---- 
# Q13. Create a 2x3x4 array named my_array with random values between 0 and 50.  
my_array <- array(sample(0:50, 24, replace = F), dim = c(2, 3, 4))

# Q14. Access the element in the first row, second column, and third level of the my_array array.
array_element <- my_array[1, 2, 3]

# Working with Factors ---- 
# Q15. Create a factor named education_level with levels "High School", "Bachelor's", "Master's",  
#       and values c("Bachelor's", "Master's", "High School", "Bachelor's").
education_level <- factor(c("Bachelor's", "Master's", "High School", "Bachelor's"), 
                          levels = c("High School", "Bachelor's", "Master's"))


# Q16. Convert the character vector weekdays <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Mon", "Wed") into a factor.
weekdays <- factor(c("Mon", "Tue", "Wed", "Thu", "Fri", "Mon", "Wed"))

# Q17. Print the levels of the education_level factor.
education_levels <- levels(education_level)

# Creating Data frames. ---- 
# Q18. Create a data frame named employees with columns "name", "salary", and "department", 
#       containing the following data:
#         name: c("Alice", "Bob", "Charlie", "David")
#         salary: c(60000, 75000, 80000, 65000)
#         department: c("HR", "Finance", "Marketing", "IT")

employees <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David"),
  salary = c(60000, 75000, 80000, 65000),
  department = c("HR", "Finance", "Marketing", "IT")
)

# Q19. Access the "salary" column of the employees data frame.
salary_column <- employees$salary


# Q20. Add a new column named "start_date" to the employees data frame, 
#      with values c("2022-01-15", "2021-05-10", "2023-03-20", "2022-08-01").
employees$start_date <- c("2022-01-15", "2021-05-10", "2023-03-20", "2022-08-01")


# Q21. Select rows where the "salary" is greater than 70000 in the employees data frame.
high_salary <- subset(employees, salary > 70000)

# Q22.  You have a vector of sales figures for a year. Calculate the total sales for the year.
sales <- c(1000, 2000, 1500, 3000, 2500, 2800, 2200, 2400, 2700, 3200, 2900, 3100)
total_sales <- sum(sales)

# Q23.  Using the same sales vector, calculate the average monthly sales.
average_sales <- mean(sales)


# Q24. You have a data frame with product names and prices.  
#      Create a new column that calculates a 10% discount on each price.
products <- data.frame(product = c("A", "B", "C", "D"),
                       price = c(10, 20, 30, 40))
products$discounted_price <- products$price * 0.9


# Q25. Create a named vector with the following fruit prices:
#        Apple = 0.75, Banana = 0.50, Orange = 0.60, Grape = 1.20
fruit_prices <- c(Apple = 0.75, Banana = 0.50, Orange = 0.60, Grape = 1.20)
 
# Q26. Extract the price of "Orange" from the fruit_prices vector.
orange_price <- fruit_prices["Orange"]

# Q27. Create a list named inventory containing the following:
#       * A vector of product IDs: 101, 102, 103
#       * A vector of product names: "Shirt", "Pants", "Shoes"
#       * A vector of quantities in stock: 50, 30, 25
inventory <- list(
  product_ids = c(101, 102, 103),
  product_names = c("Shirt", "Pants", "Shoes"),
  quantities = c(50, 30, 25)
)

# Q28. Access the "quantities in stock" vector from the inventory list.
quantities_in_stock <- inventory$quantities

# Q29. Create a matrix named sales_data with the following data, filled by row:
#       * Week 1:  120, 150, 135
#       * Week 2:  110, 160, 140
#       * Week 3:  130, 145, 155
#       (This represents sales of 3 different products over 3 weeks)
sales_data <- matrix(
  c(120, 150, 135, 110, 160, 140, 130, 145, 155), 
  nrow = 3, 
  byrow = TRUE
)

# Adding row and column names for clarity
rownames(sales_data) <- c("Week 1", "Week 2", "Week 3")
colnames(sales_data) <- c("Product 1", "Product 2", "Product 3")



# Q30. You have a data frame with customer purchase history. 
#      Find the customer who spent the most money.
customer_data <- data.frame(
    customer_id = c(1, 2, 3, 4, 5, 6, 7, 8),
    purchase_amount = c(150, 200, 120, 180, 310, 160, 280, 250)
)
max_spender <- customer_data[which.max(customer_data$purchase_amount), ]
