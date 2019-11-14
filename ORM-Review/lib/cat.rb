# class method that creates a cats table if it doesn't exist
# class method that finds a cat by its id and returns an instance of a cat with that id

class Cat
    attr_accessor :id, :name, :age

    # @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        # @@all << self
    end

    def self.create_table
        sql = <<-SQL
        CREATE TABLE IF NOT EXISTS cats (
            id INTEGER PRIMARY KEY,
            name TEXT,
            age INTEGER
        );
        SQL
        DB[:conn].execute(sql)
    end

    def self.find_by_id(id)
        sql = <<-SQL
        SELECT * FROM cats
        WHERE id = ?
        SQL
        DB[:conn].execute(sql, id)
        binding.pry
    end

    def save
        # refactor this method to only save a cat if it doesn't already exist
        sql = <<-SQL
        INSERT INTO cats (name, age)
        VALUES (?, ?)
        SQL
        DB[:conn].execute(sql, self.name, self.age)
        @id = DB[:conn].execute('SELECT last_insert_rowid() FROM cats')[0][0]
        self
    end

end