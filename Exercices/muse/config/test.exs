import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :muse, MuseWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "plXBxl6DOObqYISh2L4rQzP5S0IPLE72BfyPtSIIUr/s+3iJGcCitQ/KZSwHzuwJ",
  server: false

# In test we don't send emails.
config :muse, Muse.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
