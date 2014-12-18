--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: jamescorey; Tablespace: 
--

CREATE TABLE answers (
    id integer NOT NULL,
    answer character varying(255),
    question_id integer,
    correct_answer boolean DEFAULT false
);


ALTER TABLE public.answers OWNER TO jamescorey;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: jamescorey
--

CREATE SEQUENCE answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO jamescorey;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jamescorey
--

ALTER SEQUENCE answers_id_seq OWNED BY answers.id;


--
-- Name: forums; Type: TABLE; Schema: public; Owner: jamescorey; Tablespace: 
--

CREATE TABLE forums (
    id integer NOT NULL,
    post character varying(255) NOT NULL,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.forums OWNER TO jamescorey;

--
-- Name: forums_id_seq; Type: SEQUENCE; Schema: public; Owner: jamescorey
--

CREATE SEQUENCE forums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forums_id_seq OWNER TO jamescorey;

--
-- Name: forums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jamescorey
--

ALTER SEQUENCE forums_id_seq OWNED BY forums.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: jamescorey; Tablespace: 
--

CREATE TABLE questions (
    id integer NOT NULL,
    question character varying(255)
);


ALTER TABLE public.questions OWNER TO jamescorey;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: jamescorey
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO jamescorey;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jamescorey
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: jamescorey; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO jamescorey;

--
-- Name: users; Type: TABLE; Schema: public; Owner: jamescorey; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255),
    hashed_password character varying(255),
    salt character varying(255)
);


ALTER TABLE public.users OWNER TO jamescorey;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: jamescorey
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO jamescorey;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jamescorey
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jamescorey
--

