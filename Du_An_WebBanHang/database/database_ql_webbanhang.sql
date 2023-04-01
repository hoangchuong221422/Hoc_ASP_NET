create database QL_WebBanHang
on primary
(name = QL_WebBanHang_data,
 filename='C:\data\QL_WebBanHang_data.mdf',
 size=5mb,maxsize=10mb,filegrowth=1mb)	
log on 
(name = QL_WebBanHang_log,
 filename='C:\data\QL_WebBanHang_log.ldf',
 size=5mb,maxsize=10mb,filegrowth=1mb)