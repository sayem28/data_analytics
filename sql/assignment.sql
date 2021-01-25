create table favorite_videos (
	video_id serial primary key,
	video_title varchar(100) NOT NULL,
	duration int,
	video_url varchar(100));
insert into favorite_videos (video_id, video_title, duration, video_url) values ('1', 'Godzilla vs. Kong Trailer', '2', 'https://www.youtube.com/watch?v=wO02uW15_WU');
insert into favorite_videos (video_id, video_title, duration, video_url) values ('2', 'Dune Trailer', '3', 'https://www.youtube.com/watch?v=n9xhJrPXop4');
insert into favorite_videos (video_id, video_title, duration, video_url) values ('3', 'Nobody Trailer', '3', 'https://www.youtube.com/watch?v=wZti8QKBWPo');
create table reviewers (
	reviewer_id serial primary key,
	reviewer_name varchar(100) NOT NULL,
	review_text varchar(300),
	video_id int NOT NULL);
select * from reviewers;
insert into reviewers (reviewer_id, reviewer_name, review_text, video_id) values ('1', 'John', 'I''m so excited for this movie!', '1');
insert into reviewers (reviewer_id, reviewer_name, review_text, video_id) values ('2', 'Asher', 'This looks awesome!', '1');
insert into reviewers (reviewer_id, reviewer_name, review_text, video_id) values ('3', 'Jane', 'Can''t wait to watch this!', '2');
insert into reviewers (reviewer_id, reviewer_name, review_text, video_id) values ('4', 'Chris', 'Timothy Chamalet sucks!', '2');
alter table reviewers add column rating_number int;
update reviewers set rating_number='5' where reviewer_name like '%John%';
update reviewers set rating_number='4' where reviewer_name like '%Asher%';
update reviewers set rating_number='4' where reviewer_name like '%Jane%';
update reviewers set rating_number='1' where reviewer_name like '%Chris%';
-- I manually edited some column headings to just clean up the table.
select * from favorite_videos inner join reviewers on favorite_videos.video_id = reviewers.video_id;