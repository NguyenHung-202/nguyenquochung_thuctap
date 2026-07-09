---
title: "Worklog Tuần 11"
date: 2026-07-10
weight: 11
chapter: false
pre: " <b> 1.11. </b> "
---
 
### Mục tiêu tuần 11:

* Hoàn thiện dự án: triển khai backend (API + AI) và frontend (Static Website) từ đầu đến cuối.
* Tích hợp luồng chấm điểm bài luận bằng AI trên AWS và kiểm thử end-to-end.
* Kiểm thử, xác minh và tăng cường độ ổn định cho hệ thống trước khi nộp báo cáo cuối.
* Dọn dẹp cuối cùng tài nguyên AWS thực hành và hoàn tất báo cáo.

### Các công việc thực tế trong tuần 11:

| Ngày | Nội dung | Nguồn tài liệu |
| --- | --- | --- |
| 29/06/2026 | - Khởi động tuần cuối của dự án: rà soát lại kế hoạch dự án, cập nhật các hạng mục còn lại với cán bộ hướng dẫn.<br>- Chuẩn bị môi trường triển khai: rà lại SAM template, Lambda handler, route API Gateway và biến môi trường cho backend. | Nội bộ FCAJ / Tài liệu AWS SAM |
| 01/07/2026 | - Triển khai backend bằng AWS SAM: đóng gói và deploy API (API Gateway + Lambda) cùng tích hợp Bedrock/Gemini.<br>- Kiểm tra output của CloudFormation stack, log Lambda và endpoint API trên AWS Console. | AWS SAM / Amazon API Gateway / AWS Lambda |
| 03/07/2026 | - Triển khai frontend trên Amazon S3 Static Website Hosting: đồng bộ tài nguyên build vào bucket, cập nhật Bucket Policy và cấu hình CloudFront.<br>- Trỏ `config.js` của frontend về endpoint API đã deploy, kiểm tra luồng request/response. | Amazon S3 / Amazon CloudFront |
| 04/07/2026 | - Kiểm thử end-to-end: chạy thử nhiều bài luận qua giao diện, kiểm tra phản hồi chấm điểm AI, xử lý lỗi và cấu hình CORS.<br>- Ghi nhận lỗi, sửa các lỗi nhỏ trong Lambda handler và triển khai lại backend. | Kế hoạch test nội bộ / Browser DevTools / CloudWatch Logs |
| 05/07/2026 | - Viết tài liệu Workshop: hoàn thiện các phần Deploy-backend, Deploy-frontend và Test-verify (VI + EN) kèm hình ảnh và sơ đồ kiến trúc.<br>- Cập nhật các phần Proposal, Self-evaluation và Feedback theo đúng kết quả triển khai cuối. | Nội dung Hugo (Workshop, Proposal, Self-evaluation, Feedback) |
| 07/07/2026 | - Dọn dẹp cuối cùng tài nguyên AWS: xóa các stack không dùng, dọn object cũ trên S3, xoay API key và xác nhận không còn dịch vụ chạy nền.<br>- Kiểm tra số dư credit AWS và lập danh sách tài nguyên phục vụ bàn giao. | AWS Console / Nội bộ FCAJ |
| 09/07/2026 | - Nộp báo cáo cuối kỳ: rà soát toàn bộ Hugo site, sửa link/ảnh hỏng và đẩy thay đổi cuối cùng lên GitHub repository.<br>- Trình bày dự án hoàn chỉnh với cán bộ hướng dẫn và nhận phản hồi đóng cửa. | GitHub (nguyenquochung_thuctap) / Review Mentor |

### Kết quả đạt được tuần 11:

* Triển khai thành công toàn bộ dự án trên AWS: backend (API Gateway + Lambda + Bedrock) và frontend (S3 Static Website + CloudFront) đã tích hợp end-to-end.
* Xác minh luồng chấm điểm bài luận bằng AI với nhiều test case và xử lý các lỗi phát sinh trong quá trình deploy.
* Hoàn thiện và chỉn chu báo cáo Workshop trên Hugo (Deploy-backend, Deploy-frontend, Test-verify, Cleanup) với nội dung song ngữ VI/EN.
* Cập nhật các phần Proposal, Self-evaluation và Feedback phản ánh đúng kết quả triển khai và bài học kinh nghiệm.
* Dọn dẹp tài khoản thực hành AWS, bảo toàn credit và chuẩn bị danh sách tài nguyên phục vụ bàn giao.
* Nộp báo cáo cuối kỳ và trình bày dự án trước cán bộ hướng dẫn.

