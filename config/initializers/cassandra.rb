CassandraObject::Base.establish_connection(
  keyspace: 'socialtango_development',
  servers: '127.0.0.1:9160',
  thrift: {
    timeout: 20,
    retries: 2
  }
)