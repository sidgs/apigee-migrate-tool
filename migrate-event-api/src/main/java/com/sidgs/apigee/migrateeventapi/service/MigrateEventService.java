package com.sidgs.apigee.migrateeventapi.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sidgs.apigee.migrateeventapi.model.MigrationEvent;
import com.sidgs.apigee.migrateeventapi.repo.MigrateEventRepository;

@Service
public class MigrateEventService {
    
    MigrateEventRepository repo; 

    public void save ( MigrationEvent e) {
        repo.save(e) ; 
    }

    public List<MigrationEvent> list() {
        List<MigrationEvent> events = new ArrayList<MigrationEvent>(); 
        repo.findAll().iterator().forEachRemaining(events::add);
        return events ; 
    }

}
