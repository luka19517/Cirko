package cirko.domain.repository;

import cirko.domain.config.TestConfig;
import cirko.domain.entity.TaskLogEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;

import java.util.List;

@SpringBootTest
@ContextConfiguration(classes = {TestConfig.class})
@Configurable
public class TaskLogRepositoryTest {

    @Autowired
    private TaskLogRepository taskLogRepository;

    @Test
    public void initialTest() {
        List<TaskLogEntity> taskLogs = taskLogRepository.findAll();
        System.out.println(taskLogs.size());
    }
}

