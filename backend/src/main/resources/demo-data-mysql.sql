-- Sample data for the `profile` table
UPDATE profile
SET
    first_name = 'Janus',
    last_name = 'Chung',
    address_street_1 = '123 Main St',
    address_street_2 = 'Apt 4',
    address_city = 'City',
    address_state = 'State',
    address_zip = '12345',
    linkedin = 'https://linkedin.com/in/janus',
    github = 'https://github.com/januschung',
    personal_website = 'https://januschung.github.io',
    email = 'test@test.com',
    telephone = '123-456-7890'
WHERE id = 1;

-- Sample job applications data
INSERT INTO job_application (
    company_name,
    job_title,
    salary_range,
    job_url,
    applied_date,
    description,
    note,
    status
)
VALUES
('Google', 'Software Engineer', '180k-220k', 'https://careers.google.com/jobs/se', DATE_ADD(CURRENT_DATE, INTERVAL 1 DAY), 'Develop scalable web applications', 'Great Glassdoor reviews', 'open'),
('Microsoft', 'AI Engineer', '170k-210k', 'https://careers.microsoft.com/jobs/ai', DATE_ADD(CURRENT_DATE, INTERVAL 2 DAY), 'Build machine learning models', 'Still in early stages', 'open'),
('Amazon', 'Cloud Architect', '180k-220k', 'https://www.amazon.jobs/jobs/cloud-arch', DATE_ADD(CURRENT_DATE, INTERVAL 3 DAY), 'Architect scalable cloud systems', 'AWS experience preferred', 'open'),
('Meta', 'Test Engineer', '150k-180k', 'https://www.metacareers.com/jobs/test', DATE_ADD(CURRENT_DATE, INTERVAL 4 DAY), 'Test automation frameworks', 'Sent follow-up email', 'open'),
('Apple', 'DevOps Engineer', '160k-190k', 'https://jobs.apple.com/jobs/devops', DATE_ADD(CURRENT_DATE, INTERVAL 5 DAY), 'Maintain CI/CD pipelines', 'Waiting on recruiter reply', 'open'),
('Netflix', 'Product Designer', '150k-180k', 'https://jobs.netflix.com/jobs/designer', DATE_ADD(CURRENT_DATE, INTERVAL 6 DAY), 'Design user experiences', 'Excited about their streaming platform', 'open'),
('Adobe', 'UX Designer', '140k-170k', 'https://careers.adobe.com/jobs/ux', DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY), 'Improve UI flow for creative tools', 'Portfolio shared', 'open'),
('Salesforce', 'Network Engineer', '150k-180k', 'https://www.salesforce.com/careers/jobs/neteng', DATE_ADD(CURRENT_DATE, INTERVAL 8 DAY), 'Design network infrastructure', 'Waiting on update', 'open'),
('Oracle', 'Data Engineer', '140k-170k', 'https://www.oracle.com/careers/jobs/data-eng', DATE_ADD(CURRENT_DATE, INTERVAL 9 DAY), 'ETL pipelines for analytics', 'Pinged recruiter on LinkedIn', 'open'),
('IBM', 'Front-end Developer', '130k-160k', 'https://www.ibm.com/careers/jobs/frontend', DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY), 'Build React-based dashboard', 'Enterprise focus', 'open'),
('Intel', 'Backend Developer', '140k-170k', 'https://www.intel.com/careers/jobs/backend', DATE_ADD(CURRENT_DATE, INTERVAL 11 DAY), 'Secure RESTful APIs', 'Pending code challenge', 'open'),
('NVIDIA', 'Mobile Developer', '160k-190k', 'https://www.nvidia.com/careers/jobs/mobile', DATE_ADD(CURRENT_DATE, INTERVAL 12 DAY), 'Work on mobile applications', 'Great tech stack', 'open'),
('Stripe', 'Product Manager', '180k-220k', 'https://stripe.com/jobs/pm', DATE_ADD(CURRENT_DATE, INTERVAL 13 DAY), 'Manage product roadmap', 'Met PM at meetup', 'active'),
('Airbnb', 'SRE', '180k-210k', 'https://careers.airbnb.com/jobs/sre', DATE_ADD(CURRENT_DATE, INTERVAL 14 DAY), 'Uptime focus', 'Interviewed last week', 'active'),
('Uber', 'Security Engineer', '170k-200k', 'https://www.uber.com/careers/jobs/seceng', DATE_ADD(CURRENT_DATE, INTERVAL 15 DAY), 'Pen testing', 'Final round soon', 'active'),
('Tesla', 'Fullstack Dev', '150k-180k', 'https://www.tesla.com/careers/jobs/fullstack', DATE_ADD(CURRENT_DATE, INTERVAL 16 DAY), 'End-to-end features', 'Tech test done', 'active'),
('Spotify', 'Backend Engineer', '160k-190k', 'https://www.spotifyjobs.com/jobs/server', DATE_ADD(CURRENT_DATE, INTERVAL 17 DAY), 'Music streaming infrastructure', 'Awaiting next round', 'active'),
('Twitter', 'QA Analyst', '120k-150k', 'https://careers.twitter.com/jobs/qa', DATE_ADD(CURRENT_DATE, INTERVAL 18 DAY), 'Test regression cases', 'Rejected with feedback', 'rejected'),
('LinkedIn', 'DevRel', '140k-170k', 'https://www.linkedin.com/careers/jobs/devrel', DATE_ADD(CURRENT_DATE, INTERVAL 19 DAY), 'Engage developer community', 'Ghosted after recruiter chat', 'ghosted'),
('GitHub', 'ML Ops', '170k-200k', 'https://github.com/careers/jobs/mlops', DATE_ADD(CURRENT_DATE, INTERVAL 20 DAY), 'Maintain models in prod', 'No updates post final round', 'ghosted'),
('Atlassian', 'Platform Engineer', '150k-180k', 'https://www.atlassian.com/careers/jobs/platform', DATE_ADD(CURRENT_DATE, INTERVAL 21 DAY), 'Automate development workflows', 'Ghosted after take-home', 'ghosted'),
('Shopify', 'Infrastructure Engineer', '180k-210k', 'https://www.shopify.com/careers/jobs/infra', DATE_ADD(CURRENT_DATE, INTERVAL 22 DAY), 'Modernize infrastructure', 'Rejection after panel', 'rejected'),
('Square', 'Support Engineer', '120k-145k', 'https://squareup.com/careers/jobs/support', DATE_ADD(CURRENT_DATE, INTERVAL 23 DAY), 'Tech support workflows', 'Quick rejection', 'rejected'),
('Palantir', 'Software Engineer', '180k-220k', 'https://www.palantir.com/careers/jobs/engineer', DATE_ADD(CURRENT_DATE, INTERVAL 24 DAY), 'Data platform development', 'No reply after HR call', 'ghosted'),
('Databricks', 'Tooling Engineer', '160k-190k', 'https://www.databricks.com/careers/jobs/tooling', DATE_ADD(CURRENT_DATE, INTERVAL 25 DAY), 'Dev tools for data engineers', 'Ghosted after tech screen', 'ghosted');

