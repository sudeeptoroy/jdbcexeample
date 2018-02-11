package jdbcexample;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RpmDbRepository extends JpaRepository<RpmDb, Long> {

}
