package com.transporter.app.service;

import com.transporter.app.model.Bus;
import com.transporter.app.repository.BusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


// Bus service
@Service
public class BusService{

    private final BusRepository busRepository;

    @Autowired
    public BusService(BusRepository busRepository) {
        this.busRepository = busRepository;
    }

    public List<Bus> findAllBuses() {
        return busRepository.findAll();
    }

    public Bus findBusById(int id) {
        return busRepository.findBusById(id);
    }

    public void saveBus(Bus bus) {
        bus.setIsAvailable(1);
        busRepository.save(bus);
    }

    public void deleteBusById(int id) {
        busRepository.deleteById(id);
    }

    public Bus findByBusRegNumber(String busRegNumber) {
        return busRepository.findByBusRegNumber(busRegNumber);
    }


}
