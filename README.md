📩 SFMC Lifecycle Automation Framework

Enterprise-grade Salesforce Marketing Cloud lifecycle automation assets including AMPscript, SQL segmentation, personalization logic, and journey orchestration patterns.

This repository demonstrates production-ready lifecycle marketing implementations designed for scalability, performance, and maintainability.

📌 Project Overview

This project provides reusable and structured assets for building lifecycle marketing journeys inside Salesforce Marketing Cloud.

Focus Areas:

Post-purchase cross-sell automation

Behavioral segmentation via SQL

Dynamic personalization with AMPscript

Coupon management logic

Inventory-aware product recommendations

Journey Builder-ready email templates

Data-driven lifecycle orchestration

This repository is designed to reflect real-world enterprise implementation standards rather than Trailhead-style examples.

🏗 Architecture Philosophy

The framework follows these principles:

Defensive programming (fallback handling)

Ordered data retrieval (no random lookups)

Inventory-aware logic

Subscriber-level coupon handling

Scalable data extension design

Journey-safe personalization

Click tracking with RedirectTo()

Clean code separation and documentation

All logic assumes structured Data Extensions and controlled data flow.

📂 Repository Structure
ruchika-work-sfmc-lifecycle/
│
├── ampscript/
│   ├── cross-sell-recommendation.amp
│   ├── coupon-logic.amp
│   └── personalization-utilities.amp
│
├── sql/
│   ├── high-value-customers.sql
│   ├── inactive-users-reengagement.sql
│   └── post-purchase-segmentation.sql
│
├── cloudpages/
│   ├── coupon-redemption-page.amp
│   └── form-capture-handler.amp
│
├── docs/
│   ├── data-extension-schema.md
│   ├── journey-architecture.md
│   └── deployment-guide.md
│
├── architecture/
│   └── lifecycle-flow-diagram.png
│
├── README.md
└── LICENSE

🗄 Data Extension Requirements
1️⃣ Product_Recommendations
Field Name	Type	Description
Category	Text	Purchase category
ProductName	Text	Recommended product
ProductURL	Text	Product link
Priority	Number	Display ranking
InStock	Boolean	Inventory status
2️⃣ Coupon_Codes
Field Name	Type	Description
SubscriberKey	Text	Unique subscriber
CouponCode	Text	Unique discount code
IsUsed	Boolean	Coupon status
ExpiryDate	Date	Expiration date
🔄 Example Use Case: Post-Purchase Cross-Sell Journey

Flow:

Customer completes purchase

Data pushed to Entry Data Extension

Journey Builder triggers email

AMPscript:

Retrieves last purchase category

Selects highest priority in-stock product

Pulls unused coupon

Applies fallback if missing

Formats expiry date

RedirectTo() ensures click tracking

Optional logging can store email interactions

⚙ Deployment Guide

Create required Data Extensions

Upload AMPscript into Email Studio

Validate in Preview & Test

Add to Journey Builder email activity

Confirm send-time lookup limits

Test with seeded subscriber data

Validate coupon logic edge cases

🧠 Engineering Considerations

Avoid unfiltered Lookup() calls in production

Always use LookupOrderedRows() when order matters

Implement inventory filters

Include null handling for all subscriber attributes

Avoid static coupon codes in enterprise environments

Format dates before output

Use RedirectTo() for tracking consistency

Keep logic separated from HTML layout

📈 Future Enhancements

AI-based product scoring integration

Multi-product recommendation blocks

Send-time logging to audit DE

API-triggered personalization events

SSJS-based advanced logic handling

Dynamic countdown timers

📎 Intended Audience

Salesforce Marketing Cloud Developers

Technical Architects

CRM Engineers

Marketing Automation Consultants

Enterprise Lifecycle Marketing Teams

📜 License

MIT License — see LICENSE file.
