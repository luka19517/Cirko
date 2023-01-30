package cirko.domain.repository;

import cirko.domain.entity.TaskLogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskLogRepository extends JpaRepository<TaskLogEntity, Long> {
}
