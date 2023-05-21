# Shrub Hub - Adlister for Mushrooms, Plants, and Services

Welcome to Shrub Hub, an adlister platform for buying and selling mushrooms, plants, and related services. This README file provides an overview of the project and guides you through its features and implementation details.

## Table of Contents
- [Project Description](#project-description)
- [Features](#features)
- [Database Schema](#database-schema)
- [Code Structure](#code-structure)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)

## Project Description

Shrub Hub is a web application that allows users to create and browse ads for mushrooms, plants, and services related to gardening and landscaping. Users can create an account, post ads, search for ads, view ad details, update their profile information, and perform various other actions related to ad management.

## Features

1. Ad Details Page:
    - Displays all information about an individual ad, including ad details and the user who posted the ad.
    - Links to the ad details page are available on the ads index page.

2. Search Functionality:
    - Allows users to search for ads based on specified criteria.
    - Enables users to find relevant ads quickly and easily.

3. User Profile:
    - Users can view their profile page, which displays all the ads they have created.
    - Provides a convenient way for users to manage and track their ads.

4. Unique Usernames:
    - Enforces uniqueness for usernames in the user table of the database.
    - Prevents the creation of new accounts with existing usernames.

5. Code Refactoring:
    - Identifies duplicated code in the ads DAO and users DAO.
    - Creates an abstraction to eliminate code redundancy and improve maintainability.

6. Dynamic Navbar:
    - Shows different links in the navigation bar based on whether a user is logged in or out.
    - Enhances user experience and navigation based on authentication status.

7. Ad Update and Deletion:
    - Allows users to update and delete their ads.
    - Implements backend logic to reflect changes in the database.

8. Profile Information Update:
    - Enables users to update their profile information, such as username, email, or password.
    - Ensures user data is up-to-date and customizable.

9. Data Validation:
    - Validates user input data to ensure its correctness and integrity before saving it to the database.
    - Implements validation classes to handle data validation effectively.

10. Error Messages:
    - Displays meaningful error messages to users when they perform actions that violate constraints or requirements.
    - Improves user experience and helps users understand and resolve issues effectively.

11. Sticky Forms:
    - Retains the user's input values in the form after a failed submission due to validation errors.
    - Prevents data loss and provides a seamless user experience.

12. Ad Categories:
    - Introduces a categories table to establish a many-to-many relationship between ads and categories.
    - Allows users to associate ads with multiple categories and search ads by category.

13. Intended Redirects:
    - Redirects users to the page they were trying to access after successful login, instead of the default profile page.
    - Enhances user flow and reduces unnecessary navigation steps.

## Database Schema

The database schema for Shrub Hub consists of the following tables:

- **users**: Stores user information, including username, email, and password.
- **ads**: Contains ad details, such as title, description, price, and user ID.
- **categories**: Represents ad categories and their associated information.



## Technologies Used

Shrub Hub is built using the following technologies and frameworks:

- Frontend:
    - HTML
    - CSS
    - Bootstrap (optional)

- Backend:
    - Java
    - MySQL or any other compatible database
    - 
## Contributing

Contributions to Shrub Hub are welcome! If you find any issues or have suggestions for improvements, please feel free to create a pull request or submit an issue on the project's repository.
