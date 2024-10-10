CREATE TABLE IF NOT EXISTS "categories" (
	"id" varchar PRIMARY KEY NOT NULL,
	"name" varchar,
	"createdAt" date,
	"updatedAt" date
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "categories_to_posts" (
	"categoryId" varchar NOT NULL,
	"postId" varchar NOT NULL
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "posts" (
	"id" varchar PRIMARY KEY NOT NULL,
	"title" varchar,
	"content" varchar,
	"authorId" varchar,
	"publishedAt" date,
	"createdAt" date,
	"updatedAt" date
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "users" (
	"id" varchar PRIMARY KEY NOT NULL,
	"email" varchar,
	"name" varchar,
	"createdAt" date,
	"updatedAt" date,
	CONSTRAINT "users_email_unique" UNIQUE("email")
);
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "categories_to_posts" ADD CONSTRAINT "categories_to_posts_categoryId_categories_id_fk" FOREIGN KEY ("categoryId") REFERENCES "public"."categories"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "categories_to_posts" ADD CONSTRAINT "categories_to_posts_postId_posts_id_fk" FOREIGN KEY ("postId") REFERENCES "public"."posts"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
