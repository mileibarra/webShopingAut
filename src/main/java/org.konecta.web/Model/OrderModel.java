package org.konecta.web.Model;

import lombok.Data;

@Data
public class OrderModel {
    private String name, country, city, creditCard, month, year;
}
