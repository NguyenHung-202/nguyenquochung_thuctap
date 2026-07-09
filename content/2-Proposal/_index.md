---
title: "Proposal"
date: 2026-06-25
weight: 2
chapter: false
pre: " <b> 2. </b> "
---

# Automated English Essay Scoring System
## An Enterprise-Grade AWS Serverless & GenAI Orchestration Architecture

### 1. Executive Summary
The Automated English Essay Scoring System is an end-to-end essay grading platform built natively on AWS Cloud and integrated with the Google Gemini API to deliver fast, accurate, and consistent English essay evaluation. The system enables users to upload essays, automatically extract their content, run AI-based analysis, and return scores together with detailed, structured feedback.

### 2. Problem Statement

#### Current Challenges
* Today, English essay scoring is mostly manual — time-consuming, costly, and dependent on the individual grader, which leads to inconsistent results. Learners also have to wait a long time to receive their score and detailed feedback.

#### Proposed Solution
* Build a serverless English essay scoring system on AWS, integrated with the Google Gemini API, to analyze content, evaluate essays, and return scores with fast, accurate feedback.

#### Benefits & Return on Investment (ROI)
* The system reduces grading time and cost, improves evaluation consistency, and increases the effectiveness of learner support. The serverless architecture on AWS also optimizes operating cost, scales on demand, and delivers long-term ROI.

### 3. Solution Architecture

The system follows a fully serverless architecture on AWS. Users access the application through AWS Amplify and Amazon CloudFront, then call Amazon API Gateway. Amazon Cognito authenticates users; AWS Lambda runs the business logic; Amazon S3 stores uploaded essays and generated reports; Amazon SQS together with AWS Step Functions orchestrate the processing workflow. Amazon Textract extracts text from documents, and the Google Gemini API performs essay scoring and evaluation. Results are persisted into Amazon DynamoDB and Amazon S3, while Amazon SNS pushes notifications to the end user. The whole system is monitored with Amazon CloudWatch, AWS X-Ray, and secured with AWS IAM.

![Automated English Essay Scoring System Architecture](/images/AWS-Serverless-AI-Architecture.drawio.png)

#### AWS Services Used

| Functional Area | AWS Services | Detailed Technical Role |
| :--- | :--- | :--- |
| **Edge / Frontend** | **AWS Amplify + CloudFront** | Host and distribute the frontend application globally with low latency. |
| **Auth & API** | **Amazon Cognito + API Gateway** | JWT-based authentication and secure endpoints to issue S3 Presigned URLs. |
| **Document Intake** | **Amazon S3 + Amazon SQS** | Store raw essays in a secured bucket and publish events into the queue to offload the compute tier. |
| **Core AI Orchestration** | **AWS Step Functions** | Orchestrate the state machine workflow, manage branching, track progress, and handle errors. |
| **Document Analysis** | **Amazon Textract** | Run advanced OCR to extract text blocks from images or scanned PDFs. |
| **AI Evaluation** | **AWS Lambda + Gemini API** | Invoke `Gemini 1.5 Flash` to score grammar structure, writing quality, and return a structured JSON result. |
| **Data Storage** | **Amazon DynamoDB + Amazon S3** | Store processing status and aggregated scores in NoSQL; persist detailed JSON reports in the results S3 bucket. |
| **Notifications** | **Amazon SNS** | Publish status updates and the final score (Email/SMS) directly to the User/Admin. |

---

### 4. Technical Implementation
*Implementation phases*

1. *System analysis & design*: Functional analysis, system architecture design, database design, UI design, and selection of appropriate AWS services.
2. *System development*: Build the user interface, develop the backend, integrate AWS services (Amplify, API Gateway, Lambda, Cognito, S3, DynamoDB…), and integrate the Google Gemini API for essay scoring. 
3. *Testing*: Functional testing, bug fixing, performance tuning, security review, evaluation of scoring results, and finalization.
4. *Deployment*: Deploy the system to AWS, run real-world operation checks, evaluate results, finalize documentation, and prepare the report and presentation.

### 5. Infrastructure & Operations

