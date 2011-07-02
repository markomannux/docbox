dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    username = "docbox"
    password = "docbox"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:postgresql:docbox-dev"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql:docbox-test"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:file:prodDb;shutdown=true"
        }
    }
}
