# 🐾 FurEver Home — Pet Adoption System

**Course:** Web Technologies (CS-4070)
**Instructor:** Dr. Awais Azam

| Member | ID |
|---|---|
| Tooba Nadeem | 23L-2550 |
| Minahil Fatima | 23F-3036 |
| Nayab Maryam | 23F-3015 |

---

## 🌐 Live Demo

[fureverhome.lovestoblog.com](https://fureverhome.lovestoblog.com/login.html)

---

## 🛠️ Technologies

| Layer | Stack |
|---|---|
| Frontend | HTML5, CSS3, Vanilla JavaScript |
| Backend | PHP (REST APIs) |
| Database | MySQL |
| Server | XAMPP (Apache + MySQL) |

---

## 📁 Project Structure

```
furever-home/
│
├── index.html
├── login.html
├── register.html
├── browse-pets.html
├── pet-details.html
├── adoption-application.html
├── user-dashboard.html
├── shelter-dashboard.html
├── admin-panel.html
├── notifications.html
│
├── css/
│   ├── style.css
│   ├── user-dashboard.css
│   ├── shelter-dashboard.css
│   ├── adoption.css
│   ├── pet-details.css
│   └── notifications.css
│
├── uploads/
│   └── pets/
│
└── api/
    ├── db.php
    ├── check_auth.php
    ├── check_auth_api.php
    ├── notify.php
    ├── login.php
    ├── logout.php
    ├── register.php
    ├── get_user.php
    ├── add_pet.php
    ├── get_pet.php
    ├── get_pet_details.php
    ├── get_my_pets.php
    ├── delete_pet.php
    ├── add_application.php
    ├── pet_applications.php
    ├── user_dashboard.php
    ├── get_notifications.php
    └── mark_read.php
```

---

## 🗄️ Database Tables

| Table | Description |
|---|---|
| `users` | All users — adopter, shelter staff, admin |
| `pets` | Pet listings managed by shelter staff |
| `adoption_requests` | Applications submitted by adopters |
| `notifications` | Role-based notifications |

---

## ✨ Key Features

- Role-based access control (Adopter / Shelter Staff / Admin)
- PHP session authentication
- Pet image upload and serving
- Dynamic pages via AJAX — no page reloads
- Real-time notifications per role

---

## 👥 Work Division

| Member | Modules |
|---|---|
| Tooba Nadeem | Add Pet · Delete Pet · Shelter Dashboard |
| Minahil Fatima | Get Pets · Update Pet · Browse Pets |
| Nayab Maryam | Adoption Application · Notifications · User Dashboard |

---

## 🚀 Running Locally

1. Install XAMPP and start Apache and MySQL
2. Copy project to `C:/mamp/htdocs/furever_home/`
3. Open phpMyAdmin → create database `furever_home` → import `furever_home.sql`
4. Visit `http://localhost/furever_home/`

---

## 🔐 Test Accounts

| Role | Email | Password |
|---|---|---|
| Admin | admin@gmail.com | 123 |
| Shelter Staff | minu@gmail.com | minu123 |
| Adopter | nayab@gmail.com | nayab123 |

---

*FurEver Home © 2025 — Made with 💕 for every furry soul*
