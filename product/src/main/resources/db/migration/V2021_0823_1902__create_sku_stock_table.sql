create table sku_stock
(
    id           bigint      not null auto_increment,
    product_id   bigint comment '商品id',
    sku_code     varchar(64) not null comment 'sku编码',
    stock        int                  default 0 comment '库存',
    low_stock    int comment '预警库存',
    sale         int comment '销量',
    lock_stock   int                  default 0 comment '锁定库存',
    create_time  timestamp   not null default current_timestamp,
    updated_time timestamp   not null default current_timestamp on update current_timestamp,
    primary key (id),
    index        idx_sku_stock_product_id (product_id),
    index        idx_sku_stock_sku_code (sku_code)
);
