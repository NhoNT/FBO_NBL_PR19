package pr19.fbo.domain.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pr19.fbo.domain.entity.RouteEntity;

@Repository
public interface RouteRepository extends CrudRepository<RouteEntity, Integer> {

}
