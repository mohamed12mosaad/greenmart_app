<h1 align="center">🛒 GreenMart</h1>

<h3 align="center">Authentication UI & Validation Demo</h3>

<p>
A modern Flutter demo application that demonstrates a complete authentication UI flow including form validation, mobile verification, and OTP input.
</p>

<p>
Built with clean, responsive, and reusable UI components — without backend integration.
</p>

---

## 🖼️ Screenshots

<div align="center" style="display:flex; flex-wrap:wrap; gap:10px; justify-content:center;">

  <img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-09%20133653.png" width="250">

  <img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-09%20133720.png" width="250">

  <img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20134805.png" width="250">

  <img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20134928.png" width="250">

  <img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20135000.png" width="250">

  <img src="https://github.com/mohamed12mosaad/greenmart_app/blob/main/screenshots/Screenshot%202026-02-11%20135035.png" width="250">

</div>


---

## 🚀 Features

✔ Splash & Welcome screens (UI only)  
✔ Login form with validation  
✔ Registration form with full input validation  
✔ Mobile number verification flow  
✔ OTP input using **Pinput** package  
✔ Smooth navigation between screens  
✔ Reusable custom UI components  
✔ Clean and responsive design  

---

## 📱 App Screens

### 🔹 Welcome Screen
Introductory UI shown before authentication.

### 🔹 Login Screen
- Email & password inputs  
- Validation for empty or invalid fields  

### 🔹 Register Screen
- User registration form  
- Custom reusable text fields  
- Complete form validation  

### 🔹 Verify Mobile Screen
- Enter mobile number  
- Validation before OTP request  

### 🔹 Verify Code Screen
- OTP input using **Pinput widget**  
- Input validation  
- onCompleted callback navigation  

### 🔹 Main Screen
Placeholder home screen displayed after successful verification.

---

## 🛠️ Technologies Used

- Flutter  
- Dart  
- Material Design  
- Pinput (OTP input UI)

---

## 📂 Project Structure
```
lib/
│
├── core/
│ ├── functions/
│ ├── styles/
│ └── widgets/
│
├── features/
│ └── auth/
│ ├── screens/
│ └── widgets/
│
└── main.dart
```

---


---

## 📦 Getting Started

### 1️⃣ Clone the repository
```bash
git clone https://github.com/mohamed12mosaad/greenmart_app.git
cd greenmart_app