-- Sample interviews data (linked to job applications)
INSERT INTO interview (
    job_application_id,
    interview_date,
    interviewer,
    description,
    status
)
VALUES
(1, DATE_ADD(CURRENT_DATE, INTERVAL 5 DAY), 'Sarah Chen', 'System design deep-dive', 'open'),
(2, DATE_ADD(CURRENT_DATE, INTERVAL 6 DAY), 'Michael Park', 'ML architecture discussion', 'open'),
(3, DATE_ADD(CURRENT_DATE, INTERVAL 7 DAY), 'David Kim', 'Cloud deployment design', 'open'),
(4, DATE_ADD(CURRENT_DATE, INTERVAL 8 DAY), 'Jennifer Martinez', 'Automated testing walk-through', 'open'),
(5, DATE_ADD(CURRENT_DATE, INTERVAL 9 DAY), 'Robert Johnson', 'CI/CD system review', 'open'),
(6, DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY), 'Emily Davis', 'Design portfolio review', 'open'),
(7, DATE_ADD(CURRENT_DATE, INTERVAL 11 DAY), 'James Wilson', 'UX case study', 'open'),
(8, DATE_ADD(CURRENT_DATE, INTERVAL 12 DAY), 'Andrew Rodriguez', 'Networking concepts', 'open'),
(13, DATE_ADD(CURRENT_DATE, INTERVAL 13 DAY), 'Jessica Lee', 'Product case presentation', 'open'),
(14, DATE_ADD(CURRENT_DATE, INTERVAL 14 DAY), 'Thomas Anderson', 'On-call rotation Q&A', 'open'),
(15, DATE_ADD(CURRENT_DATE, INTERVAL 15 DAY), 'Maria Garcia', 'Security policy overview', 'open'),
(16, DATE_ADD(CURRENT_DATE, INTERVAL 16 DAY), 'Christopher Brown', 'Fullstack architecture deep dive', 'open');


