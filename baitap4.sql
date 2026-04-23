-- Soft Delete: Đánh dấu các đơn hàng bị hủy
UPDATE ORDERS
SET IsDeleted = 1
WHERE Status = 'Canceled';

-- Truy vấn cho hệ thống bán hàng 
SELECT * 
FROM ORDERS 
WHERE IsDeleted = 0;

-- Truy vấn cho kế toán 
SELECT * 
FROM ORDERS 
WHERE Status = 'Canceled';

-- Em chọn Soft Delete vì không làm mất dữ liệu, vẫn phục vụ kiểm toán.
-- Hard Delete sẽ xóa vĩnh viễn nên không phù hợp.