#### Security, Governance & Monitoring (Cross-cutting)
- **Keywords**: *AWS IAM, Amazon X-Ray, Amazon CloudWatch, AWS Systems Manager*.
- **Explanations**: 
    * **AWS IAM**: Apply the Least Privilege principle to execution roles between serverless services.
    * **Amazon CloudWatch**: Centralize logs, monitor performance metrics, and trigger automated alerts when error rates exceed thresholds.
    * **Amazon X-Ray**: Provide distributed tracing across API Gateway, Lambda, and Step Functions to localize latency bottlenecks.
    * **AWS Systems Manager**: Securely store environment variables and sensitive configuration (such as the Google Gemini API Key) in Parameter Store.

---

### 6. Budget Estimation

#### Infrastructure Costs
- **AWS Amplify**: 2.50 USD/month (120 build minutes, 2 GB storage, 30 GB data transfer).
- **Amazon CloudFront**: 1.20 USD/month (30 GB Internet data transfer out, 100,000 HTTPS requests).
- **Amazon API Gateway**: 0.10 USD/month (15,000 REST API requests).
- **Amazon Cognito**: 0.00 USD/month (300 Monthly Active Users — within Free Tier).
- **AWS Lambda**: 0.25 USD/month (12,000 requests, 512 MB memory, ~2 s average execution).
- **Amazon S3 Standard**: 0.60 USD/month (20 GB storage, 6,000 PUT requests, 10,000 GET requests).
- **Amazon SQS**: 0.01 USD/month (6,000 message requests).
- **Amazon Textract**: 9.00 USD/month (6,000 document pages processed).
- **Amazon DynamoDB**: 0.80 USD/month (2 GB storage, 20,000 Read requests, 10,000 Write requests).
- **Amazon SNS**: 0.01 USD/month (3,000 notifications delivered).
- **Amazon CloudWatch**: 1.20 USD/month (5 GB logs, 20 metrics, 1 dashboard).

**Total infrastructure cost: 15.67 USD / month, 188.04 USD / 12 months**

---

### 7. Risk Assessment

#### Risk Matrix
- Network outages.
- Schedule slippage due to large workload.
- AWS service costs exceeding the budget.
- Errors when integrating AWS services and the Google Gemini API.
- Inaccurate or unstable AI essay evaluation.
- Limited experience with some services.

#### Mitigation Strategies
- Network: Local caching on Raspberry Pi using Docker.
- Schedule: Build a detailed weekly plan and prioritize core features first.
- AWS cost overrun: Use AWS Pricing Calculator for estimates, monitor Billing Dashboard, and leverage AWS Free Tier whenever possible.
- AWS and Gemini API integration errors: Test each component independently before full system integration.
- Inaccurate AI evaluation: Build clear prompts, validate against multiple datasets, and iterate on the evaluation logic.
- Limited AWS experience: Study AWS documentation, practice on a test environment, and follow official AWS guides.

#### Contingency Plans
- Prioritize completion of core features, monitor cost continuously, and back up data periodically to minimize risk. When incidents occur, the system will perform recovery, retry the request, or roll back to a stable version to ensure continuous operation.

### 8. Expected Outcomes

#### Technical Improvements
* **Automatic Scalability**: Fully replaces the manual grading workflow with an automated engine running 24/7, capable of scaling elastically with sudden submission spikes without overloading the system.
* **Multi-Format Processing**: Builds a resilient intake channel that automatically converts handwritten photos, PDF files, and raw text into one standardized, unified data context.
* **Structured Data Modeling**: Normalizes free-form essays into strict JSON schemas, breaking out each scoring criterion in detail to serve downstream consuming applications.

#### Long-term Value
* **Academic Research Dataset**: Curates a clean, structured historical essay database that becomes a valuable asset for future NLP research or for fine-tuning specialized Large Language Models (LLMs) within the lab.
* **Documentation & Reusable Blueprint**: Acts as a clean blueprint for a pure serverless architecture, so other development teams can learn the asynchronous data buffering, secured-edge integration, and cost-optimized orchestration patterns used here.
