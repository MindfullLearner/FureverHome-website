# 🐾 FurEver Home — Pet Adoption System
## Web Technologies (CS-4070) — Phase 2

**Group Members:** Tooba Nadeem (23L-2550) · Minahil Fatima (23F-3036) · Nayab Maryam (23F-3015)  
**Instructor:** Dr. Awais Azam

---

## 🌐 Live Demo
> [View Online →](https://fureverhome.lovestoblog.com/login.html)  
> *(Hosted on InfinityFree — replace link after deployment)*

---

## 📁 Project Structure

## Project Structure

```
furever-home/
│
├── index.html                  ← Home Page
├── login.html                  ← Login Page
├── register.html               ← Registration Page
├── user-dashboard.html         ← Adopter Dashboard
├── browse-pets.html            ← Browse Pets (with filters)
├── pet-details.html            ← Individual Pet Details
├── adoption-application.html   ← Adoption Application Form
├── admin-panel.html            ← Admin Panel
├── shelter-dashboard.html      ← Shelter Staff Dashboard
├── notifications.html          ← Notifications Page
│
└── css/
    └── style.css               ← Single shared stylesheet (external CSS)
```

## 🎨 Color Palette

| Variable         | Color      | Use                        |
|------------------|------------|----------------------------|
| `--pink-light`   | #fde8f0    | Backgrounds, highlights    |
| `--pink-main`    | #f4a7c3    | Borders, accents           |
| `--pink-dark`    | #d96b99    | Primary buttons, links     |
| `--cream`        | #fffaf5    | Page background            |
| `--brown-light`  | #f5e6d3    | Cards, strip backgrounds   |
| `--brown-main`   | #c8956c    | Secondary buttons          |
| `--brown-dark`   | #7a4f3a    | Headings, sidebar          |

---

## 📄 Pages Summary

| Page                    | File                        | Role                  |
|-------------------------|-----------------------------|-----------------------|
| Home Page               | index.html                  | All users             |
| Login                   | login.html                  | All users             |
| Register                | register.html               | New users             |
| User Dashboard          | user-dashboard.html         | Adopter               |
| Browse Pets             | browse-pets.html            | All users             |
| Pet Details             | pet-details.html            | All users             |
| Adoption Application    | adoption-application.html   | Adopter               |
| Admin Panel             | admin-panel.html            | Admin                 |
| Shelter Staff Dashboard | shelter-dashboard.html      | Shelter Staff         |
| Notifications           | notifications.html          | All logged-in users   |

---

## ⚙️ API Endpoints Summary

| Endpoint                   | Method | Role          | Description                  |
|----------------------------|--------|---------------|------------------------------|
| api/register.php           | POST   | Public        | Register new user            |
| api/login.php              | POST   | Public        | Login and start session      |
| api/logout.php             | GET    | Any           | Destroy session              |
| api/get_user.php           | GET    | Any           | Get logged-in user info      |
| api/add_pet.php            | POST   | Shelter Staff | Add new pet with image       |
| api/get_pet.php            | GET    | Any           | Get all available pets       |
| api/get_pet_detail.php     | GET    | Any           | Get single pet details       |
| api/get_my_pets.php        | GET    | Shelter Staff | Get own shelter's pets       |
| api/delete_pet.php         | POST   | Shelter Staff | Delete own pet               |
| api/add_application.php    | POST   | Adopter       | Submit adoption application  |
| api/pet_applications.php   | GET    | Adopter       | Get own applications         |
| api/get_notifications.php  | GET    | Any           | Get own notifications        |
| api/mark_read.php          | POST   | Any           | Mark all notifications read  |

---

## 🗄️ Database Tables

| Table                | Description                        |
|----------------------|------------------------------------|
| `users`              | All users (adopter, staff, admin)  |
| `pets`               | Pet listings added by shelter staff|
| `adoption_requests`  | Adoption applications by adopters  |
| `notifications`      | Role-based notifications           |

---

## 🛠️ Technologies Used

### Frontend
- **HTML5** — Semantic page structure
- **CSS3** — External stylesheet with CSS variables
- **JavaScript (Vanilla)** — AJAX fetch API, DOM manipulation

### Backend
- **PHP** — REST-style API endpoints
- **MySQL** — Relational database via phpMyAdmin
- **XAMPP** — Local development server (Apache + MySQL)

### Key Features
- Role-based authentication (Adopter / Shelter Staff / Admin)
- Session management with PHP
- Pet image upload and storage
- Real-time notifications per role
- Dynamic pages via AJAX (no page refresh)

---

## 👥 Work Division

| Member          | Responsibility                                      |
|-----------------|-----------------------------------------------------|
| Tooba Nadeem    | add_pet.php · delete_pet.php · shelter-dashboard    |
| Minahil Fatima  | get_pet.php · update_pet.php · browse-pets          |
| Nayab Maryam    | add_application.php · notifications · user-dashboard|

---

## 🚀 How to Run Locally

1. Install **XAMPP** and start **Apache** and **MySQL**
2. Clone or copy project to:
    C:/xampp/htdocs/furever_home/
3. Import database:
   - Open **phpMyAdmin** → Create DB `furever_home`
   - Import `furever_home.sql`
4. Open browser and go to:
    http://localhost/furever_home/

---

## 🔐 Test Accounts

| Role          | Email                    | Password  |
|---------------|--------------------------|-----------|
| Admin         | admin@gmail.com          | 123       |
| Shelter Staff | minu@gmail.com           | minu123   |
| Adopter       | nayab@gmail.com          | nayab123  |

---

*Made with 💕 for every furry soul — FurEver Home © 2025*
