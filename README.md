# Park Ranger (Phase 1) - Ongoing

This commit contains only Phase 1 (database + environment setup).

---

## WHat's inside of this commit?

- `database.sql` (MySQL schema)
- `backend/db.py` (database connection script)
- `.env.example` (example environment variables, magcreate kayo ng sarili niyo based sa configuration niyo sa SQL)
- `requirements.txt` (Python dependencies)
- `.gitignore`


## Setup Instructions

### Import Database

1. Open **XAMPP**
(edit) Start **Apache**
2. Start **MySQL**
3. Open **phpMyAdmin using Admin button sa XAMPP MySQL**
4. Click **Import**
5. Select `database.sql`
6. Click **Go**



### Setup Environment Variables

1. Go to `backend/`
2. Copy `.env.example` to `.env`
3. Fill in your MySQL password

# Park Ranger (Phase 2)

##added

- `backend/app.py` (Flask API backend: user login, product/location/feedback CRUD, JWT authentication, and database interaction)


# Phase 3 - Frontend
ALL frontend pages finished, few revisions needed including logo

admin
password123

### 1. Database Setup (XAMPP)
1. Open the **XAMPP Control Panel** and start **Apache** and **MySQL**.
2. Navigate to `http://localhost/phpmyadmin/`.
3. Create a new database named `park_ranger_system`.
4. [cite_start]Select the database, go to the **Import** tab, and upload the `database.sql` file from the root directory. (you may also upload `dummydata.sql` for the main functions of the website)
5. Run the following SQL command in the **SQL** tab to create a test user:
   ```sql
   INSERT INTO `USER` (username, password_hash) VALUES ('admin', 'password123');

### 2. Backend Server Setup
1. Open your terminal and navigate to the `backend` folder:
   ```bash
   cd path/to/ParkRanger/backend
2. Install the required libraries
   ```bash
   pip install Flask mysql-connector-python PyJWT python-dotenv textblob flask-cors
3. Ensure your `.env` file is configured for your local MySQL (XAMPP default: `DB_USER=root`, `DB_PASSWORD= empty`, `DB_PORT=3306`)
4. run the Flask application:
   ```bash
   python app.py
  The API will be live at `http://127.0.0.1:5000`
