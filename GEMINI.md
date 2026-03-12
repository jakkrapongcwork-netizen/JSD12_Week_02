# Project Overview: JSD12 Week 02

This workspace contains materials for Week 02 of the JSD12 course. It features two primary components: a conceptual design for a Hamster E-commerce shop and a PostgreSQL database schema for a Restaurant/Bakery system.

## Project 1: Hamster E-commerce Shop (Concept & Modeling)

**Purpose:** A conceptual e-commerce store specializing in hamster food and equipment (cages, wheels, etc.), designed to solve the problem of limited living space by promoting small pets.

### Key Files:
- `01_my-ecommerce.md`: Problem statement, solution, and high-level shop overview.
- `05_product-backlog.md`: Detailed system flow from registration to payment/transfer.
- `06_bring-it-to-javascript.js`: JavaScript implementation of the core data models (Customer, Product, Order, Payment).
- **Diagrams:**
    - `02_bussiness-model-canvas.excalidraw`
    - `03_use-case-diagram.excalidraw`
    - `04_er-diagram.excalidraw`

### Usage:
- The JavaScript file (`06_bring-it-to-javascript.js`) can be run with Node.js to see the data structures and simulated logic.
- The `.excalidraw` files contain the visual design and architecture of the shop.

---

## Project 2: Restaurant/Bakery Management (Database)

**Purpose:** A PostgreSQL-based system for managing a restaurant or bakery, including suppliers, staff, inventory (ingredients), menu items, recipes, and order fulfillment.

### Directory: `postgresql/`
- `create-tables.sql`: The primary script to initialize the database schema.
- `01_supplier.sql` through `07_order_items.sql`: Individual scripts for table-specific data/schema (likely for incremental setup).
- `query.sql`: Contains sample SQL queries (e.g., filtering menu items by category).

### Database Schema Highlights:
- **Suppliers & Ingredients:** Tracks inventory and sourcing.
- **MenuItems & RecipeItems:** A join table relationship that defines which ingredients are needed for each menu item.
- **Orders & OrderItems:** Tracks customer purchases and associated staff.

---

## Development Conventions

- **Language:** JavaScript for logic modeling, SQL for data persistence.
- **Naming:** CamelCase for JavaScript variables, lowercase with underscores (snake_case) for SQL table and column names.
- **Documentation:** Markdown files are used for planning and requirements gathering.

## Instructions for Gemini

- When working on e-commerce features, refer to the models defined in `06_bring-it-to-javascript.js` and the flow in `05_product-backlog.md`.
- When working on database tasks, ensure compatibility with the schema in `postgresql/create-tables.sql`.
- Adhere to the existing naming conventions and Thai language context in the documentation where appropriate.
