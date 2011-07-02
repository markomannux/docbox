package org.rebeltuna.docbox

import grails.test.*
import groovy.sql.*

class DatabaseConnectionTests extends GroovyTestCase {
    def dataSource
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testDatabaseConnection() {
        def sql = new Sql(dataSource)

        def res = sql.rows("select 1+1 as result")
        assert res.size() == 1
    }
}
