package com.sidgs.apigee.migrateeventapi.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sidgs.apigee.migrateeventapi.model.MigrationEvent;

public interface MigrateEventRepository extends CrudRepository<MigrationEvent, Long>{

    List<MigrationEvent> findByTraceId(String traceId);
    
}
