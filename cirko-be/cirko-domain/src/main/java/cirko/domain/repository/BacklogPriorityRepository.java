package cirko.domain.repository;

import cirko.domain.entity.BacklogPriorityEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BacklogPriorityRepository extends JpaRepository<BacklogPriorityEntity, String> {
}
