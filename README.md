<h1 align="start">🛒 GreenMart</h1>

<h3 align="start">Complete UI, Navigation & Validation Demo</h3>

<p align="start">
A modern Flutter demo application that showcases a full shopping app UI experience including authentication flow, form validation, OTP verification, and multi-screen navigation.
</p>

<p align="start">
Built with clean, responsive, and reusable UI components — without backend integration.
</p>

---

## 🖼️ Screenshots

<div align="center" style="display:flex; flex-wrap:wrap; gap:12px; justify-content:center;">

<img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-09%20133653.png" width="250">

<img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-22%20170837.png" width="250">

<img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-09%20133720.png" width="250">

<img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20134805.png" width="250">

<img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20134928.png" width="250">

<img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20135000.png" width="250">

<img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20135035.png" width="250">

</div>

---

## 🚀 Features

✔ Splash & Welcome screens (UI only)
✔ Login & Registration forms with full validation
✔ Mobile number verification flow
✔ OTP input using **Pinput** package
✔ Smooth navigation between screens
✔ Reusable custom UI components
✔ Clean and responsive Material UI
✔ Product browsing and detailed views
✔ Cart management & checkout flow
✔ Order confirmation UI
✔ Search and filtering interfaces
✔ Multiple home and discovery screens


---

## 📱 App Screens

### 🔹 WelcomeScreen

Introductory UI displayed before authentication.

### 🔹 LoginScreen

* Email & password inputs
* Input validation for empty or invalid fields

### 🔹 RegisterScreen

* User registration form
* Custom reusable text fields
* Complete form validation

### 🔹 VerifyMobileScreen

* Enter mobile number
* Validation before OTP request

### 🔹 VerifyCodeScreen

* OTP input using **Pinput widget**
* Input validation
* onCompleted callback navigation

---

### 🔹 HomeScreen

Main shopping feed displaying products and categories.

### 🔹 FollowHomeScreen

Shows updates from followed stores or products.

### 🔹 SearchScreen

Search bar with suggestions and results UI.

### 🔹 FilteredSearchScreen

Displays filtered search results with sorting options.

### 🔹 ExploreScreen

Discover new products, categories, and offers.

### 🔹 FruitsScreen

Grid/list view of fruit products with interactive UI.

### 🔹 DetailScreen

Product details including:

* Image
* Description
* Price
* Add to Cart button

### 🔹 FavouriteScreen

List of saved favourite products with quick navigation.

---

### 🔹 MyCartScreen

Displays selected items and total price.
Checkout button opens bottom sheet.

### 🔹 CheckoutBottomSheet

Slide-up modal including:

* Delivery details
* Payment method
* Promo code
* Total cost
* Place Order button

### 🔹 OrderAcceptedScreen

Order confirmation UI with illustration and navigation back to home.

### 🔹 LogOutScreen

Logout confirmation with navigation to Welcome/Login.

---

## 🛠️ Technologies Used

* Flutter
* Dart
* Material Design
* Pinput (OTP input UI)

---

## 📂 Project Structure

```
lib/
│
├── core/
│   ├── functions/
│   ├── styles/
│   └── widgets/
│
├── features/
│   ├── auth/
│   ├── home/
│   ├── search/
│   ├── cart/
│   └── product/
│
└── main.dart
```

---

## 📦 Getting Started

### 1️⃣ Clone the repository

```bash
git clone https://github.com/mohamed12mosaad/greenmart_app.git
cd greenmart_app
```
