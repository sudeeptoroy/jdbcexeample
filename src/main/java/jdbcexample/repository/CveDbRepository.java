package jdbcexample.repository;

import jdbcexample.model.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CveDbRepository extends JpaRepository<CveDb, Long> {

}