-- Sample offers data (linked to job applications)
INSERT INTO offer (
    job_application_id,
    offer_date,
    salary_offered,
    description
)
VALUES
(1, DATE_ADD(CURRENT_DATE, INTERVAL 20 DAY), '200k', 'Offer from Google for Software Engineer'),
(2, DATE_ADD(CURRENT_DATE, INTERVAL 21 DAY), '190k', 'Offer from Microsoft for AI Engineer'),
(6, DATE_ADD(CURRENT_DATE, INTERVAL 22 DAY), '165k', 'Offer from Netflix for Product Designer'),
(14, DATE_ADD(CURRENT_DATE, INTERVAL 23 DAY), '195k', 'Offer from Airbnb for SRE'),
(15, DATE_ADD(CURRENT_DATE, INTERVAL 24 DAY), '185k', 'Offer from Uber for Security Engineer');

-- Sample frequent url data
INSERT INTO frequent_url (
    title,
    url
)
VALUES
('LinkedIn Jobs', 'https://www.linkedin.com/jobs/'),
('Indeed', 'https://www.indeed.com/'),
('Glassdoor', 'https://www.glassdoor.com/Job/'),
('Monster', 'https://www.monster.com/jobs/'),
('We Work Remotely', 'https://weworkremotely.com/'),
('AngelList', 'https://angel.co/jobs'),
('Remotive', 'https://remotive.io/remote-jobs'),
('HackerRank Jobs', 'https://www.hackerrank.com/jobs'),
('Hired', 'https://hired.com/'),
('Stack Overflow Jobs', 'https://stackoverflow.com/jobs'),
('FlexJobs', 'https://www.flexjobs.com/'),
('Wellfound', 'https://angel.co/talent'),
('Turing', 'https://www.turing.com/jobs/'),
('Dice', 'https://www.dice.com/'),
('Ladders', 'https://www.theladders.com/'),
('Outsourcely', 'https://www.outsourcely.com/'),
('Europe Remotely', 'https://europeremotely.com/'),
('Jobspresso', 'https://jobspresso.co/'),
('Remote OK', 'https://remoteok.io/'),
('Just Remote', 'https://justremote.co/');

-- Sample question data
INSERT INTO question (question, answer) VALUES
('Can you tell me about yourself?',
 'I am a software developer with a strong background in full-stack development. I have experience working with React, Node.js, and databases like PostgreSQL. I enjoy solving complex problems and collaborating with teams to build scalable applications.'),
('What are your strengths and weaknesses?',
 'One of my strengths is problem-solving. I enjoy breaking down complex challenges and finding efficient solutions. I am also a quick learner, always eager to adapt to new technologies. A weakness I am working on is delegating tasks more effectively, as I sometimes take on too much responsibility myself.'),
('Describe a challenging project you worked on.',
 'I worked on a project that involved migrating a legacy application to a modern stack. The biggest challenge was ensuring minimal downtime while transferring a large database. I led the effort in designing a phased rollout and automated testing to ensure a smooth transition.'),
('How do you handle tight deadlines and pressure?',
 'I prioritize tasks by breaking them into smaller steps and focusing on high-impact activities first. I also communicate proactively with my team to ensure everyone is aligned. When under pressure, I stay calm, rely on my problem-solving skills, and adapt to changing priorities.'),
('Why do you want to work at our company?',
 'I admire your company’s innovation in the tech industry and its culture of continuous learning. I am particularly excited about the opportunity to work on cutting-edge projects with a talented team, where I can contribute my skills and grow professionally.');
