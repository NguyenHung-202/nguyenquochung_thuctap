---

title: "Worklog Tuần 7"
date: 2026-07-08
weight: 7
chapter: false
pre: " <b> 1.7. </b> "
---
 
### Mục tiêu tuần 7:

* Ứng dụng AWS CloudFormation để xây dựng hạ tầng động và tự động.
* Giám sát hiệu năng hệ thống bằng CloudWatch Metrics và Alarms.
* Khám phá kiến trúc Hybrid Cloud và định tuyến DNS nâng cao.
* Tổng kết tư duy quản trị hạ tầng và quản lý chi phí Cloud.

### Các công việc thực tế trong tuần 7:

| Ngày | Nội dung | Nguồn tài liệu |
| --- | --- | --- |
| 01/06/2026 | - Lên đơn vị thực tập: Thảo luận với cán bộ hướng dẫn về tư duy FinOps (Quản lý tài chính đám mây).<br>- Thực hành Lab 7: Thiết lập AWS Budgets với định mức $10.00 và cấu hình hệ thống tự động gửi email cảnh báo bảo vệ hạn mức thẻ cá nhân khi các ngưỡng 85% và 100%.<br>- Thực hành Lab 8: Sử dụng CloudFormation để triển khai hạ tầng giám sát tự động. Truy cập CloudWatch Metrics để thể hiện đồ theo chỉ số disk_used_percent. Cấu hình CloudWatch Alarm kèm SNS Topic để tự động gửi email cảnh báo khi điều kiện vượt ngưỡng (10 sự kiện/phút). | Lab 7: https://000007.awsstudygroup.com/ <br> Lab 8: https://000008.awsstudygroup.com/ |
| 03/06/2026 | - Thực hành Lab 9: Tìm hiểu các gói AWS Support.<br>- Thực hành tạo và đóng phiếu hỗ trợ giá lập (AWS Support Case) thuộc danh mục thao tác mức chi phí (Charge inquiry) để làm quen với quy trình giải quyết sự cố và tài chính với AWS. | Lab 9: https://000009.awsstudygroup.com/ |
| 05/06/2026 | - Thực hành Lab 10: Nghiên cứu mô hình Hybrid Cloud với cơ chế chuyển tiếp DNS giữa AWS và On-Premises.<br>- Tự tay xử lý hệ thống khi tài khoản bị giới hạn thanh toán xác thực: chuyển hướng cấu hình Route 53 Outbound Endpoint trên 2 vùng sẵn sàng (Multi-AZ) và tạo Resolver Rule để chuyển tiếp truy vấn tên miền nội bộ corp.internal. | Lab 10: https://000010.awsstudygroup.com/ |
| 06/06/2026 | - Tổng hợp kiến thức Tuần 7: hệ thống hoá tư duy quản trị toàn bộ, giám sát tài nguyên và định tuyến nâng cao.<br>- Thực hành kỹ năng dọn dẹp (Clean up): Áp dụng quy trình ghi nhận ngắt để xóa các Stack lỗi trên CloudFormation, gỡ liên kết VPC, xóa Endpoint và Alarm để cắt khỏi trạng thái đám mây 100% và bảo vệ credit. | Nội bộ FCAJ / Rà soát lại link các Lab trên |

### Kết quả đạt được tuần 7:

* Hoàn thành kiểm tra FinOps và cấu hình cảnh báo ngân sách AWS.
* Triển khai giám sát và cảnh báo bằng CloudFormation và CloudWatch.
* Nắm quy trình AWS Support và yêu cầu Charge inquiry.
* Thực hành kết nối Hybrid Cloud và chuyển tiếp DNS nội bộ khi hạn chế thanh toán.
* Rèn kỹ năng cleanup để bảo toàn credit tài khoản và loại bỏ hạ tầng lỗi.


