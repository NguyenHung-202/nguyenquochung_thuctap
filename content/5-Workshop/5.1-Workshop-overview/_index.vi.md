---
title : "Giới thiệu"
date : 2026-07-08
weight : 1
chapter : false
pre : " <b> 5.1. </b> "
---

#### Kiến trúc hệ thống

Hệ thống được xây dựng hoàn toàn trên nền tảng **Serverless** của AWS, giúp tự động co giãn theo lượng người dùng, tối ưu chi phí và không cần quản lý máy chủ.

![System Architecture](/sodo.png)

#### Các thành phần chính của dự án

1. **Xác thực & Bảo mật (Giai đoạn 1):**
   * **AWS Cognito User Pool:** Quản lý đăng ký, đăng nhập tài khoản và xác minh JWT token từ client.
   * **AWS IAM Role & Policies:** Áp dụng nguyên tắc đặc quyền tối thiểu (least privilege).
2. **API & Tiếp nhận dữ liệu (Giai đoạn 2):**
   * **Amazon API Gateway:** Cung cấp REST endpoint bảo mật, được bảo vệ bởi Cognito.
   * **S3 Presigned URL:** Cho phép trình duyệt upload trực tiếp lên S3, bỏ qua Lambda.
   * **Amazon SQS:** Tách biệt phản hồi API khỏi việc khởi chạy state machine phía backend.
3. **AI Pipeline (Giai đoạn 3):**
   * **AWS Step Functions:** Điều phối toàn bộ workflow serverless.
   * **Amazon Textract:** Trích xuất văn bản OCR từ tài liệu viết tay hoặc in sẵn.
   * **Google Gemini AI:** Đánh giá ngữ pháp, từ vựng, cấu trúc và tính mạch lạc theo thang 100 điểm.
4. **Lưu trữ & Thông báo (Giai đoạn 4):**
   * **Amazon DynamoDB:** Lưu trữ metadata, trạng thái và điểm tổng kết.
   * **Amazon S3 (Result Bucket):** Lưu trữ báo cáo phản hồi JSON chi tiết.
   * **Amazon SNS:** Gửi kết quả chấm điểm trực tiếp đến email người dùng.
5. **Phân phối (Giai đoạn 5):**
   * **Amazon CloudFront & S3 Website:** Phân phối React SPA qua HTTPS bảo mật trên toàn cầu.