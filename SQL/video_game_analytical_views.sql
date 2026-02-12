-- =====================================================
-- VIDEO GAME REVENUE & MARKET PERFORMANCE ANALYSIS
-- Analytical SQL Views
-- Database: video_game_analytics
-- =====================================================


-- 1️⃣ Revenue by Genre
CREATE VIEW vw_genre_revenue AS
SELECT
    Genre,
    ROUND(SUM(Global_Sales), 2) AS total_revenue
FROM video_game_analytics
GROUP BY Genre;


-- 2️⃣ Revenue by Platform
CREATE VIEW vw_platform_revenue AS
SELECT
    Platform,
    ROUND(SUM(Global_Sales), 2) AS total_revenue
FROM video_game_analytics
GROUP BY Platform;


-- 3️⃣ Yearly Revenue Trend
CREATE VIEW vw_yearly_revenue AS
SELECT
    Year,
    ROUND(SUM(Global_Sales), 2) AS total_revenue
FROM video_game_analytics
GROUP BY Year
ORDER BY Year;


-- 4️⃣ Revenue by Publisher
CREATE VIEW vw_publisher_revenue AS
SELECT
    Publisher,
    ROUND(SUM(Global_Sales), 2) AS total_revenue
FROM video_game_analytics
GROUP BY Publisher
ORDER BY total_revenue DESC;


-- 5️⃣ Platform × Genre Revenue Matrix
CREATE VIEW vw_platform_genre_matrix AS
SELECT
    Platform,
    Genre,
    ROUND(SUM(Global_Sales), 2) AS total_revenue
FROM video_game_analytics
GROUP BY Platform, Genre;


-- 6️⃣ Rating vs Revenue
CREATE VIEW vw_rating_vs_revenue AS
SELECT
    Genre,
    ROUND(AVG(Rating), 2) AS avg_rating,
    ROUND(SUM(Global_Sales), 2) AS total_revenue
FROM video_game_analytics
GROUP BY Genre;


-- 7️⃣ Regional Revenue by Genre
CREATE VIEW vw_regional_genre_revenue AS
SELECT
    Genre,
    ROUND(SUM(NA_Sales), 2) AS na_revenue,
    ROUND(SUM(EU_Sales), 2) AS eu_revenue,
    ROUND(SUM(JP_Sales), 2) AS jp_revenue
FROM video_game_analytics
GROUP BY Genre;


-- 8️⃣ Top 5 Publisher Revenue
CREATE VIEW vw_top5_publishers AS
SELECT
    Publisher,
    ROUND(SUM(Global_Sales), 2) AS total_revenue
FROM video_game_analytics
GROUP BY Publisher
ORDER BY total_revenue DESC
LIMIT 5;


-- 9️⃣ High Rated Games Count (Rating >= 4)
CREATE VIEW vw_high_rated_games AS
SELECT
    COUNT(*) AS high_rated_titles
FROM video_game_analytics
WHERE Rating >= 4;


-- 🔟 Wishlist Demand by Title
CREATE VIEW vw_top_wishlist_titles AS
SELECT
    Name,
    ROUND(SUM(Wishlist), 0) AS total_wishlist
FROM video_game_analytics
GROUP BY Name
ORDER BY total_wishlist DESC
LIMIT 10;
