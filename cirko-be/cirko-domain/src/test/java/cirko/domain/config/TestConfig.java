package cirko.domain.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@ComponentScan("cirko.domain")
@EnableAutoConfiguration
@EntityScan("cirko.domain.*")
@EnableJpaRepositories(basePackages = "cirko.domain.repository")
public class TestConfig {
}
