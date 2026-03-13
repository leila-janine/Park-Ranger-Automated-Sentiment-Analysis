-- 1. Insert Locations
INSERT INTO LOCATION (location_name, current_score, trend_status) VALUES
('Malolos', 88, 'Trending Up'),
('San Jose del Monte', 82, 'Trending Up'),
('Meycauayan', 84, 'Stable');

-- 2. Insert Products
INSERT INTO PRODUCT (product_name, performance_tier, sentiment_rate) VALUES
('Coffee', 'Best Performer', 85.5),
('Choco', 'Strong Contender', 78.0),
('Tea', 'Needs Improvement', 61.2);

-- 3. Insert Sources
INSERT INTO SOURCE (source_name) VALUES
('Facebook'), ('Google Reviews'), ('Instagram'), ('Verbal Feedback');

-- 4. Insert Feedback (Mixing Positive, Neutral, and Negative to populate the pie chart)
INSERT INTO FEEDBACK (location_id, product_id, source_id, feedback_text, sentiment_label, sentiment_score) VALUES
(1, 1, 1, 'Amazing coffee! The barista was very friendly and the atmosphere is perfect for work.', 'Positive', 0.85),
(2, 2, 2, 'Good hot chocolate but the wait time was a bit long during peak hours.', 'Neutral', 0.05),
(3, 1, 3, 'Best cold brew in Bulacan! Will definitely come back.', 'Positive', 0.90),
(1, 3, 4, 'The milk tea was too sweet for my taste and not worth the price.', 'Negative', -0.65),
(2, 1, 1, 'Decent cappuccino. Good place to hang out with friends.', 'Positive', 0.60),
(3, 2, 2, 'The mocha is delicious! Love the cozy ambiance here.', 'Positive', 0.75),
(1, 3, 3, 'Green tea was okay, nothing special. Staff needs better training.', 'Neutral', -0.05),
(2, 2, 4, 'Disappointing. The choco frappe was watery and lacked flavor.', 'Negative', -0.80),
(3, 1, 1, 'Excellent service and the americano was perfect!', 'Positive', 0.88),
(1, 3, 2, 'Chai latte needs improvement. Too much cinnamon.', 'Neutral', -0.10);

INSERT INTO CATEGORY_RATING (feedback_id, taste_score, quality_score, value_score, service_score, presentation_score) VALUES
(1, 5, 5, 4, 5, 4), (2, 3, 4, 3, 2, 4), (3, 5, 5, 5, 4, 4), (4, 2, 2, 1, 3, 2), (5, 4, 4, 4, 4, 3),
(6, 5, 4, 4, 5, 5), (7, 3, 3, 3, 2, 3), (8, 1, 2, 1, 3, 2), (9, 4, 5, 5, 5, 4), (10, 2, 2, 3, 3, 3);