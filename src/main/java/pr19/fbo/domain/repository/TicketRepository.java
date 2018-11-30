package pr19.fbo.domain.repository;

import org.springframework.data.repository.CrudRepository;
import pr19.fbo.domain.entity.TicketEntity;

public interface TicketRepository extends CrudRepository<TicketEntity, Integer> {

}
