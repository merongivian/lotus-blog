require 'lotus/model'
Dir["#{ __dir__ }/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/microblog_development'
  #
  #  * SQL adapter
  adapter type: :sql, uri: 'sqlite://db/microblog_development.db'
  #    adapter type: :sql, uri: 'postgres://localhost/microblog_development'
  #    adapter type: :sql, uri: 'mysql://localhost/microblog_development'
  #
  # adapter type: :file_system, uri: ENV['MICROBLOG_DATABASE_URL']

  ##
  # Database mapping
  #
  mapping do
    collection :posts do
      entity     Post

      attribute :id,      Integer
      attribute :title,   String
      attribute :content, String
    end
  end
end.load!