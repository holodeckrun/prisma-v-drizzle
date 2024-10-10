import { defineConfig } from "drizzle-kit";

export default defineConfig({
  schema: "./db/schema.ts",
  dialect: "postgresql",
  dbCredentials: {
    url: process.env.DRIZZLE_DATABASE_URL as string,
  },
  verbose: true,
  strict: true,
  migrations: {
    table: "journal",
    schema: "drizzle",
  },
});
