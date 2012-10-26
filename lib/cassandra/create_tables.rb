require "rubygems"
require "cassandra-cql"
db = CassandraCQL::Database.new('127.0.0.1:9160')
#db.execute("CREATE KEYSPACE socialtango_development WITH strategy_class='org.apache.cassandra.locator.SimpleStrategy' AND strategy_options:replication_factor=1")
db.execute("USE socialtango_development")
db.execute("CREATE TABLE Widgets (id uuid, name varchar, description varchar, created_at varchar, updated_at varchar, PRIMARY KEY (id)) WITH comparator=UTF8Type AND default_validation=UTF8Type;")
#db.execute("CREATE TABLE blog_entry WITH comparator = TimeUUIDType AND key_validation = UTF8Type AND default_validation = UTF8Type; ")