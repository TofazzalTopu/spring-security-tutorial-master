package com.info.demo.model;


import io.micrometer.core.lang.NonNull;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

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