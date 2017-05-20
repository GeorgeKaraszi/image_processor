use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :image_processor, ImageProcessor.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :image_processor, ImageProcessor.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "image_processor_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
