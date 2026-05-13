# Notes App

A simple notes app with a Node.js + Express backend, MySQL storage, and a plain HTML frontend.

## Project structure

- `backend/` - Node.js API server
- `frontend/` - static HTML frontend
- `database/schema.sql` - SQL schema and example queries for MySQL

## Requirements

- Node.js installed
- MySQL server running locally

## Backend setup

1. Open a terminal in `backend/`
2. Install dependencies:

```bash
npm install
```

3. Start the backend server:

```bash
npm run dev
```

or

```bash
npm start
```

The backend listens on `http://localhost:3002`.

## Frontend usage

1. Open `frontend/index.html` in your browser.
2. The app connects to the backend API at `http://localhost:3002`.
3. Add, edit, and delete notes from the UI.

## Database setup

The backend automatically creates the `santhu` database and the `notes` table if they do not already exist.

If you want to initialize MySQL manually, use the SQL in `database/schema.sql`:

```sql
CREATE DATABASE IF NOT EXISTS santhu;
USE santhu;

CREATE TABLE IF NOT EXISTS notes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  itemdes VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## API endpoints

- `GET /notes` - fetch all notes
- `POST /notes` - add a note
- `PUT /notes/:id` - update a note
- `DELETE /notes/:id` - remove a note

## Notes

- Current MySQL credentials in `backend/server.js` are:
  - `host: localhost`
  - `user: root`
  - `password: root`
- Update these values if your MySQL configuration differs.

## Troubleshooting

- If the frontend cannot load notes, ensure the backend is running and MySQL is available.
- Check terminal output for connection errors.
