package pr19.fbo.domain.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pr19.fbo.domain.entity.OrdersEntity;

@Repository
public interface OrdersRepository extends CrudRepository<OrdersEntity, Integer> {

}
