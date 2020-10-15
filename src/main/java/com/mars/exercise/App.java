package com.mars.exercise;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@ComponentScan(basePackages = {"com.mars.exercise.*"})
public class App 
{
	public static void main( String[] args )
	{
		System.out.println("STARTING: MARS SPRING BOOT");
		SpringApplication.run(App.class, args);
		System.out.println("SUCCESSFULLY STARTED: MARS SPRING BOOT");
	}
}
