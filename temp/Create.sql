create table Users (
    id serial,
    created_at timestamp,
    user_type int8 check (user_type in (0, 1)),
    birthday date,
    sex int8 check (sex in (0, 1)),
    nationality_id int8 check (nationality_id in (0, 1)),
    last_online_at timestamp,
    region varchar(100),
    city varchar(100),
    primary key (id)
);

create table Jobs (
  id serial,
  created_at timestamp,
  user_id integer,
  profession varchar(256),
  region varchar(100),
  city varchar(100),
  primary key (id),
  foreign key (user_id) references Users(id)
);

create table Applications (
    id serial,
    created_at timestamp,
    job_id integer,
    recruiter_id integer,
    candidate_id integer,
    primary key (id),
    foreign key (job_id) references Jobs(id),
    foreign key (recruiter_id) references Users(id),
    foreign key (candidate_id) references Users(id)
);

create table Clickstream (
    created_at timestamp,
    uuid serial,
    adnetwork_name varchar(256),
    campaign_name varchar(256),
    creative_name varchar(256),
    event_name varchar(32) check (event_name in (
            'install',
            'job_applied_candidate',
            'job_viewed_candidate',
            'job_added_to_favorites_candidate'
        )
    ),
    publisher_parameters json,
    actioner_id integer,
    job_id integer,
    primary key (uuid),
    foreign key (actioner_id) references Users(id),
    foreign key (job_id) references Jobs(id)
)






















