# Architecture Overview

## System Objective

This repository demonstrates an enterprise-level Salesforce Marketing Cloud lifecycle automation architecture. It includes SQL segmentation logic, AMPscript personalization blocks, an automation pipeline, and API integration examples to support real-world marketing automation scenarios.

Design a scalable Salesforce Marketing Cloud lifecycle automation framework capable of handling high-volume customer data, behavioral segmentation, and multi-stage journey orchestration.

## Features

✔ Unified Segmentation Engine (VIP + Abandoned Cart + Engagement)  
✔ Automation Studio Pipelines  
✔ Journey Builder Lifecycle Orchestration  
✔ API Integration Framework  
✔ Architecture Diagram  
✔ Documentation & KPI Summary


## How to Use

1. Review the architecture diagram in `/architecture`
2. Explore SQL queries in `/sql`
3. View AMPscript and SSJS examples
4. Read documentation in `/documentation`
5. Understand outcomes in `/results`

---

## Core Components

### 1. Contact Builder Data Model
- Unified Contact Key across all data extensions
- Relationship mapping between Contact, Orders, and Engagement data
- Attribute groups structured for scalability

### 2. Segmentation Layer (SQL Engine)
- Scheduled SQL queries for behavioral segmentation
- VIP customer identification logic
- Abandoned cart detection logic
- Engagement scoring updates

### 3. Automation Studio Workflows
- Data ingestion automation
- Scheduled segmentation refresh
- Deduplication logic
- Data validation checks

### 4. Journey Builder Framework
- Entry source driven by segmentation DE
- Multi-branch decision splits
- Re-entry logic control
- Exit criteria configuration

### 5. Integration Layer
- REST API communication with external systems
- Loyalty status updates
- Error handling and response validation

---

## Data Flow Summary

1. Raw data enters via synchronized data sources.
2. SQL layer processes and segments customers.
3. Automation Studio refreshes target data extensions.
4. Journey Builder triggers lifecycle journeys.
5. API integration updates external systems.

---

## Governance & Controls

- ContactKey standardization
- Daily deduplication query
- Suppression logic for bounces
- Monitoring for automation failures

