# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_audition_session',
  :secret      => 'daa68f42ddc884916069afe65350a2a61f9c28953656f16ed829b7d62b80365988060fe9b1c55210b16e5d33549d33940f0b479918abcfcabe75d4726202b931'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