ALTER TABLE ONLY answers ALTER COLUMN id SET DEFAULT nextval('answers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jamescorey
--

ALTER TABLE ONLY forums ALTER COLUMN id SET DEFAULT nextval('forums_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jamescorey
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jamescorey
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: jamescorey
--

COPY answers (id, answer, question_id, correct_answer) FROM stdin;
243	Declaration of Independence	1	f
244	Federalist Papers	1	f
245	Sets trade policy	2	f
246	Defines land ownership	2	f
247	Trusting in God	3	f
248	The people do	3	f
249	A change or addition to the Federalist Papers.	4	f
250	A change or addition to the Declaration of Independence.	4	f
251	The Ten Commandments	5	f
252	The First Ten	5	f
253	Bear Arms	6	f
254	Own Land	6	f
255	Twenty-five (25)	7	f
256	Thirty (30)	7	f
257	Set up the government.	8	f
258	Freed the slaves.	8	f
259	Love	9	f
260	Pursuit of wealth	9	f
261	The government sanctions a particular religion.	10	f
262	Religion is taught in public schools.	10	f
263	Socialist economy	11	f
264	Libertarian economy	11	f
265	The military determines laws.	12	f
266	A law textbook.	12	f
267	Council / Board	13	f
268	Parliament	13	f
269	Strong military.	14	f
270	The Declaration of Independence	14	f
271	The Prime Minister	15	f
272	The Governor	15	f
273	Parliament	16	f
274	The President	16	f
275	The Lower House and Upper House	17	f
276	The House of Lords and the House of Commons	17	f
277	Fifty (50)	18	f
278	Two hundred (200)	18	f
279	Two (2)	19	f
280	Four (4)	19	f
281	One hundred (100)	20	f
282	Fifty (50)	20	f
283	Four (4)	21	f
284	Six (6)	21	f
285	Everyone in his/her district.	22	f
286	The entire nation.	22	f
287	Because of the state's wealth - More money means more representatives.	23	f
288	Because of the state's age - Older states have more representation	23	f
289	Six (6)	24	f
290	Two (2)	24	f
291	December	25	f
292	October	25	f
293	George W Bush	26	f
294	Bill Clinton	26	f
295	Barack Obama	27	f
296	Hillary Clinton	27	f
297	The Speaker of the House	28	f
298	The First Lady	28	f
299	The First Lady	29	f
300	Attorney General	29	f
301	The Vice President	30	f
302	The Prime Minister	30	f
303	The Prime Minister	31	f
304	The Speaker of the House	31	f
305	The Vice President	32	f
306	The Speaker of the House	32	f
307	House the President's dishes	33	f
308	Protects the President	33	f
309	Secretary of Letters	34	f
310	Secretary of Sport	34	f
311	Write laws	35	f
312	Enforce laws	35	f
313	The Federal Court	36	f
314	The Court	36	f
315	Seven (7)	37	f
316	Eleven (11)	37	f
317	Antonin Scalia	38	f
318	Elena Kagan	38	f
319	Provide safety (fire departments	39	f
320	Provide schooling and education	39	f
321	To print money	40	f
322	To make treaties	40	f
323	Green	41	f
324	Liberterian	41	f
325	Republican	42	f
326	Socialist	42	f
327	Citzens fourteen (14) and older can vote.	43	f
328	Undocumented immigrants may vote.	43	f
329	Owning property.	44	f
330	Serving in the military.	44	f
331	Owning land.	45	f
332	Free speech.	45	f
333	Freedom of Wealth	46	f
334	Right to Shelter	46	f
335	The President	47	f
336	The Military	47	f
337	Pay taxes.	48	f
338	Buy land.	48	f
339	Fourteen (14).	49	f
340	Twenty-one (21)	49	f
341	Serve in the Military.	50	f
342	Own a business.	50	f
343	April 1	51	f
344	May 15	51	f
345	Between sixteen (16) and eighteen (18)	52	f
346	Between twenty-six (26) and thirty (30)	52	f
347	Integrate with American Indians.	53	f
348	Find a shorter route to China.	53	f
349	Chinese	54	f
350	Africans	54	f
351	Arabs	55	f
352	Norwegians	55	f
353	To free the slaves.	56	f
354	To end the British Empire.	56	f
355	George Washington	57	f
356	Abraham Lincoln	57	f
357	1861	58	f
358	1492	58	f
359	Michigan	59	f
360	Florida	59	f
361	The Founding Fathers wrote the Federalist Papers	60	f
362	The Founding Fathers wrote the Declaration of Independence	60	f
363	1776	61	f
364	1864	61	f
365	Abraham Lincoln	62	f
366	George Washington	62	f
367	Being the 2nd President.	63	f
368	First General of the U.S. Army	63	f
369	\N	64	f
370	Abraham Lincoln	64	f
371	Benjamin Franklin	65	f
372	Abraham Lincoln	65	f
373	Alaska	66	f
374	California	66	f
375	World War I	67	f
376	Revolutionary War	67	f
377	The Spanish-American War	68	f
378	The Vietnam War	68	f
379	British Imperialism	69	f
380	Canada invaded New York.	69	f
381	Wrote the Declaration of Independence.	70	f
382	Fought in the Revolutionary War.	70	f
383	Gave women the right to vote.	71	f
384	Started the Revolutionary War.	71	f
385	Made the first U.S. flag	72	f
386	First woman President of the U.S.	72	f
387	Civil War	73	f
388	Mexican-American War	73	f
389	John F. Kennedy	74	f
390	Thomas Jefferson	74	f
391	Richard Nixon	75	f
392	Theodore Roosevelt	75	f
393	Mexico, Brazil and Argentina	76	f
394	United Kingdom, France, and Belgium	76	f
395	Civil War	77	f
396	World War I	77	f
397	Greed	78	f
398	Global Warming	78	f
399	Racial Justice Movement	79	f
400	Freedom and Equality Movement	79	f
401	First Black President of the U.S.	80	f
402	First Black general of the U.S. Army	80	f
403	The Yankees won the World Series	81	f
404	The U.S. turned 200 years old	81	f
405	Aztec	82	f
406	Brahma	82	f
407	Rio Grande	83	f
408	Colorado	83	f
409	Atlantic	84	f
410	Indian	84	f
411	Pacific	85	f
412	Arctic	85	f
413	Panama	86	f
414	Aruba	86	f
415	Maryland	87	f
416	Missouri	87	f
417	Florida	88	f
418	Nevada	88	f
419	New York City	89	f
420	Philadelphia	89	f
421	Washington, DC	90	f
422	Boston	90	f
423	Because there were 13 Founding Fathers.	91	f
424	There were 13 soldiers killed during the Revolutionary War	91	f
425	Because there are 50 Senators	92	f
426	Because there were 50 original colonies.	92	f
427	Battle Hymn of the Republic	93	f
428	America the Beautiful	93	f
429	July 13	94	f
430	May 25	94	f
431	Easter	95	f
432	Eid	95	f
1	The Constitution	1	t
2	Sets up the government.	2	t
3	Defines the government.	2	t
4	Protects basic rights of Americans.	2	t
5	We the People	3	t
6	A change or addition to the Constitution.	4	t
7	The Bill of Rights	5	t
8	Speech	6	t
9	Religion	6	t
10	Assembly	6	t
11	Press	6	t
12	Petition the government	6	t
13	Twenty-seven (27)	7	t
14	Announced our independence from Great Britain	8	t
15	Life	9	t
16	Liberty	9	t
17	Pursuit of Happiness	9	t
18	You can practice any religion, or not practice a religion	10	t
19	Capitalist economy	11	t
20	Everyone (including the government) must follow the law.	12	t
21	Congress / Legislative	13	t
22	President / Executive	13	t
23	The Courts / Judicial	13	t
24	Checks and Balances / Separation of Powers	14	t
25	The President	15	t
26	Congress	16	t
27	The Senate and House of Representatives	17	t
28	One hundred (100)	18	t
29	Six (6)	19	t
30	Four hundred thirty-five (435)	20	t
31	Two (2)	21	t
32	All people of the state	22	t
33	Because of the state's population - Larger population means more representatives	23	t
34	Four (4)	24	t
35	November	25	t
36	Barack Obama	26	t
37	Joseph Biden	27	t
38	The Vice President	28	t
39	The Speaker of the House	29	t
40	The President	30	t
41	The President	31	t
42	The President	32	t
43	Advices the President	33	t
44	Secretary of Agriculture	34	t
45	Secretary of Defense	34	t
46	Secretary of Education	34	t
47	Secretary of Energy	34	t
48	Secretary of Health and Human Services	34	t
49	Secretary of Homeland Security	34	t
50	Secretary of Housing and Urban Development	34	t
51	Secretary of the Interior	34	t
52	Secretary of Labor	34	t
53	Secretary of State	34	t
54	Secretary of Transportation	34	t
55	Secretary of the Treasury	34	t
56	Secretary of Veterans Affairs	34	t
57	Attorney General	34	t
58	Vice President	34	t
59	Reviews laws.	35	t
60	Explains laws.	35	t
61	Resolves disputes/disagreements	35	t
62	Decides if a law goes against the Constitution.	35	t
63	The Supreme Court	36	t
64	Nine (9)	37	t
65	John Roberts	38	t
66	To print money.	39	t
67	To declare war.	39	t
68	To create an army.	39	t
69	To make treaties.	39	t
70	Provide schooling and education.	40	t
71	Provide protection (police)	40	t
72	Provide safety (fire department)	40	t
73	Give a driver's license.	40	t
74	Approve zoning and land use.	40	t
75	Democratic	41	t
76	Republican	41	t
77	Democratic	42	t
78	John Boehner	43	t
80	You don't have to pay a poll tax to vote.	43	t
81	Any citizen can vote.	43	t
82	A male citizen of any race can vote.	43	t
83	Serve on a jury.	44	t
84	Vote in a federal election.	44	t
85	Vote in a federal election.	45	t
86	Run for federal office.	45	t
87	Freedom of expression	46	t
88	Freedom of speech	46	t
89	Freedom of assembly	46	t
90	Freedom to petition the government	46	t
91	Freedom to worship	46	t
92	The right to bear arms	46	t
93	The United States	47	t
94	The flag	47	t
96	Defend the Constitution and laws of the United States	48	t
97	Obey the laws of the United States	48	t
98	Serve in the U.S. military if needed	48	t
99	Serve the nation if needed	48	t
100	Be loyal to the United States	48	t
101	Eighteen (18) or older.	49	t
102	Vote	50	t
103	Join a political party.	50	t
104	Help with a campaign	50	t
105	Join a civic group	50	t
106	Give an elected official your opinion on an issue.	50	t
107	Call Senators and Representatives	50	t
108	Publicly support or oppose an issue or policy	50	t
109	Run for office	50	t
110	Write to a newspaper	50	t
111	April 15	51	t
113	Freedom	53	t
114	Political liberty	53	t
115	Religious freedom	53	t
116	Economic opportunity	53	t
117	Practice their religion	53	t
118	Escape persecution	53	t
119	American Indians / Native Americans	54	t
120	Africans	55	t
121	Because of high taxes (Taxation without Representation)	56	t
122	Because the British army stayed in their houses (Boarding, quartering)	56	t
123	Because they didn't have self-government	56	t
124	Thomas Jefferson	57	t
125	July 4, 1776	58	t
126	New Hampshire	59	t
127	Massachusetts	59	t
128	Rhode Island	59	t
129	Connecticut	59	t
130	New York	59	t
131	New Jersey	59	t
132	Pennsylvania	59	t
133	Delaware	59	t
79	Citizens eighteen (18) and older can vote	43	t
95	Give up loyalty to other countries.	48	t
112	Between eighteen (18) and twenty-six (26).	52	t
134	Maryland	59	t
135	Virginia	59	t
136	North Carolina	59	t
137	South Carolina	59	t
138	Georgia	59	t
139	The Founding Fathers wrote the Constitution.	60	t
140	1787	61	t
141	James Madison	62	t
142	Alexander Hamilton (Publius)	62	t
143	John Jay	62	t
144	U.S. diplomat	63	t
145	Oldest member of the Constitutional Convention	63	t
146	First Postmaster General of the United States	63	t
147	Writer of 'Poor Richard's Almanac'	63	t
148	Started the first free libraries.	63	t
149	George Washington	64	t
150	George Washington	65	t
151	The Louisiana Territory	66	t
152	War of 1812	67	t
153	Mexican-American War	67	t
154	Civil War	67	t
155	Spanish-American War	67	t
156	The Civil War	68	t
157	Slavery	69	t
158	Economic reasons	69	t
159	States' rights	69	t
160	Freed the slaves (Emmancipation Proclamation	70	t
161	Saved (or preserved) the Union	70	t
162	Led the United States during the Civil War	70	t
163	Freed the slaves in the Confederacy (South)	71	t
164	Fought for women's rights.	72	t
165	World War I	73	t
166	World War II	73	t
167	Korean War	73	t
168	Vietnam War	73	t
169	(Persian) Gulf War	73	t
170	Woodrow Wilson	74	t
171	Franklin Roosevelt	75	t
172	Japan, Germany and Italy	76	t
173	World War II	77	t
174	Communism	78	t
175	Civil Rights Movement	79	t
176	Fought for civil rights.	80	t
177	Worked for equality for all Americans.	80	t
178	Terrorists attacked the United States.	81	t
179	Cherokee	82	t
180	Navajo	82	t
181	Sioux	82	t
182	Chippewa	82	t
183	Choctaw	82	t
184	Pueblo	82	t
185	Apache	82	t
186	Iroquois	82	t
187	Creek	82	t
188	Blackfeet	82	t
189	Seminole	82	t
190	Cheyenne	82	t
191	Arawak	82	t
192	Shawnee	82	t
193	Mohegan	82	t
194	Huron	82	t
195	Oneida	82	t
196	Lakota	82	t
197	Crow	82	t
198	Teton	82	t
199	Hopi	82	t
200	Inuit	82	t
201	Missouri River	83	t
202	Mississippi River	83	t
203	Pacific Ocean	84	t
204	Atlantic Ocean	85	t
205	Puerto Rico	86	t
206	U.S. Virgin Islands	86	t
207	American Samoa	86	t
208	Northern Mariana Islands	86	t
209	Guam	86	t
210	Maine	87	t
211	New Hampshire	87	t
212	Vermont	87	t
213	New York	87	t
214	Pennsylvania	87	t
215	Ohio	87	t
216	Michigan	87	t
217	Minnesota	87	t
218	North Dakota	87	t
219	Montana	87	t
220	Idaho	87	t
221	Washington	87	t
222	Alaska	87	t
223	California	88	t
224	Arizona	88	t
225	New Mexico	88	t
226	Texas	88	t
227	Washington, D.C.	89	t
228	New York Harbor	90	t
229	Liberty Island	90	t
230	Because there were 13 original colonies.	91	t
231	Because there is one star for each of the 50 states.	92	t
232	The Star-Spangled Banner	93	t
233	July 4	94	t
234	New Year's Day	95	t
235	Martin Luther King, Jr. Day	95	t
236	Memorial Day	95	t
237	Independence Day	95	t
238	Labor Day	95	t
239	Columbus Day	95	t
240	Veterans Day	95	t
241	Thanksgiving Day	95	t
242	Christmas	95	t
\.


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jamescorey
--

SELECT pg_catalog.setval('answers_id_seq', 432, true);


--
-- Data for Name: forums; Type: TABLE DATA; Schema: public; Owner: jamescorey
--

COPY forums (id, post, user_id, created_at, updated_at) FROM stdin;
1	First post	2	2014-12-16 18:08:37.224195	2014-12-16 18:08:37.224195
2	Another post.	2	2014-12-16 18:14:35.769413	2014-12-16 18:14:35.769413
3	Keep trying the quiz.  It gets easier.	2	2014-12-16 19:08:16.197533	2014-12-16 19:08:16.197533
4	This is tough.	2	2014-12-17 00:01:10.388077	2014-12-17 00:01:10.388077
5	Something is wrong	2	2014-12-17 00:01:25.228106	2014-12-17 00:01:25.228106
6	Hello!	4	2014-12-17 02:35:28.927612	2014-12-17 02:35:28.927612
7	Hello world.	2	2014-12-17 14:24:03.474063	2014-12-17 14:24:03.474063
8	What's up?	2	2014-12-17 22:56:54.04158	2014-12-17 22:56:54.04158
9	Good morning!	1	2014-12-18 14:33:43.591548	2014-12-18 14:33:43.591548
14		2	2014-12-18 15:37:15.69464	2014-12-18 15:37:15.69464
15	Gluten-free small batch Vice, quinoa church-key chillwave four  	2	2014-12-18 15:41:24.335132	2014-12-18 15:41:24.335132
16	gentrify. Kale chips pickled yr single-origin coffee, flexitarian brunch ugh. Wayfarers VHS American Apparel vinyl, paleo seitan bicycle rights fingerstache \r\n	2	2014-12-18 15:43:11.020619	2014-12-18 15:43:11.020619
\.


--
-- Name: forums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jamescorey
--

SELECT pg_catalog.setval('forums_id_seq', 16, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: jamescorey
--

COPY questions (id, question) FROM stdin;
1	What is the supreme law of the land?
2	What does the Constitution do?
3	The idea of self-government is in the first three words of the Constitution.  What are these words?
4	What is an amendment?
5	What do we call the first ten amendments to the Constitution?
6	What is one right or freedeom from the First Amendment?
7	How many amendments does the Constitution have?
8	What did the Declaration of Independence do?
9	What is a right in the Declaration of Independence?
10	What is freedom of religion?
11	What is the economic system in the United States?
12	What is the 'rule of law'?
13	Name one branch or part of the government.
14	What stops one branch of government from becoming too powerful?
15	Who is in charge of the executive branch?
16	Who makes federal laws?
17	What are the two parts of the U.S. Congress?
18	How many U.S. Senators are there?
19	We elect a U.S. Senator for how many years?
20	The House of Representatives has how many voting members?
21	We elect a U.S. Representative for how many years?
22	Who does a U.S. Senator represent?
23	Why do some states have more Representatives than other states?
24	We elect a President for how many years?
25	In what month do we vote for President?
26	What is the name of the President of the United States now?
27	What is the name of the Vice President of the United States now?
28	If the President can no longer serve, who becomes President?
29	If both the President and the Vice President can no longer serve, who becomes President?
30	Who is the Commander in Chief of the military?
31	Who signs bills to become laws?
32	Who vetoes bills?
33	What does the President's Cabinet do?
34	Name one Cabinet-level position.
35	What does the judicial branch do?
36	What is the highest court in the United States?
37	How many justices are on the Supreme Court?
38	Who is the Chief Justice of the United States now?
39	Under our Constitution, some powers belong to the federal government.  What is one power of the federal government?
40	Under our Constitution, some powers belong to states.  What is one power of the states?
41	What is one of the major political parties in the United States?
42	What is the political party of the President now?
43	There are four amendments to the Constitution about who can vote.  Describe one of them.
44	What is one responsibility that is only for United States citizens?
45	Name one right only for United States citizens.
46	What is one right of everyone living in the United States?
47	What do we show loyalty to when we say the Pledge of Allegiance?
48	What is one promise you make when you become a United States citizen?
49	How old do citizens have to be to vote for President?
50	What is one way that Americans can participate in their democracy?
51	When is the last day you can send in federal income tax forms?
52	When must all men register for the Selective Service?
53	What is one reason colonists came to America?
54	Who lived in America before the Europeans arrived?
55	What group of people was taken to America and sold as slaves?
56	Why did the colonists fight the British?
57	Who wrote the Declaration of Independence?
58	When was the Declaration of Independence adopted?
59	There were 13 original states.  Name one.
60	What happened at the Constitutional Convention?
61	When was the Constitution written?
62	The Federalist Papers supported the passage of the U.S. Constitution.  Name on of the writers.
63	What is one theing Benjamin Franklin is famous for?
64	Who is the 'Father of our Country'?
65	Who was the first President?
66	What territory did the United States buy from France in 1803?
67	Name one war fought by the United States in the 1800s.
68	Name the U.S. war between the North and the South
69	Name one problem that led to the Civil War
70	What was one important thing that Abraham Lincoln did?
71	What did the Emancipation Proclamation do?
72	What did Susan B. Anthony do?
73	Name one war fought by the United States in the 1900s.
74	Who was President during World War I?
75	Who was President during the Great Depression and World War II?
76	Who did the United States fight in World War II?
77	Before he was President, Eisenhower was a general.  What war was he in?
78	During the Cold War, what was the main concern of the United States?
79	What movement tried to end racial discrimination?
80	What did Martin Luther King, Jr. do?
81	What major event happened on September 11, 2001, in the United States?
82	Name one American Indian tribe in the United States.
83	Name one of the two longest rivers in the United States
84	What ocean is on the West Coast of the United States?
85	What ocean is on the East Cost of the United States?
86	Name one U.S. territory
87	Name one state that borders Canada.
88	Name one state that borders Mexico
89	What is the capital of the United States?
90	Where is the Statue of Liberty?
91	Why does the flag have 13 stripes?
92	Why does the flag have 50 stars?
93	What is the name of the national anthem?
94	When do we celebrate Independence Day?
95	Name one national U.S. holiday.
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jamescorey
--

SELECT pg_catalog.setval('questions_id_seq', 95, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jamescorey
--

COPY schema_migrations (version) FROM stdin;
20141215185752
20141215190200
20141215190421
20141215190559
20141215200605
20141215201648
20141215230051
20141216211815
20141216212903
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jamescorey
--

COPY users (id, email, hashed_password, salt) FROM stdin;
1	pam@yam.com	7109cfbc5c05a518be7db279db34951e1f8833da	"AfYJfM^_<pf0j%K6N5RdOp9;%
2	james@corey.com	8a0ff0594c2b8398ef1cfb83f369bd9e2d87f8a0	Q!R]?+-*e:{H-Fz.%Y\\1v7t.*q
3	rebecca@name.com	1b9264fee45b580b308582224e3e4e2745758002	xU'!_=#3#fzvQ|:[Wg)D0U@u@<
4	audrey@email.com	a31b4821fb589f8fa98e6e2eb294e7c0fb37680f	(\\0Bdtc0h!`ePw\\XUmBjY<hx<F
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jamescorey
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- Name: answers_pkey; Type: CONSTRAINT; Schema: public; Owner: jamescorey; Tablespace: 
--

ALTER TABLE ONLY answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: forums_pkey; Type: CONSTRAINT; Schema: public; Owner: jamescorey; Tablespace: 
--

ALTER TABLE ONLY forums
    ADD CONSTRAINT forums_pkey PRIMARY KEY (id);


--
-- Name: questions_pkey; Type: CONSTRAINT; Schema: public; Owner: jamescorey; Tablespace: 
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: jamescorey; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: jamescorey; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: jamescorey
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM jamescorey;
GRANT ALL ON SCHEMA public TO jamescorey;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

