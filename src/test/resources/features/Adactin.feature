Feature:
             Validate AdactinBooking System
Scenario Outline: 
              Complete booking session of the hotel and validate the next page
  Given To launch the Url
  And Validate the homepage
  When Enter the "<username>" and "<password>"
  Then Click the login Button
  Then Enter the booking fields such as "<location>", "<hotels>", "<roomtype>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adults>", "<children>"
  And Validate that we enter into next page
  Then Click the Continue Button
  And Successfully Validate the Select Hotel
  Then Enter the Payment Details "<Firstname>", "<Lastname>", "<billingAddress>", "<cardNumber>", "<cardType>", "<expMonth>", "<expYear>", "<cvv>" for booking
  Then Click the Book Now Button
  And Successfully Validate the Booking
  Then Validate the orderid
Examples:
    | username | password | location | hotels      | roomtype | numberofrooms | checkindate | checkoutdate | adults  | children | Firstname        | Lastname   | billingAddress | cardNumber       | cardType | expMonth | expYear | cvv |
    | dhiyazhini11 | priya21   | Sydney   | Hotel Creek | Standard | 1 - One       | 11/09/2026  | 12/09/2026   | 2 - Two | 1 - One  | Priyanka     | Krishnan  | Chennai        | 1234567890987456 | VISA     | March| 2029    | 987|
Scenario Outline: 
                Login without username and validate the exception

  Given To launch the Url
  And Validate the homepage
  When Enter the "<username>" and "<password>"
  Then Click the login Button
  And Validate the username exception message

  Examples:
    | username | password |
    |          | priya21   |
Scenario Outline: 
                Booking without location and validate exception

  Given To launch the Url
  And Validate the homepage
  When Enter the "<username>" and "<password>"
  Then Click the login Button
  And Enter the booking fields such as "<location>", "<hotels>", "<roomtype>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adults>", "<children>"
  And Click the Search Button
  Then Validate the location exception message

  Examples:
    | username | password | location | hotels      | roomtype | numberofrooms | checkindate | checkoutdate | adults  | children |
    | dhiyazhini11 | priya21   |          | Hotel Creek | Standard | 1 - One       | 11/09/2026  | 12/09/2026   | 2 - Two | 1 - One  |
 Scenario Outline:
               Payment without CVV and validate exception

  Given To launch the Url
  And Validate the homepage
  When Enter the "<username>" and "<password>"
  Then Click the login Button
  And Enter the booking fields such as "<location>", "<hotels>", "<roomtype>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adults>", "<children>"
  And Validate that we enter into next page
  Then Click the Continue Button
  And Successfully Validate the Select Hotel
  Then Enter the Payment Details "<Firstname>", "<Lastname>", "<billingAddress>", "<cardNumber>", "<cardType>", "<expMonth>", "<expYear>", "<cvv>" for booking
  Then Click the Book Now Button
  And Validate the CVV exception message

  Examples:
    | username | password | location | hotels      | roomtype | numberofrooms | checkindate | checkoutdate | adults  | children | Firstname | Lastname | billingAddress | cardNumber       | cardType | expMonth | expYear | cvv |
    | dhiyazhini11 | priya21   | Sydney   | Hotel Creek | Standard | 1 - One       | 11/09/2026  | 12/09/2026   | 2 - Two | 1 - One  | Priyanka| Krishnan  | Chennai        | 1234567890987456 | VISA     | March  | 2029    |  |

Scenario Outline: 
               Complete the booking and store the Order ID in a List

  Given To launch the Url
  And Validate the homepage
  When Enter the "<username>" and "<password>"
  Then Click the login Button
  And Enter the booking fields such as "<location>", "<hotels>", "<roomtype>", "<numberofrooms>", "<checkindate>", "<checkoutdate>", "<adults>", "<children>"
  And Validate that we enter into next page
  Then Click the Continue Button
  And Successfully Validate the Select Hotel
  Then Enter the Payment Details "<Firstname>", "<Lastname>", "<billingAddress>", "<cardNumber>", "<cardType>", "<expMonth>", "<expYear>", "<cvv>" for booking
  Then Click the Book Now Button
  And Successfully Validate the Booking
  Then Get the Order ID and store it in a List

  Examples:
    | username | password | location | hotels      | roomtype | numberofrooms | checkindate | checkoutdate | adults  | children | Firstname | Lastname | billingAddress | cardNumber       | cardType | expMonth | expYear | cvv |
    | dhiyazhini11 | priya21   | Sydney   | Hotel Creek | Standard | 1 - One       | 11/09/2026  | 12/09/2026   | 2 - Two | 1 - One  | Priyanka     | Krishnan  | Chennai        | 1234567890987456 | VISA     | March  | 2029    | 987 |