package pr19.fbo.domain.service.booking;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pr19.fbo.domain.entity.AirportEntity;
import pr19.fbo.domain.repository.AirportRepository;

@Service
public class BookingServiceImpl implements BookingService {

  @Autowired
  AirportRepository airportRepository;

  @Override
  public void displaySearchFlight() {
    List<AirportEntity> airportEntitys = (List<AirportEntity>) airportRepository.findAll();
    for (AirportEntity airportEntity : airportEntitys) {
      System.out.println(airportEntity.getLocation());
    }
  }

}
