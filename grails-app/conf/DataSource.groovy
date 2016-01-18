dataSource {
    pooled = true
    driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
	dialect = org.hibernate.dialect.SQLServerDialect
	url = "jdbc:sqlserver://localhost:1433;databaseName=PPP"
    username = "sa"
    password = "123456"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"
            //dbCreate = "create-drop"
            url = "jdbc:sqlserver://localhost:1433;databaseName=PPP"
            driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
            username = "sa"
            password = '123456'
            dialect = org.hibernate.dialect.SQLServerDialect
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:sqlserver://localhost:1433;databaseName=PPP"
            driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
            username = "sa"
            password = '123456'
            dialect = org.hibernate.dialect.SQLServerDialect
        }
    }
    production {
        dataSource {
            dbCreate = "update"
           	url = "jdbc:sqlserver://localhost:1433;databaseName=PPP"
            driverClassName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
            username = "sa"
            password = '123456'
            dialect = org.hibernate.dialect.SQLServerDialect
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
