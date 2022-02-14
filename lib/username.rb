class User < ActiveRecords::Base
  attr_accessor :name, :score, :categories
  def initialize(name)
    @name = name
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY,
        name TEXT,
        score INTEGER,
        categories TEXT
        )
    SQL
    DB[:conn].execute(sql)
  end
  def save
    sql = <<-SQL
      INSERT INTO users (name, score, categories)
      VALUES (?, ?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.score, self.categories)
    @id = DB[:conn].execute('SELECT last_insert_rowid() FROM users')[0][0]
  end

  def self.create(name:)
    user = User.new(name)
    user.save
    user
  end
end
