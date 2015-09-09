Feature: Core Smoke test for Opticsplanet desktop site

  Scenario: Check Home page
    Then I wait for element //a[@class='e-header__logo'] to appear
    And I wait for element //a[@class='banner-link'] to appear
    And I wait for element //div[@id='banner-container-inner'] to appear
    And I wait for element //h2[@class='specials-carousel-title'] to appear and contain Best Sellers
    And I wait for element //h2[@class='specials-carousel-title'] to appear and contain Top Rated
    And I wait for element //h2[@class='specials-carousel-title'] to appear and contain On Sale
    And I wait for element //h2[@class='specials-carousel-title'] to appear and contain New Products

  Scenario: Checkout with GC 3G
    Given Search the cheapest item
    Then I Add item to cart
    And I change qty to 3
    And I wait for element //span[@class='cart-items-popup-button-header'] to appear and contain 3
    Then I change qty to 1
    And I wait for element //span[@class='cart-items-popup-button-header'] to appear and contain 1
    Then I click Check Out Now
    Then I set value for //input[@id='op_order_checkout_email'] to email
    And I wait for element //select[@id='shipping-country']/option[1] to appear and contain United States
    And I set value for //input[@id='op_order_checkout_shippingAddress_firstName'] to Alex
    And I set value for //input[@id='op_order_checkout_shippingAddress_lastName'] to Khroniuk
    And I set value for //input[@id='op_order_checkout_shippingAddress_addressOne'] to 1112 Castilian Ct

