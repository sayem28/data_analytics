insert into reviewers (reviewer_id, reviewer_name, review_text, video_id) values ('2', 'Asher', 'This looks awesome!', '1');
select * from reviewers;
insert into reviewers (reviewer_id, reviewer_name, review_text, video_id) values ('3', 'Jane', 'Can''t wait to watch this!', '2');
select * from reviewers;
select * from favorite_videos;
insert into reviewers (reviewer_id, reviewer_name, review_text, video_id) values ('4', 'Chris', 'Timothy Chamalet is awful!', '2');
select * from reviewers;
update reviewers set rating_number='5' where reviewer_name like '%John%';
select * from reviewers;
update reviewers set rating_number='4' where reviewer_name like '%Asher%';
select * from reviewers;
update reviewers set rating_number='4' where reviewer_name like '%Jane%';
select * from reviewers;
update reviewers set rating_number='1' where reviewer_name like '%Chris%';
select * from reviewers;
update reviewers set review_text='Timothy Chalamet sucks!' where reviewer_name like '%Chris%';
select * from reviewers;
select * from favorite_videos inner join reviewers on favorite_videos.video_id = reviewers.video_id;