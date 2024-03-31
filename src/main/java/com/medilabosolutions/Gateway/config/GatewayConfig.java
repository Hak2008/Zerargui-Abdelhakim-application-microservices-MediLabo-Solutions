package com.medilabosolutions.Gateway.config;

import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class GatewayConfig {

    @Bean
    public GatewayFilter basicAuthFilter() {
        return (exchange, chain) -> {
            String token = "Basic " + java.util.Base64.getEncoder().encodeToString("user:user".getBytes());
            return chain.filter(exchange.mutate().request(request -> request.headers(headers -> headers.set("Authorization", token))).build());
        };
    }

}

