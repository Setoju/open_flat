# Open Flat

Open Flat is a web application built with Ruby on Rails for managing apartment listings and rentals.

## Prerequisites

- Ruby 3.2.0 or higher
- PostgreSQL 14.0 or higher
- Rails 8.0.2
- Node.js and Yarn

## Environment Setup

1. Clone the repository:
```bash
git clone <repository-url>
cd open_flat
```

2. Create a `.env` file in the root directory with:
```
OPEN_FLAT_DATABASE_USERNAME=your_username
OPEN_FLAT_DATABASE_PASSWORD=your_password
```

3. Install dependencies:
```bash
bundle install
```

## Database Setup

```bash
rails db:create
rails db:migrate
```

## Running the Application

1. Start the Rails server:
```bash
rails server
```

2. Visit `http://localhost:3000` in your browser

## Testing

Run the test suite with:
```bash
rails test
```

## Key Features

- User authentication with Devise
- Apartment listings management
- PostgreSQL database

## Technical Stack

- Ruby on Rails 8.0.2
- PostgreSQL
- Devise for authentication
- Turbo and Stimulus for frontend interactivity
- Solid gems for caching, job queues, and Action Cable

## Deployment

The application is configured for Docker-based deployment using Kamal.

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License.
