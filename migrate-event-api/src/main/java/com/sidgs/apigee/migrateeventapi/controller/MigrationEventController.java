package com.sidgs.apigee.migrateeventapi.controller;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sidgs.apigee.migrateeventapi.model.MigrationEvent;
import com.sidgs.apigee.migrateeventapi.repo.MigrateEventRepository;
import com.sidgs.apigee.migrateeventapi.service.MigrateEventService;

@RestController
@RequestMapping("/migration/event")
public class MigrationEventController {

    @Autowired
    MigrateEventService service ; 

    @Autowired
    MigrateEventRepository repo; 

    @PostMapping
    public void publish (@RequestBody MigrationEvent event ) {
        service.save(event);    
    }


    @GetMapping ("/{traceId}")
    public void getMigrationEvent(@PathVariable String traceId) {
        repo.findByTraceId(traceId); 
    }
    
}
