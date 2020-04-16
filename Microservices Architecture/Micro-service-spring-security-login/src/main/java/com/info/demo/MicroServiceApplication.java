package com.info.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.cloud.openfeign.EnableFeignClients;


@EnableFeignClients
@EnableCircuitBreaker
@EnableZuulProxy
@EnableDiscoveryClient
@SpringBootApplication
public class MicroServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(MicroServiceApplication.class, args);
    }

}
