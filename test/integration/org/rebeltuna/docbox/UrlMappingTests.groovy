package org.rebeltuna.docbox

import grails.test.*
import org.springframework.core.io.FileSystemResourceLoader
import org.springframework.core.io.support.PathMatchingResourcePatternResolver

class UrlMappingTests extends GrailsUrlMappingsTestCase {
    public void setUp() {
        super.setUp()
        patternResolver = new PathMatchingResourcePatternResolver(new FileSystemResourceLoader())
    }

    public void tearDown() {
        super.tearDown()
    }

    void testDeskForward() {
        assertForwardUrlMapping("/desk", view:"desk")
    }
}
