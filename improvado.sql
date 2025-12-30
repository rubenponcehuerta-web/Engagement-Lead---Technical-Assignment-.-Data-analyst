create database marketing_db;
use marketing_db;

CREATE TABLE raw_fb_ads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    campaign_id VARCHAR(50),
    campaign_name VARCHAR(255),
    ad_set_id VARCHAR(50),
    ad_set_name VARCHAR(255),
    impressions INT,
    clicks INT,
    spend DOUBLE,
    conversions INT,
    video_views INT,
    engagement_rate DOUBLE,
    reach INT,
    frequency DOUBLE
);

TRUNCATE TABLE raw_fb_ads;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.4/Uploads/01_facebook_ads.csv'
INTO TABLE raw_fb_ads
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(date, campaign_id, campaign_name, ad_set_id, ad_set_name, impressions, clicks, spend, conversions, video_views, engagement_rate, reach, frequency);

CREATE TABLE raw_google_ads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    campaign_id VARCHAR(50),
    campaign_name VARCHAR(255),
    ad_group_id VARCHAR(50),
    ad_group_name VARCHAR(255),
    impressions INT,
    clicks INT,
    cost DOUBLE,
    conversions INT,
    conversion_value DOUBLE,
    ctr DOUBLE,
    avg_cpc DOUBLE,
    quality_score INT,
    search_impression_share DOUBLE
);

TRUNCATE TABLE raw_google_ads;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.4/Uploads/02_google_ads.csv'
INTO TABLE raw_google_ads
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(date, campaign_id, campaign_name, ad_group_id, ad_group_name, impressions, clicks, cost, conversions, conversion_value, ctr, avg_cpc, quality_score, search_impression_share);

CREATE TABLE raw_tiktok_ads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    campaign_id VARCHAR(50),
    campaign_name VARCHAR(255),
    adgroup_id VARCHAR(50),
    adgroup_name VARCHAR(255),
    impressions INT,
    clicks INT,
    cost DOUBLE,
    conversions INT,
    video_views INT,
    video_watch_25 INT,
    video_watch_50 INT,
    video_watch_75 INT,
    video_watch_100 INT,
    likes INT,
    shares INT,
    comments INT
);
TRUNCATE TABLE raw_tiktok_ads;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 9.4/Uploads/03_tiktok_ads.csv'
INTO TABLE raw_tiktok_ads
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS
(date, campaign_id, campaign_name, adgroup_id, adgroup_name, impressions, clicks, cost, conversions, video_views, video_watch_25, video_watch_50, video_watch_75, video_watch_100, likes, shares, comments);

CREATE TABLE unified_ads AS
SELECT
    date,
    'Facebook' AS platform,
    campaign_id,
    campaign_name,
    impressions,
    clicks,
    spend AS cost,
    conversions
FROM raw_fb_ads

UNION ALL

SELECT
    date,
    'Google' AS platform,
    campaign_id,
    campaign_name,
    impressions,
    clicks,
    cost,
    conversions
FROM raw_google_ads

UNION ALL

SELECT
    date,
    'TikTok' AS platform,
    campaign_id,
    campaign_name,
    impressions,
    clicks,
    cost,
    conversions
FROM raw_tiktok_ads;

Select * from unified_ads;
Select count(*) from unified_ads;

SELECT DISTINCT platform
FROM unified_ads;

SELECT COUNT(*) FROM raw_fb_ads;
SELECT COUNT(*) FROM raw_google_ads;
SELECT COUNT(*) FROM raw_tiktok_ads;

SELECT SUM(cost) as costo_total
FROM unified_ads;

select distinct *  from unified_ads;