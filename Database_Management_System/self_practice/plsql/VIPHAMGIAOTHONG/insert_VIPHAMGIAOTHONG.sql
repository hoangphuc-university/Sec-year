INSERT INTO LOI VALUES ('L01', 'Vượt đèn đỏ', 500000);
INSERT INTO LOI VALUES ('L02', 'Đi ngược chiều', 800000);
INSERT INTO LOI VALUES ('L03', 'Không đội mũ bảo hiểm', 200000);
INSERT INTO LOI VALUES ('L04', 'Lấn làn', 600000);
INSERT INTO LOI VALUES ('L05', 'Chở quá số người quy định', 700000);
INSERT INTO LOI VALUES ('L06', 'Sử dụng điện thoại khi lái xe', 300000);
INSERT INTO LOI VALUES ('L07', 'Không xi nhan khi rẽ', 400000);
INSERT INTO LOI VALUES ('L08', 'Không giấy tờ xe', 250000);
INSERT INTO LOI VALUES ('L09', 'Vi phạm tốc độ', 900000);
INSERT INTO LOI VALUES ('L10', 'Uống rượu bia khi lái xe', 1200000);

INSERT INTO DOITUONG VALUES ('DT01', 'Nguyen Van A', '012345678', 'Hà Nội', '30A-12345', 0);
INSERT INTO DOITUONG VALUES ('DT02', 'Tran Thi B', '023456789', 'TP. HCM', '51B-67890', 0);
INSERT INTO DOITUONG VALUES ('DT03', 'Le Van C', '034567890', 'Đà Nẵng', '43C-56789', 0);
INSERT INTO DOITUONG VALUES ('DT04', 'Pham Thi D', '045678901', 'Hải Phòng', '15A-34567', 0);
INSERT INTO DOITUONG VALUES ('DT05', 'Nguyen Van E', '056789012', 'Cần Thơ', '65B-23456', 0);
INSERT INTO DOITUONG VALUES ('DT06', 'Bui Thi F', '067890123', 'Bắc Ninh', '99D-34567', 0);
INSERT INTO DOITUONG VALUES ('DT07', 'Do Van G', '078901234', 'Thanh Hóa', '36A-67890', 0);
INSERT INTO DOITUONG VALUES ('DT08', 'Hoang Thi H', '089012345', 'Nghệ An', '37B-12345', 0);
INSERT INTO DOITUONG VALUES ('DT09', 'Phan Van I', '091234567', 'Bình Dương', '61C-45678', 0);
INSERT INTO DOITUONG VALUES ('DT10', 'Vu Thi K', '010123456', 'Lâm Đồng', '49A-78901', 0);


-- Giả sử ngày vi phạm là trong tháng 3/2025
INSERT INTO VIPHAM VALUES ('L01', 'DT01', TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L02', 'DT02', TO_DATE('2025-03-02', 'YYYY-MM-DD'), TO_DATE('2025-03-12', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L03', 'DT03', TO_DATE('2025-03-03', 'YYYY-MM-DD'), TO_DATE('2025-03-13', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L04', 'DT04', TO_DATE('2025-03-04', 'YYYY-MM-DD'), TO_DATE('2025-03-14', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L05', 'DT05', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-03-15', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L06', 'DT06', TO_DATE('2025-03-06', 'YYYY-MM-DD'), TO_DATE('2025-03-16', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L07', 'DT07', TO_DATE('2025-03-07', 'YYYY-MM-DD'), TO_DATE('2025-03-17', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L08', 'DT08', TO_DATE('2025-03-08', 'YYYY-MM-DD'), TO_DATE('2025-03-18', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L09', 'DT09', TO_DATE('2025-03-09', 'YYYY-MM-DD'), TO_DATE('2025-03-19', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L10', 'DT10', TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-20', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L01', 'DT02', TO_DATE('2025-03-11', 'YYYY-MM-DD'), TO_DATE('2025-03-21', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L02', 'DT03', TO_DATE('2025-03-12', 'YYYY-MM-DD'), TO_DATE('2025-03-22', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L03', 'DT04', TO_DATE('2025-03-13', 'YYYY-MM-DD'), TO_DATE('2025-03-23', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L04', 'DT05', TO_DATE('2025-03-14', 'YYYY-MM-DD'), TO_DATE('2025-03-24', 'YYYY-MM-DD'));
INSERT INTO VIPHAM VALUES ('L05', 'DT06', TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-03-25', 'YYYY-MM-DD'));
