# ECOMERCE-RoR

An Commerce bookstore built with Ruby on Rails, featuring admin-only product management, search with Elasticsearch, seamless digital book purchases, tag-based categorization and real-time Hotwire-powered user interface.

## Requirements

- Ruby 3.2+
- Rails 8+
- PostgreSQL or SQLite (default: SQLite)
- Nodejs
- Npm

## Setup

1. **Clone the repo:**
   ```sh
   git clone https://github.com/tunang/ecommerce-RoR
   cd ecommerce-RoR
   ```
2. **Install dependencies:**
   ```sh
   bundle install
   npm install
   ```
3. **Set up the database:**
   ```sh
   rails db:setup
   # or, for existing DB
   rails db:migrate
   rails db:seed
   ```
4. **Start the Rails server:**
   ```sh
   bin/rails server
   ```



## Services

- **Elasticsearch:** For advanced movie search/filtering
- **Devise:** For authentication
- **Pundit:** For authorization
- **Hotwire:** For modern, reactive UI
- **ReactJS:** For modern, reactive UI
- **Kaminari:** For pagination

## Deployment

1. Set environment variables and credentials for production (see `config/credentials.yml.enc`).
2. Ensure Elasticsearch and your database are running in production.
3. Precompile assets:
   ```sh
   RAILS_ENV=production bin/rails assets:precompile
   ```
4. Run migrations:
   ```sh
   RAILS_ENV=production bin/rails db:migrate
   ```
5. Start the server:
   ```sh
   RAILS_ENV=production bin/rails server
   ```

## Notes


---
For questions or contributions, open an issue or PR on GitHub.
