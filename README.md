# 🎓 Smart Classroom Hub

**A Full-Stack University Management System designed to empower instructors and support students through technology-driven learning.**

<p align="center">
  <img src="https://img.shields.io/badge/Status-In_Development-blueviolet.svg" alt="Project Status">
  <img src="https://img.shields.io/badge/Backend-Django-0C4B33?logo=django&logoColor=white" alt="Backend">
  <img src="https://img.shields.io/badge/Frontend-React-61DAFB?logo=react&logoColor=black" alt="Frontend">
  <img src="https://img.shields.io/badge/Database-PostgreSQL-336791?logo=postgresql&logoColor=white" alt="Database">
  <img src="https://img.shields.io/github/license/your-username/smart-classroom-hub?color=green" alt="License">
</p>

---

## 🚀 About the Project

**Smart Classroom Hub** is a **university management platform** built to make higher education more efficient, transparent, and personalised.  
It bridges the communication and engagement gap between **teachers** and **students** by offering digital tools that simplify classroom administration and academic interaction.

🎯 **Vision:**  
To transform traditional classroom processes into smart, data-driven, and collaborative experiences.

💡 **Problem Solved:**  
Many students struggle silently. This system helps instructors identify disengaged or struggling learners early through digital signals — attendance, performance, and communication.

---

## 🧩 System Overview

| Icon | Django App | Description | 🔗 Folder |
|:----:|-------------|--------------|-----------|
| ✅ | **attendance** | Handles QR and Bluetooth-based attendance management. | [Open](./attendance/) |
| 🏫 | **classroom** | Core logic for managing classes, subjects, and schedules. | [Open](./classroom/) |
| 🗣️ | **complaint** | Students can submit academic or administrative grievances. | [Open](./complaint/) |
| 👤 | **student** | Manages student data, grades, and records. | [Open](./student/) |
| 🧑‍🏫 | **teacher** | Handles instructor profiles, permissions, and assignments. | [Open](./teacher/) |
| ❓ | **quiz** | System for creating and auto-grading quizzes. | [Open](./quiz/) |
| 📋 | **todo** | Personal task manager for teachers and students. | [Open](./todo/) |
| 🖍️ | **whiteboard** | Real-time collaborative whiteboard. | [Open](./whiteboard/) |
| ⚙️ | **core** | Central configuration, URLs, and project settings. | [Open](./core/) |
| 🖼️ | **media** | User-uploaded files (profile pictures, submissions). | [Open](./media/) |
| 🎨 | **static** | Static resources (CSS, JS, images). | [Open](./static/) |
| 📄 | **templates** | HTML templates for Django backend. | [Open](./templates/) |

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-------------|
| **Frontend** | React.js, React Router |
| **Backend** | Django, Django REST Framework |
| **Database** | PostgreSQL *(Production)* / SQLite *(Development)* |
| **Core Features** | Bluetooth LE, QR Code Generation, REST APIs |
| **Version Control** | Git + GitHub |

---

## 🏗️ Architecture Overview
```Bash 
smart-classroom-hub/
│
├── backend/
│ ├── attendance/
│ ├── classroom/
│ ├── complaint/
│ ├── student/
│ ├── teacher/
│ ├── quiz/
│ ├── todo/
│ ├── whiteboard/
│ ├── core/
│ ├── media/
│ └── templates/
│
└── frontend/
├── public/
├── src/
│ ├── components/
│ ├── pages/
│ ├── services/
│ └── App.js
└── package.json
```


🧱 *Architecture Diagram*  
(Optional visual placeholder — replace with your actual diagram)

---

## 🧭 Getting Started

Follow these steps to set up the project locally.

### 1️⃣ Clone the Repository

git clone https://github.com/your-username/smart-classroom-hub.git
cd smart-classroom-hub

text

### 2️⃣ Backend Setup (Django)

Create and activate a virtual environment:

Windows
python -m venv venv
.\venv\Scripts\activate

macOS / Linux
python3 -m venv venv
source venv/bin/activate

text

Install dependencies:

pip install -r requirements.txt

text

Configure environment variables — create a `.env` file in `backend/` and add:

SECRET_KEY='your-secret-key'
DEBUG=True
DATABASE_URL='sqlite:///db.sqlite3'

For PostgreSQL:
DATABASE_URL='postgres://user:password@localhost:5432/dbname'
text

Apply migrations and run the server:

python manage.py migrate
python manage.py runserver

text

Backend: [http://127.0.0.1:8000](http://127.0.0.1:8000)

### 3️⃣ Frontend Setup (React)

cd frontend
npm install
npm start

text

Frontend: [http://localhost:3000](http://localhost:3000)

---

## 🌟 Key Features

- 🧾 Smart Attendance: QR & Bluetooth-based check-ins  
- 🧠 AI-Ready Architecture: Extendable to include predictive performance analysis  
- 🧑‍🏫 Instructor Dashboard: Manage classes, assignments, and student engagement  
- 🎯 Quiz Engine: Create, assign, and auto-grade quizzes  
- 🖍️ Digital Whiteboard: Real-time collaboration with drawing tools  
- 🗣️ Complaint System: Student–instructor grievance handling  
- 🗓️ Personal To-Do Manager: Track daily academic goals  

---

## 🔮 Future Roadmap

- AI-based student performance prediction  
- Integration with LMS platforms (e.g., Moodle)  
- Mobile app version (React Native)  
- Notification system (Email + Push)  
- Real-time classroom chat  

---

## 🧩 API Documentation

Django REST Framework automatically generates browsable API docs.  
After starting the backend server, visit:

👉 [http://127.0.0.1:8000/api/docs/](http://127.0.0.1:8000/api/docs/)

**Example Endpoints**

GET /api/attendance/
POST /api/quiz/submit/

text

---

## 🧑‍💻 Contributing

Contributions are always welcome! Follow these steps:

Fork the repository
Create your feature branch
git checkout -b feature/AmazingFeature

Commit your changes
git commit -m 'Add some AmazingFeature'

Push to your branch
git push origin feature/AmazingFeature

text

Open a Pull Request 🚀

---

## 📸 Screenshots (Optional)

Replace these placeholders with your own screenshots:

**Dashboard | Quiz | Whiteboard**

---

## 🧾 License

This project is licensed under the **MIT License** — see the LICENSE file for details.

---

## 📬 Contact

👨‍💻 **Soham Shrikant Manjrekar**  
💼 *LinkedIn*  
📧 [your.email@example.com](mailto:your.email@example.com)  
🔗 *Project Repository*

---

## 📊 GitHub Stats (Optional)

<p align="center">
<img src="https://github-readme-stats.vercel.app/api?username=your-username&show_icons=true&theme=radical" alt="GitHub Stats">
<img src="https://github-readme-stats.vercel.app/api/top-langs/?username=your-username&layout=compact&theme=radical" alt="Top Languages">
</p>

---

### Built with ❤️ by Soham Shrikant Manjrekar
