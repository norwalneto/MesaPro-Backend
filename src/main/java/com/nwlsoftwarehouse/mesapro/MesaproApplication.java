package com.nwlsoftwarehouse.mesapro;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MesaproApplication {

	public static void main(String[] args) {
		System.out.println("MYSQL HOST: " + System.getenv("MYSQLHOST"));
		SpringApplication.run(MesaproApplication.class, args);
	}

}
