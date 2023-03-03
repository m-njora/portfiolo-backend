# Portfolio-Backend
Portfolio-Backend is a basic API built with ruby's Sinatra DSL.
This project is a demo that shows the power of the DSL in building server-side applications quickly.
The application has been built with the MVC design pattern.
## Pre-Requisites
In order to use this repository you will need the following:
- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB
## Built With
This application has been built with the following tools:
![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**
- **ERB `v4.0`**

## Setup
You can setup this repository by following this manual
1. Clone the repository
    ```{shell}
   git clone https://github.com/m-njora/portfiolo-backend
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. Run the application
    ```{shell}
    rake start
    ```
5. Open the application from your browser
    ```
   http://localhost:9292
   ```
## Application
This application is a simple web API that allows users to:

### users

- Register a new if account does not exist.
- Log in to existing account.

### project

- Create a project items.
- Update individual project items.
- View all project items.
- Filter through project items by date.
- Delete a project item.

### Skills

- Create a skill item.
- View all skill items.
- Update skill items.
- Filter through skill items.
- Delete a skill item.

### MODELS
Database schema definitions.

#### PROJECT
| COLUMN      | DATA TYPE                                       | DESCRIPTION                            |
|-------------|-------------------------------------------------|----------------------------------------|
| id          | Integer                                         | Unique identifier.                     |
| title       | String                                          | The name of the project.               |
| description | String                                          | A short description about the project. |
| due         | Date                                            | The set due date for the project.      |
| createdAt   | Date                                            | The date the project was created.      |
| status      | ENUM `[CREATED, ONGOING, COMPLETED, CANCELLED]` | The status of the project.             |
#### USER
| COLUMN        | DATA TYPE | DESCRIPTION                           |
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| full_name     | String    | User's full name.                     |
| password_hash | String    | User's password hashed with `BCrypt`. |
| updated_at    | Date      | The date the user was updated.        |
