package cirko.domain.repository;

import cirko.domain.entity.BacklogEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BacklogRepository extends JpaRepository<BacklogEntity, Long> {
}
