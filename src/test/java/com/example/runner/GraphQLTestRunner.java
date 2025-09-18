package com.example.runner;

import com.intuit.karate.junit5.Karate;

public class GraphQLTestRunner {


    @Karate.Test
    Karate testGraphQL() {

        return Karate.run("classpath:features");

    }
}