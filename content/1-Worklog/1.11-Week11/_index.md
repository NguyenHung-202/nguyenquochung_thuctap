---
title: "Week 11 Worklog"
date: 2026-07-10
weight: 11
chapter: false
pre: " <b> 1.11. </b> "
---
 
### Week 11 Objectives:

* Finalize the project: deploy backend (API + AI) and frontend (Static Website) end-to-end.
* Integrate the AI Essay Scoring workflow on AWS and verify the end-to-end flow.
* Test, validate and harden the solution before final submission.
* Perform the final cleanup of AWS practice resources and wrap up the report.

### Actual tasks in Week 11:

| Date | Content | Reference |
| --- | --- | --- |
| 29/06/2026 | - Project kick-off for the final week: revisited the project plan and re-aligned the remaining tasks with the mentor.<br>- Prepared the deployment environment: review SAM template, Lambda handlers, API Gateway routes and environment variables for the backend. | Internal FCAJ / AWS SAM documentation |
| 01/07/2026 | - Deployed the backend with AWS SAM: packaged and deployed the API (API Gateway + Lambda) and the Bedrock/Gemini integration.<br>- Verified CloudFormation stack outputs, Lambda logs and API endpoints on the AWS Console. | AWS SAM / Amazon API Gateway / AWS Lambda |
| 03/07/2026 | - Deployed the frontend on Amazon S3 Static Website Hosting: synced the built assets to the bucket and updated the Bucket Policy + CloudFront configuration.<br>- Pointed the frontend `config.js` to the deployed API endpoint and validated the request/response flow. | Amazon S3 / Amazon CloudFront |
| 04/07/2026 | - End-to-end testing: ran multiple essay samples through the UI, validated the AI scoring response, checked error handling and CORS configuration.<br>- Captured issues, fixed minor bugs in the Lambda handler and re-deployed the backend. | Internal test plan / Browser DevTools / CloudWatch Logs |
| 05/07/2026 | - Wrote the Workshop documentation: completed the Deploy-backend, Deploy-frontend and Test-verify sections (VI + EN) with screenshots and architecture diagrams.<br>- Updated the Proposal, Self-evaluation and Feedback sections based on the final implementation. | Hugo content (Workshop, Proposal, Self-evaluation, Feedback) |
| 07/07/2026 | - Final cleanup of AWS resources: deleted unused stacks, removed old S3 objects, rotated API keys and confirmed no idle services were left running.<br>- Verified AWS credits balance and documented the resource list for hand-over. | AWS Console / Internal FCAJ |
| 09/07/2026 | - Submitted the final report: reviewed the full site on Hugo, fixed broken links/images, and pushed the final changes to the GitHub repository.<br>- Presented the completed project to the mentor and collected closing feedback. | GitHub (nguyenquochung_thuctap) / Mentor review |

### Week 11 Achievements:

* Successfully deployed the full project on AWS: backend (API Gateway + Lambda + Bedrock) and frontend (S3 Static Website + CloudFront) integrated end-to-end.
* Validated the end-to-end AI essay scoring flow with multiple test cases and fixed deployment issues.
* Completed and polished the full Hugo workshop report (Deploy-backend, Deploy-frontend, Test-verify, Cleanup) with bilingual VI/EN content.
* Updated the Proposal, Self-evaluation and Feedback sections to reflect the final implementation and lessons learned.
* Cleaned up the AWS practice account, preserved credits and prepared the resource list for hand-over.
* Submitted the final report and presented the project to the mentor.

