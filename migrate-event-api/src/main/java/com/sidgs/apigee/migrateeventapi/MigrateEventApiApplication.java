package com.sidgs.apigee.migrateeventapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2

public class MigrateEventApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(MigrateEventApiApplication.class, args);
	}

}
