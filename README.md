# BasePlate

**BasePlate** is a Ruby on Rails–based team collaboration and project management tool designed to help teams plan, track, and ship work more efficiently. It provides a centralised workspace where members can organise projects, manage tasks, communicate in context, and monitor progress — all from a single, easy-to-use web application.

---

## Features

- **Project Management** – Create and manage multiple projects with customisable workflows, milestones, and deadlines.
- **Task Tracking** – Break work down into tasks and subtasks, assign them to team members, set priorities, and track their status through a Kanban-style board or list view.
- **Team Collaboration** – Invite teammates, assign roles and permissions, and keep everyone aligned with shared project spaces.
- **Activity Feed** – Stay up to date with a real-time activity stream that shows recent changes, comments, and progress across all projects.
- **Comments & Discussions** – Leave inline comments on tasks and projects to keep conversations attached to the relevant context.
- **File Attachments** – Upload and attach documents, images, and other files directly to tasks or project pages.
- **Notifications** – Receive alerts when tasks are assigned, deadlines are approaching, or comments are posted.
- **Dashboard** – Get a high-level overview of all active projects, upcoming deadlines, and team workload at a glance.
- **Authentication & Authorisation** – Secure user registration and login with role-based access control (admin, member, viewer).

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Ruby on Rails |
| Database | PostgreSQL |
| Frontend | HTML / CSS / JavaScript (with Rails view templates) |
| Authentication | Devise |
| Testing | RSpec / Minitest |
| Deployment | Heroku / Render (or any Rack-compatible host) |

---

## Getting Started

### Prerequisites

- Ruby 3.x
- Rails 7.x
- PostgreSQL
- Node.js & Yarn (for asset pipeline)

### Installation

```bash
# Clone the repository
git clone https://github.com/Htet-2aung/BasePlate-Ruby-on-Rails-based-Team-Collaboration-Project-Management-Tool.git
cd BasePlate-Ruby-on-Rails-based-Team-Collaboration-Project-Management-Tool

# Install Ruby dependencies
bundle install

# Install JavaScript dependencies
yarn install

# Set up the database
rails db:create db:migrate db:seed

# Start the development server
rails server
```

Then open [http://localhost:3000](http://localhost:3000) in your browser.

---

## Configuration

Copy the example environment file and fill in the required values:

```bash
cp .env.example .env
```

Key environment variables:

| Variable | Description |
|----------|-------------|
| `DATABASE_URL` | PostgreSQL connection string |
| `SECRET_KEY_BASE` | Rails secret key (generate with `rails secret`) |
| `SMTP_*` | Mail server credentials for email notifications |

---

## Running Tests

```bash
bundle exec rspec
```

---

## Contributing

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes: `git commit -m "Add your feature"`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Open a Pull Request.

Please follow the existing code style and include tests for any new functionality.

---

## License

This project is open-source and available under the [MIT License](LICENSE).
