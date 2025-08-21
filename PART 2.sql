CREATE TABLE televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    catalog_number TEXT UNIQUE NOT NULL,
    brand TEXT CHECK (brand IN ('Samsung', 'LG', 'Sony')) NOT NULL,
    model TEXT NOT NULL,
    screen_size INTEGER CHECK (screen_size > 0),
    resolution TEXT CHECK (resolution IN ('4K', '8K', 'Full HD')),
    price REAL CHECK (price >= 0),
    stock_quantity INTEGER DEFAULT 0 CHECK (stock_quantity >= 0),
    release_year INTEGER CHECK (release_year >= 2000),
    smart_tv TEXT CHECK (smart_tv IN ('Yes', 'No')) DEFAULT 'No',
    os TEXT,
    panel_type TEXT CHECK (panel_type IN ('OLED', 'QLED', 'LED')) NOT NULL
);

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('CAT123', 'Samsung', 'QLED55', 55, '4K', 1200.0, 10, 2022, 'Yes', 'Tizen', 'QLED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('CAT124', 'LG', 'OLED65', 65, '8K', 2500.0, 5, 2023, 'Yes', 'webOS', 'OLED');

INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type)
VALUES ('CAT125', 'Sony', 'LED50', 50, 'Full HD', 800.0, 15, 2021, 'No', NULL, 'LED');
```
1.Count Smart TVs in stock: 2

2.Average price per brand: 
LG	2500.0
Samsung	1200.0
Sony	800.0

3.All TVs cheaper than $1000:
Sony	LED50	 800.0
