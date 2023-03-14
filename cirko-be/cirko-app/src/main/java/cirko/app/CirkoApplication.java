package cirko.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@ComponentScan(basePackages = "cirko")
@EnableAutoConfiguration
@EntityScan(basePackages = "cirko.domain.entity")
@EnableJpaRepositories(basePackages = "cirko.domain.repository")
public class CirkoApplication {

    public static void main(String[] args) {
        SpringApplication.run(CirkoApplication.class, args);
    }

    @Bean
    WebMvcConfigurer corsConfigurationSource() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/*")
                        .allowedOrigins("http://localhost:8081")
                        .allowCredentials(true)
                ;
            }
        };
    }

}
