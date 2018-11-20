package pr19.fbo.domain.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pr19.fbo.domain.entity.AirportEntity;

@Repository
public interface AirportRepository extends CrudRepository<AirportEntity, Integer> {

  AirportEntity findByAirportCode(String airportCode);
}
