package cirko.domain.repository;

import cirko.domain.config.TestConfig;
import cirko.domain.entity.BacklogEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;

import java.util.List;

@SpringBootTest
@ContextConfiguration(classes = {TestConfig.class})
@Configurable
public class BacklogRepositoryTest {

    @Autowired
    private BacklogRepository backlogRepository;

    @Test
    public void initialTest() {
        List<BacklogEntity> backlogs = backlogRepository.findAll();
        System.out.println(backlogs.size());
    }
}

