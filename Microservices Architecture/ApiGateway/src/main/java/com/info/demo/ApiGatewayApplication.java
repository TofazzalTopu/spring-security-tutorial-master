package com.info.demo;

import lombok.Data;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@EnableCircuitBreaker
@EnableDiscoveryClient
@EnableZuulProxy
@SpringBootApplication
public class ApiGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApiGatewayApplication.class, args);
    }

}


@Data
class Car {
    private String name;
}
/*

@FeignClient("car-service")
interface CarClient {
    @GetMapping("/cars")
    @CrossOrigin
    Resources<Car> readCars();
}

@RestController
class CoolCarController {
    private final CarClient carClient;

    public CoolCarController(CarClient carClient) {
        this.carClient = carClient;
    }

    private Collection<Car> fallback() {
        return new ArrayList<>();
    }

    @GetMapping("/cool-cars")
    @CrossOrigin
    @HystrixCommand(fallbackMethod = "fallback")
    public Collection<Car> goodCars() {
        return carClient.readCars()
                .getContent()
                .stream()
                .filter(this::isCool)
                .collect(Collectors.toList());
    }

    private boolean isCool(Car car) {
        return !car.getName().equals("AMC Gremlin") &&
                !car.getName().equals("Triumph Stag") &&
                !car.getName().equals("Ford Pinto") &&
                !car.getName().equals("Yugo GV");
    }
}*/
