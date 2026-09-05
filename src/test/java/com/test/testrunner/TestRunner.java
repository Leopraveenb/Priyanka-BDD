package com.test.testrunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src/test/resources/features/Adactin.feature",
    glue = "org.test.stepdefinition",
    plugin = {"pretty","html:target/cucumber-report.html","json:target/cucumber.json"})
            
            
    
     public class TestRunner {

}
