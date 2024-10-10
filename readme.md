# Prisma v Drizzle

This repo is used with the Prisma vs Drizzle series on [Holodeck.run](https://holodeck.run). It has several examples of how to create a database schema, execute queries, and use tools offered by both Prisma and Drizzle.

## Add Your Database Connection Strings

Create a file called `.env` and populate it with connection strings to your Prisma and Drizzle databases.

Example from my local environment:

```.env
PRISMA_DATABASE_URL="postgresql://ryanchenkie:secret@localhost:5432/prisma_db?schema=public"
DRIZZLE_DATABASE_URL="postgresql://ryanchenkie:secret@localhost:5432/drizzle_db?schema=public"
```

## Installation and Running

Install the dependencies:

```bash
npm install
```

Run the Prisma side:

```bash
npm run dev:prisma
```

Run the Drizzle side:

```bash
npm run dev:drizzle
```

## License

MIT
