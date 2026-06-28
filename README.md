# 🚀 MiniLeetcode

A highly gamified, free competitive programming platform. Master algorithms, challenge friends in real-time Sparring matches, and get unstuck with an AI Mentor!

---

## ✨ Features

- **🏆 Practice Mode:** Solve a curated list of Easy, Medium, and Hard coding questions. Write code directly in the browser with Monaco Editor and run tests in real-time.
- **🧠 AI Mentor:** Stuck on a problem? Click "Get a Hint" and our Google Gemini-powered AI Mentor will analyze your current code and give you a gentle nudge in the right direction!
- **⚔️ Sparring Mode (Multiplayer):** Challenge your friends to a 1v1 coding battle! Create a room, share the link, and race to solve a random Medium difficulty question. See each other's live progress and submission results instantly via Socket.io.
- **📊 Detailed Profiles:** Track your Global Score, Clean Streak (consecutive days coded), and visualize your activity with a GitHub-style Contribution Heatmap.
- **⚖️ Profile Comparison:** Type in an opponent's username to get a side-by-side statistical comparison of your scores, streaks, and solved problem counts.
- **🌐 Multi-Language Support:** Write and submit solutions in **JavaScript (Node.js)**, **Python 3**, **C++**, and **Java**.

---

## 🛠️ Tech Stack

### Frontend
- **Framework:** React + Vite
- **Styling:** TailwindCSS
- **Code Editor:** `@monaco-editor/react`
- **Routing:** React Router DOM
- **Real-time:** Socket.io-client

### Backend
- **Server:** Node.js + Express
- **Real-time:** Socket.io
- **AI Integration:** `@google/generative-ai` (Gemini 1.5 Flash)
- **Database:** Supabase (PostgreSQL)
- **Code Execution:** Local child processes (Note: Migrating to a sandboxed environment like Piston is recommended for production)

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/minileetcode.git
cd minileetcode
```

### 2. Set up the Backend
Navigate to the backend directory and install dependencies:
```bash
cd backend
npm install
```

Create a `.env` file in the `backend/` directory:
```env
PORT=3000

# Supabase Keys
SUPABASE_URL=your_supabase_project_url
SUPABASE_KEY=your_supabase_anon_key

# Gemini AI Key
GEMINI_API_KEY=your_google_gemini_api_key
```

Start the backend server:
```bash
npm start
```
*(The backend will start on http://localhost:3000)*

### 3. Set up the Frontend
Open a new terminal, navigate to the frontend directory, and install dependencies:
```bash
cd frontend
npm install
```

Create a `.env` file in the `frontend/` directory:
```env
VITE_SUPABASE_URL=your_supabase_project_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
VITE_API_URL=http://localhost:3000
```

Start the Vite development server:
```bash
npm run dev
```
*(The frontend will start on http://localhost:5173)*

---

## 🗄️ Database Schema (Supabase)

To set up your Supabase database, execute the SQL files found in the `database/` folder in your Supabase SQL Editor:
1. Run `database/schema.sql` to create the tables (`users`, `questions`, `submissions`, `daily_activity`).
2. Run `database/triggers.sql` to set up the automated triggers (like streak calculations and user registration).
3. Run `database/seed.sql` to populate your database with dummy questions and test data.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! 
Feel free to check [issues page](https://github.com/arpitsharma2028/minileetcode/issues) if you want to contribute.

## 📝 License

This project is open-source and available under the [MIT License](LICENSE).
