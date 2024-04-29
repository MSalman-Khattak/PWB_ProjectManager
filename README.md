Project Overview:

RentNest is an online platform designed to simplify the process of finding short-term accommodations for travelers while enabling hosts to easily rent out their properties. The platform consists of various modules for user authentication, searching for places, managing reservations, and wishlists.

How It Works:

User Authentication:
Users can sign up or log in as guests or hosts.
Guest signup requires basic details like name, email, and phone number.
Host signup requires additional information about the property being listed.
Guest Module:
Search for Places:
Guests can search for places based on location, dates, and number of guests.
Filters such as price range, property type, and amenities are available.
Reserve Place:
After selecting a place, guests can view details and reserve it for their desired dates.
They can add reviews for places they've stayed and manage their wishlists.
Host Module:
Add New Listing:
Hosts can add their properties to the platform by providing detailed information including property type, space type, location, amenities, and pricing.
Manage Listing:
Hosts can update existing listings, add new properties, or remove listings as needed.
They can view reservations, including current, upcoming, and past reservations.
Approve/Reject Reservations:
Hosts have the option to approve or reject reservation requests from guests.
Reservation Management:
Both guests and hosts can view and manage reservations.
Guests can see the status of their reservations and receive notifications upon approval or rejection.
Hosts can manage reservations for their properties, approve or reject requests, and view details of upcoming and past reservations.
Technical Implementation:

The project is implemented using Python for backend operations and JavaScript for frontend interactions.
Jupyter Notebooks (.ipynb files) are used for different modules and functionalities.
JavaScript files handle client-side scripting for user authentication, form submissions, and dynamic page interactions.
Server.js manages the server-side operations, while database.js interacts with the database for storing and retrieving data.
Package.js manages dependencies, and authentication.js handles user authentication using JWT tokens.
Future Enhancements:

Integration of a payment gateway for handling transactions.
Enhanced search functionality with advanced filters and sorting options.
Implementing a messaging system for communication between guests and hosts.
Adding support for multiple languages and currencies to cater to a global audience.



## Project Structure

- guest-log-in.ipynb: Jupyter Notebook for guest login functionality.
- Guest-Module-1.ipynb: Jupyter Notebook for the first part of the guest module.
- Guest-Module-2.ipynb: Jupyter Notebook for the second part of the guest module.
- guest-sign-up.ipynb: Jupyter Notebook for guest signup functionality.
- home-page.ipynb: Jupyter Notebook for the homepage.
- host-module.ipynb: Jupyter Notebook for the host module.
- reservations.ipynb: Jupyter Notebook for managing reservations.
- user-log-in.ipynb: Jupyter Notebook for user login functionality.
- user-sign-up.ipynb: Jupyter Notebook for user signup functionality.
- wishlist.ipynb: Jupyter Notebook for managing wishlists.

### JavaScript Files

- authentication.js: Handles user authentication.
- package.js: Manages packages and dependencies.
- server.js: Server-side scripting.
- jquery.js: jQuery library for DOM manipulation.
- database.js: Manages database operations.
- userSignup.js: JavaScript file for user signup functionality.
- guestsignup.js: JavaScript file for guest signup functionality.
- hostapartment.js: JavaScript file for hosting apartments.

## Usage

1. Clone the repository: `git clone <repository-url>`
2. Navigate to the project directory: `cd RentNest`
3. Open the respective Jupyter Notebooks for desired functionality.
4. Execute the JavaScript files as needed.

## Contributing

Contributions are welcome! Please follow the guidelines:
- Fork the repository
- Create your feature branch: `git checkout -b feature-name`
- Commit your changes: `git commit -am 'Add some feature'`
- Push to the branch: `git push origin feature-name`
- Submit a pull request
