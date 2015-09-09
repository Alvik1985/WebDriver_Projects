Feature: Add item to cart

  #1
  Scenario: Add item to the cart
    Then Click the category Age
    Then Click the subcategory Big Kids
    Then Pick the 2 item
    Then Add item to cart
    Then Verify that 1 item was added to the cart

  #2
  Scenario: Add 2 item to the cart for category Brand from different subcategories
    Then Click the category Brand
    Then Click the category Avigo
    Then Pick the 1 item
    Then Add item to cart
    Then Navigate back
    Then Navigate back
    Then Click the subcategory Lego
    Then Click the subcategory NEW LEGO
    Then Pick the 1 item
    Then Add item to cart
    Then Verify that 2 item was added to the cart

  #3
  Scenario: Add 2 identical item to the cart for category Clearance
    Then Click the category Clearance
    Then Click the subcategory Electronics
    Then Pick the 1 item
    Then Add item to cart
    Then Add item to cart
    Then Verify that 2 item was added to the cart

  #4
  Scenario: Add 1 item from the category Age and 1 item from the category Brand
    Then Click the category Age
    Then Click the subcategory Big Kids
    Then Pick the 1 item
    Then Add item to cart
    Then Go back to the home page
    Then Click the category Brand
    Then Click the category Avigo
    Then Pick the 1 item
    Then Add item to cart
    Then Verify that 2 item was added to the cart
  #5
    Then Remove item from the Cart

  #6
  Scenario: Add 2 identical items to the cart for category Age SubCategory 5-7 years old
    Then Click the category Age
    Then Click the subcategory 5 - 7 Years old
    Then Pick the 1 item
    Then Add item to cart
    Then Add item to cart
    Then Verify that 2 item was added to the cart

  #7
  Scenario: Add 3-d item to the cart for category Girl's toys 8-11 years old
    Then Click the category Girls' Toys
    Then Click the subcategory 8-11 Years
    Then Pick the 3 item
    Then Add item to cart
    Then Verify that 1 item was added to the cart

  #8
  Scenario: Add 2 item from the category Action Figure
    Then Click the category Clearance
    Then Click the subcategory Action Figures
    Then Pick the 2 item
    Then Add item to cart
    Then Verify that 1 item was added to the cart

  #9
  Scenario: Check navigation to the Weekly Ad page
    Then Click the link Weekly Ad
    Then Verify navigation Weekly Ad

  #10
  Scenario: Check navigation to the Gift Finder
    Then Click the link Gift Finder
    Then Verify navigation Gift Finder