package com.info.demo;

import com.info.demo.model.Car;
import com.info.demo.repository.CarRepository;
import io.micrometer.core.lang.NonNull;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.stream.Stream;

@EnableDiscoveryClient
@SpringBootApplication
public class DemoApplication {


    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    @Bean
    ApplicationRunner init(CarRepository repository) {
        return args -> {
            Stream.of("Ferrari", "Jaguar", "Porsche", "Lamborghini", "Bugatti",
                    "AMC Gremlin", "Triumph Stag", "Ford Pinto", "Yugo GV").forEach(name -> {
                repository.save(new com.info.demo.model.Car(name));
            });
            repository.findAll().forEach(System.out::println);
        };
    }


    @Data
    @NoArgsConstructor
    @Entity
    public class Car {
        public Car(String name) {
            this.name = name;
        }

        @Id
        @GeneratedValue
        private Long id;
        @NonNull
        private String name;
    }

}



