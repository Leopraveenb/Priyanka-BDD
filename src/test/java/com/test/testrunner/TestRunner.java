package com.test.testrunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src/test/resources/features/Adactin.feature",
    glue = "org.test.stepdefinition")
            
            
    
     public class TestRunner {

}
