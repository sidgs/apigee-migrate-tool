package com.sidgs.apigee.migrateeventapi.model;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Type;
import org.hibernate.annotations.TypeDef;

import com.vladmihalcea.hibernate.type.json.JsonBinaryType;

import lombok.Data;

@Data
@Entity
@TypeDef(name = "jsonb", typeClass = JsonBinaryType.class)

public class MigrationEvent {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    Long id ; 

    String apigeeOrg; 
    String apigeeEnv ; 
    String traceId ; 
    String entityType; 
    String operation ; //export or import 
    String result ; // Pass or Fail 
    String entityInfo ; 
    @Type (type ="jsonb")
    @Column (columnDefinition= "jsonb")
    String response; 
    
}
