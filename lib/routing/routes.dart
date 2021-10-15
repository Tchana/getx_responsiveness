
//login route
const String rootRoute = "/";


const String loginRoute = "/login";
const String loginPageDisplayName = "login";
//signup route
const String signupRoute = "/signup";
const String signupPageDisplayName = "signup";
//getStarted route
const String getStartedRoute = "/get-started";
const String getStartedPageDisplayName = "Get started";
//home route
const String homeRoute = "/home";
const String homePageDisplayName = "home";
//booking routes
const String reservationsRoute = "/reservations";
const String reservationsPageDisplayName = "reservations";
//customer routes
const String allCustomersRoute = "/all-customers";
const String allCustomersPageDisplayName = "customers";
const String createCustomerRoute = "/create-customer";
const String createCustomerPageDisplayName = "create-customer";
const String customerDetailsRoute = "/customer-details";
const String customerDetailsPageDisplayName = "customer-details";
const String editCustomerRoute = "/edit-customer";
const String editCustomerPageDisplayName = "edit-customer";
//dashboard routes
const String dashboardRoute = "/dashboard";
const String dashboardPageDisplayName = "dashboard";
//message routes
const String allMessagesRoute = "/all-messages";
const String allMessagesPageDisplayName = "messages";
const String createMessageRoute = "/create-message";
const String createMessagePageDisplayName = "create-message";
const String messageDetailsRoute = "/message-details";
const String messageDetailsPageDisplayName = "message-details";
const String editMessageRoute = "/edit-message";
const String editMessagePageDisplayName = "edit-message";
//reservation routes
const String allReservationsRoute = "/all-reservations";
const String allReservationsPageDisplayName = "reservations";
const String createReservationRoute = "/create-reservation";
const String createReservationPageDisplayName = "create-reservation";
const String reservationDetailsRoute = "/reservation-details";
const String reservationDetailsPageDisplayName = "reservation-details";
const String editReservationRoute = "/edit-reservation";
const String editReservationPageDisplayName = "edit-reservation";
// inventory routes
const String allInventoriesRoute = "/all-inventories";
const String allInventoriesPageDisplayName = "inventories";
const String createInventoryRoute = "/create-inventory";
const String createInventoryPageDisplayName = "create-inventory";
const String inventoryDetailsRoute = "/inventory-details";
const String inventoryDetailsPageDisplayName = "inventory-details";
const String editInventoryRoute = "/edit-inventory";
const String editInventoryPageDisplayName = "edit-inventory";
// product routes
const String allProductsRoute = "/all-products";
const String allProductsPageDisplayName = "products";
const String createProductRoute = "/create-product";
const String createProductPageDisplayName = "create-product";
const String productDetailsRoute = "/product-details";
const String productDetailsPageDisplayName = "product-details";
const String editProductRoute = "/edit-product";
const String editProductPageDisplayName = "edit-product";
// staff routes
const String allStaffsRoute = "/all-staffs";
const String allStaffsPageDisplayName = "staffs";
const String createStaffRoute = "/create-staff";
const String createStaffPageDisplayName = "create-staff";
const String productStaffRoute = "/staff-details";
const String productStaffPageDisplayName = "staff-details";
const String editStaffRoute = "/edit-staff";
const String editStaffPageDisplayName = "edit-staff";

//notification routes
const String notificationsRoute = "/notifications";
const String notificationsPageDisplayName = "notifications";
const String organisationsRoute = "/organisations";
const String organisationsPageDisplayName = "organisations";
const String settingsRoute = "/settings";
const String settingsPageDisplayName = "settings";


class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}



List<MenuItem> sideMenuItemRoutes = [
  MenuItem(homePageDisplayName, homeRoute),
  MenuItem(allCustomersPageDisplayName, allCustomersRoute),
  MenuItem(dashboardPageDisplayName, dashboardRoute),
  MenuItem(allMessagesPageDisplayName, allMessagesRoute),
  MenuItem(allReservationsPageDisplayName, allReservationsRoute),
  MenuItem(allInventoriesPageDisplayName, allInventoriesRoute),
  MenuItem(allProductsPageDisplayName, allProductsRoute),
  MenuItem(allStaffsPageDisplayName, allStaffsRoute),
  MenuItem(notificationsPageDisplayName, notificationsRoute),
  MenuItem(organisationsPageDisplayName, organisationsRoute),
  MenuItem(settingsPageDisplayName, settingsRoute),
  MenuItem(getStartedPageDisplayName, getStartedRoute),
];