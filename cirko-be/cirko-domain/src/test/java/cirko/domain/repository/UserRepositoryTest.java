package cirko.domain.repository;

import cirko.domain.config.TestConfig;
import cirko.domain.entity.UserEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;

import java.util.List;

@SpringBootTest
@ContextConfiguration(classes = {TestConfig.class})
@Configurable
public class UserRepositoryTest {

    @Autowired
    private UserRepository userRepository;

    @Test
    public void initialTest() {
        List<UserEntity> usersFound = userRepository.findAll();
        System.out.println(usersFound.size());
    }
}

