require_relative '../app.rb'

Question.delete_all
Answer.delete_all

	questions = Question.create(
		[
			{question: "What is the supreme law of the land?", wrong_answer_one: "Declaration of Independence", wrong_answer_two: "Federalist Papers"},
			{question: "What does the Constitution do?", wrong_answer_one: "Sets trade policy", wrong_answer_two: "Defines land ownership"},
			{question: "The idea of self-government is in the first three words of the Constitution.  What are these words?", wrong_answer_one: "Trusting in God", wrong_answer_two: "The people do"},
			{question: "What is an amendment?", wrong_answer_one: "A change or addition to the Federalist Papers.", wrong_answer_two: "A change or addition to the Declaration of Independence."},
			{question: "What do we call the first ten amendments to the Constitution?", wrong_answer_one: "The Ten Commandments", wrong_answer_two: "The First Ten"},
			{question: "What is one right or freedeom from the First Amendment?", wrong_answer_one: "Bear Arms", wrong_answer_two: "Own Land"},
			{question: "How many amendments does the Constitution have?", wrong_answer_one: "Twenty-five (25)", wrong_answer_two: "Thirty (30)"},
			{question: "What did the Declaration of Independence do?", wrong_answer_one: "Set up the government.", wrong_answer_two: "Freed the slaves."},
			{question: "What is a right in the Declaration of Independence?", wrong_answer_one: "Love", wrong_answer_two: "Pursuit of wealth"},
			{question: "What is freedom of religion?", wrong_answer_one: "The government sanctions a particular religion.", wrong_answer_two: "Religion is taught in public schools."},
			{question: "What is the economic system in the United States?", wrong_answer_one: "Socialist economy", wrong_answer_two: "Libertarian economy"},
			{question: "What is the 'rule of law'?", wrong_answer_one: "The military determines laws.", wrong_answer_two: "A law textbook."},
			{question: "Name one branch or part of the government.", wrong_answer_one: "Council / Board", wrong_answer_two: "Parliament"},
			{question: "What stops one branch of government from becoming too powerful?", wrong_answer_one: "Strong military.", wrong_answer_two: "The Declaration of Independence"},
			{question: "Who is in charge of the executive branch?", wrong_answer_one: "The Prime Minister", wrong_answer_two: "The Governor"},
			{question: "Who makes federal laws?", wrong_answer_one: "Parliament", wrong_answer_two: "The President"},
			{question: "What are the two parts of the U.S. Congress?", wrong_answer_one: "The Lower House and Upper House", wrong_answer_two: "The House of Lords and the House of Commons"},
			{question: "How many U.S. Senators are there?", wrong_answer_one: "Fifty (50)", wrong_answer_two: "Two hundred (200)"},
			{question: "We elect a U.S. Senator for how many years?", wrong_answer_one: "Two (2)", wrong_answer_two: "Four (4)"},
			{question: "The House of Representatives has how many voting members?", wrong_answer_one: "One hundred (100)", wrong_answer_two: "Fifty (50)"},
			{question: "We elect a U.S. Representative for how many years?", wrong_answer_one: "Four (4)", wrong_answer_two: "Six (6)"},
			{question: "Who does a U.S. Senator represent?", wrong_answer_one: "Everyone in his/her district.", wrong_answer_two: "The entire nation."},
			{question: "Why do some states have more Representatives than other states?", wrong_answer_one: "Because of the state's wealth - More money means more representatives.", wrong_answer_two: "Because of the state's age - Older states have more representation"},
			{question: "We elect a President for how many years?", wrong_answer_one: "Six (6)", wrong_answer_two: "Two (2)"},
			{question: "In what month do we vote for President?", wrong_answer_one: "December", wrong_answer_two: "October"},
			{question: "What is the name of the President of the United States now?", wrong_answer_one: "George W Bush", wrong_answer_two: "Bill Clinton"},
			{question: "What is the name of the Vice President of the United States now?", wrong_answer_one: "Barack Obama", wrong_answer_two: "Hillary Clinton"},
			{question: "If the President can no longer serve, who becomes President?", wrong_answer_one: "The Speaker of the House", wrong_answer_two: "The First Lady"},
			{question: "If both the President and the Vice President can no longer serve, who becomes President?", wrong_answer_one: "The First Lady", wrong_answer_two: "Attorney General"},
			{question: "Who is the Commander in Chief of the military?", wrong_answer_one: "The Vice President", wrong_answer_two: "The Prime Minister"},
			{question: "Who signs bills to become laws?", wrong_answer_one: "The Prime Minister", wrong_answer_two: "The Speaker of the House"},
			{question: "Who vetoes bills?", wrong_answer_one: "The Vice President", wrong_answer_two: "The Speaker of the House"},
			{question: "What does the President's Cabinet do?", wrong_answer_one: "House the President's dishes", wrong_answer_two: "Protects the President"},
			{question: "Name one Cabinet-level position.", wrong_answer_one: "Secretary of Letters", wrong_answer_two: "Secretary of Sport"},
			{question: "What does the judicial branch do?", wrong_answer_one: "Write laws", wrong_answer_two: "Enforce laws"},
			{question: "What is the highest court in the United States?", wrong_answer_one: "The Federal Court", wrong_answer_two: "The Court"},
			{question: "How many justices are on the Supreme Court?", wrong_answer_one: "Seven (7)", wrong_answer_two: "Eleven (11)"},
			{question: "Who is the Chief Justice of the United States now?", wrong_answer_one: "Antonin Scalia", wrong_answer_two: "Elena Kagan"},
			{question: "Under our Constitution, some powers belong to the federal government.  What is one power of the federal government?", wrong_answer_one: "Provide safety (fire departments", wrong_answer_two: "Provide schooling and education"},
			{question: "Under our Constitution, some powers belong to states.  What is one power of the states?", wrong_answer_one: "To print money", wrong_answer_two: "To make treaties"},
			{question: "What is one of the major political parties in the United States?", wrong_answer_one: "Green", wrong_answer_two: "Liberterian"},
			{question: "What is the political party of the President now?", wrong_answer_one: "Republican", wrong_answer_two: "Socialist"},
			{question: "There are four amendments to the Constitution about who can vote.  Describe one of them.", wrong_answer_one: "Citzens fourteen (14) and older can vote.", wrong_answer_two: "Undocumented immigrants may vote."},
			{question: "What is one responsibility that is only for United States citizens?", wrong_answer_one: "Owning property.", wrong_answer_two: "Serving in the military."},
			{question: "Name one right only for United States citizens.", wrong_answer_one: "Owning land.", wrong_answer_two: "Free speech."},
			{question: "What is one right of everyone living in the United States?", wrong_answer_one: "Freedom of Wealth", wrong_answer_two: "Right to Shelter"},
			{question: "What do we show loyalty to when we say the Pledge of Allegiance?", wrong_answer_one: "The President", wrong_answer_two: "The Military"},
			{question: "What is one promise you make when you become a United States citizen?", wrong_answer_one: "Pay taxes.", wrong_answer_two: "Buy land."},
			{question: "How old do citizens have to be to vote for President?", wrong_answer_one: "Fourteen (14).", wrong_answer_two: "Twenty-one (21)"},
			{question: "What is one way that Americans can participate in their democracy?", wrong_answer_one: "Serve in the Military.", wrong_answer_two: "Own a business."},
			{question: "When is the last day you can send in federal income tax forms?", wrong_answer_one: "April 1", wrong_answer_two: "May 15"},
			{question: "When must all men register for the Selective Service?", wrong_answer_one: "Between sixteen (16) and eighteen (18)", wrong_answer_two: "Between twenty-six (26) and thirty (30)"},
			{question: "What is one reason colonists came to America?", wrong_answer_one: "Integrate with American Indians.", wrong_answer_two: "Find a shorter route to China."},
			{question: "Who lived in America before the Europeans arrived?", wrong_answer_one: "Chinese", wrong_answer_two: "Africans"},
			{question: "What group of people was taken to America and sold as slaves?", wrong_answer_one: "Arabs", wrong_answer_two: "Norwegians"},
			{question: "Why did the colonists fight the British?", wrong_answer_one: "To free the slaves.", wrong_answer_two: "To end the British Empire."},
			{question: "Who wrote the Declaration of Independence?", wrong_answer_one: "George Washington", wrong_answer_two: "Abraham Lincoln"},
			{question: "When was the Declaration of Independence adopted?", wrong_answer_one: "1861", wrong_answer_two: "1492"},
			{question: "There were 13 original states.  Name one.", wrong_answer_one: "Michigan", wrong_answer_two: "Florida"},
			{question: "What happened at the Constitutional Convention?", wrong_answer_one: "The Founding Fathers wrote the Federalist Papers", wrong_answer_two: "The Founding Fathers wrote the Declaration of Independence"},
			{question: "When was the Constitution written?", wrong_answer_one: "1776", wrong_answer_two: "1864"},
			{question: "The Federalist Papers supported the passage of the U.S. Constitution.  Name on of the writers.", wrong_answer_one: "Abraham Lincoln", wrong_answer_two: "George Washington"},
			{question: "What is one theing Benjamin Franklin is famous for?", wrong_answer_one: "Being the 2nd President.", wrong_answer_two: "First General of the U.S. Army"},
			{question: "Who is the 'Father of our Country'?", wrong_answer_two: "Barack Obama", wrong_answer_two: "Abraham Lincoln"},
			{question: "Who was the first President?", wrong_answer_one: "Benjamin Franklin", wrong_answer_two: "Abraham Lincoln"},
			{question: "What territory did the United States buy from France in 1803?", wrong_answer_one: "Alaska", wrong_answer_two: "California"},
			{question: "Name one war fought by the United States in the 1800s.", wrong_answer_one: "World War I", wrong_answer_two: "Revolutionary War"},
			{question: "Name the U.S. war between the North and the South", wrong_answer_one: "The Spanish-American War", wrong_answer_two: "The Vietnam War"},
			{question: "Name one problem that led to the Civil War", wrong_answer_one: "British Imperialism", wrong_answer_two: "Canada invaded New York."},
			{question: "What was one important thing that Abraham Lincoln did?", wrong_answer_one: "Wrote the Declaration of Independence.", wrong_answer_two: "Fought in the Revolutionary War."},
			{question: "What did the Emancipation Proclamation do?", wrong_answer_one: "Gave women the right to vote.", wrong_answer_two: "Started the Revolutionary War."},
			{question: "What did Susan B. Anthony do?", wrong_answer_one: "Made the first U.S. flag", wrong_answer_two: "First woman President of the U.S."},
			{question: "Name one war fought by the United States in the 1900s.", wrong_answer_one: "Civil War", wrong_answer_two: "Mexican-American War"},
			{question: "Who was President during World War I?", wrong_answer_one: "John F. Kennedy", wrong_answer_two: "Thomas Jefferson"},
			{question: "Who was President during the Great Depression and World War II?", wrong_answer_one: "Richard Nixon", wrong_answer_two: "Theodore Roosevelt"},
			{question: "Who did the United States fight in World War II?", wrong_answer_one: "Mexico, Brazil and Argentina", wrong_answer_two: "United Kingdom, France, and Belgium"},
			{question: "Before he was President, Eisenhower was a general.  What war was he in?", wrong_answer_one: "Civil War", wrong_answer_two: "World War I"},
			{question: "During the Cold War, what was the main concern of the United States?", wrong_answer_one: "Greed", wrong_answer_two: "Global Warming"},
			{question: "What movement tried to end racial discrimination?", wrong_answer_one: "Racial Justice Movement", wrong_answer_two: "Freedom and Equality Movement"},
			{question: "What did Martin Luther King, Jr. do?", wrong_answer_one: "First Black President of the U.S.", wrong_answer_two: "First Black general of the U.S. Army"},
			{question: "What major event happened on September 11, 2001, in the United States?", wrong_answer_one: "The Yankees won the World Series", wrong_answer_two: "The U.S. turned 200 years old"},
			{question: "Name one American Indian tribe in the United States.", wrong_answer_one: "Aztec", wrong_answer_two: "Brahma"},
			{question: "Name one of the two longest rivers in the United States", wrong_answer_one: "Rio Grande", wrong_answer_two: "Colorado"},
			{question: "What ocean is on the West Coast of the United States?", wrong_answer_one: "Atlantic", wrong_answer_two: "Indian"},
			{question: "What ocean is on the East Cost of the United States?", wrong_answer_one: "Pacific", wrong_answer_two: "Arctic"},
			{question: "Name one U.S. territory", wrong_answer_one: "Panama", wrong_answer_two: "Aruba"},
			{question: "Name one state that borders Canada.", wrong_answer_one: "Maryland", wrong_answer_two: "Missouri"},
			{question: "Name one state that borders Mexico", wrong_answer_one: "Florida", wrong_answer_two: "Nevada"},
			{question: "What is the capital of the United States?", wrong_answer_one: "New York City", wrong_answer_two: "Philadelphia"},
			{question: "Where is the Statue of Liberty?", wrong_answer_one: "Washington, DC", wrong_answer_two: "Boston"},
			{question: "Why does the flag have 13 stripes?", wrong_answer_one: "Because there were 13 Founding Fathers.", wrong_answer_two: "There were 13 soldiers killed during the Revolutionary War"},
			{question: "Why does the flag have 50 stars?", wrong_answer_one: "Because there are 50 Senators", wrong_answer_two: "Because there were 50 original colonies."},
			{question: "What is the name of the national anthem?", wrong_answer_one: "Battle Hymn of the Republic", wrong_answer_two: "America the Beautiful"},
			{question: "When do we celebrate Independence Day?", wrong_answer_one: "July 13", wrong_answer_two: "May 25"},
			{question: "Name one national U.S. holiday.", wrong_answer_one: "Easter", wrong_answer_two: "Eid"}
		])
	

	answers = Answer.create(
		[
			{answer: "The Constitution", question_id: 1},
			{answer: "Sets up the government.", question_id: 2},
			{answer: "Defines the government.", question_id: 2},
			{answer: "Protects basic rights of Americans.", question_id: 2},
			{answer: "We the People", question_id: 3},
			{answer: "A change or addition to the Constitution.", question_id: 4},
			{answer: "The Bill of Rights", question_id: 5},
			{answer: "Speech", question_id: 6},
			{answer: "Religion", question_id: 6},
			{answer: "Assembly", question_id: 6},
			{answer: "Press", question_id: 6},
			{answer: "Petition the government", question_id: 6},
			{answer: "Twenty-seven (27)", question_id: 7},
			{answer: "Announced our independence from Great Britain", question_id: 8},
			{answer: "Life", question_id: 9},
			{answer: "Liberty", question_id: 9},
			{answer: "Pursuit of Happiness", question_id: 9},
			{answer: "You can practice any religion, or not practice a religion", question_id: 10},
			{answer: "Capitalist economy", question_id: 11},
			{answer: "Everyone (including the government) must follow the law.", question_id: 12},
			{answer: "Congress / Legislative", question_id: 13},
			{answer: "President / Executive", question_id: 13},
			{answer: "The Courts / Judicial", question_id: 13},
			{answer: "Checks and Balances / Separation of Powers", question_id: 14},
			{answer: "The President", question_id: 15},
			{answer: "Congress", question_id: 16},
			{answer: "The Senate and House of Representatives", question_id: 17},
			{answer: "One hundred (100)", question_id: 18},
			{answer: "Six (6)", question_id: 19},
			{answer: "Four hundred thirty-five (435)", question_id: 20},
			{answer: "Two (2)", question_id: 21},
			{answer: "All people of the state", question_id: 22},
			{answer: "Because of the state's population - Larger population means more representatives", question_id: 23},
			{answer: "Four (4)", question_id: 24},
			{answer: "November", question_id: 25},
			{answer: "Barack Obama", question_id: 26},
			{answer: "Joseph Biden", question_id: 27},
			{answer: "The Vice President", question_id: 28},
			{answer: "The Speaker of the House", question_id: 29},
			{answer: "The President", question_id: 30},
			{answer: "The President", question_id: 31},
			{answer: "The President", question_id: 32},
			{answer: "Advices the President", question_id: 33},
			{answer: "Secretary of Agriculture", question_id: 34},
			{answer: "Secretary of Defense", question_id: 34},
			{answer: "Secretary of Education", question_id: 34},
			{answer: "Secretary of Energy", question_id: 34},
			{answer: "Secretary of Health and Human Services", question_id: 34},
			{answer: "Secretary of Homeland Security", question_id: 34},
			{answer: "Secretary of Housing and Urban Development", question_id: 34},
			{answer: "Secretary of the Interior", question_id: 34},
			{answer: "Secretary of Labor", question_id: 34},
			{answer: "Secretary of State", question_id: 34},
			{answer: "Secretary of Transportation", question_id: 34},
			{answer: "Secretary of the Treasury", question_id: 34},
			{answer: "Secretary of Veterans Affairs", question_id: 34},
			{answer: "Attorney General", question_id: 34},
			{answer: "Vice President", question_id: 34},
			{answer: "Reviews laws.", question_id: 35},
			{answer: "Explains laws.", question_id: 35},
			{answer: "Resolves disputes/disagreements", question_id: 35},
			{answer: "Decides if a law goes against the Constitution.", question_id: 35},
			{answer: "The Supreme Court", question_id: 36},
			{answer: "Nine (9)", question_id: 37},
			{answer: "John Roberts", question_id: 38},
			{answer: "To print money.", question_id: 39},
			{answer: "To declare war.", question_id: 39},
			{answer: "To create an army.", question_id: 39},
			{answer: "To make treaties.", question_id: 39},
			{answer: "Provide schooling and education.", question_id: 40},
			{answer: "Provide protection (police)", question_id: 40},
			{answer: "Provide safety (fire department)", question_id: 40},
			{answer: "Give a driver's license.", question_id: 40},
			{answer: "Approve zoning and land use.", question_id: 40},
			{answer: "Democratic", question_id: 41},
			{answer: "Republican", question_id: 41},
			{answer: "Democratic", question_id: 42},
			**{answer: "John Boehner", question_id: 43},
			{answer: "Citizens eighteen (18) and older can vote", question_id: 44},
			{answer: "You don't have to pay a poll tax to vote.", question_id: 44},
			{answer: "Any citizen can vote.", question_id: 44},
			{answer: "A male citizen of any race can vote.", question_id: 44},
			{answer: "Serve on a jury.", question_id: 45},
			{answer: "Vote in a federal election.", question_id: 45},
			{answer: "Vote in a federal election.", question_id: 46},
			{answer: "Run for federal office.", question_id: 46},
			{answer: "Freedom of expression", question_id: 47},
			{answer: "Freedom of speech", question_id: 47},
			{answer: "Freedom of assembly", question_id: 47},
			{answer: "Freedom to petition the government", question_id: 47},
			{answer: "Freedom to worship", question_id: 47},
			{answer: "The right to bear arms", question_id: 47},
			{answer: "The United States", question_id: 48},
			{answer: "The flag", question_id: 48},
			{answer: "Give up loyalty to other countries.", question_id: 49},
			{answer: "Defend the Constitution and laws of the United States", question_id: 49},
			{answer: "Obey the laws of the United States", question_id: 49},
			{answer: "Serve in the U.S. military if needed", question_id: 49},
			{answer: "Serve the nation if needed", question_id: 49},
			{answer: "Be loyal to the United States", question_id: 49},
			{answer: "Eighteen (18) or older.", question_id: 50},
			{answer: "Vote", question_id: 51},
			{answer: "Join a political party.", question_id: 51},
			{answer: "Help with a campaign", question_id: 51},
			{answer: "Join a civic group", question_id: 51},
			{answer: "Give an elected official your opinion on an issue.", question_id: 51},
			{answer: "Call Senators and Representatives", question_id: 51},
			{answer: "Publicly support or oppose an issue or policy", question_id: 51},
			{answer: "Run for office", question_id: 51},
			{answer: "Write to a newspaper", question_id: 51},
			{answer: "April 15", question_id: 52},
			{answer: "Between eighteen (18) and twenty-six (26).", question_id: 53},
			{answer: "Freedom", question_id: 54},
			{answer: "Political liberty", question_id: 54},
			{answer: "Religious freedom", question_id: 54},
			{answer: "Economic opportunity", question_id: 54},
			{answer: "Practice their religion", question_id: 54},
			{answer: "Escape persecution", question_id: 54},
			{answer: "American Indians / Native Americans", question_id: 55},
			{answer: "Africans", question_id: 56},
			{answer: "Because of high taxes (Taxation without Representation)", question_id: 57},
			{answer: "Because the British army stayed in their houses (Boarding, quartering)", question_id: 57},
			{answer: "Because they didn't have self-government", question_id: 57},
			{answer: "Thomas Jefferson", question_id: 58},
			{answer: "July 4, 1776", question_id: 59},
			{answer: "New Hampshire", question_id: 60},
			{answer: "Massachusetts", question_id: 60},
			{answer: "Rhode Island", question_id: 60},
			{answer: "Connecticut", question_id: 60},
			{answer: "New York", question_id: 60},
			{answer: "New Jersey", question_id: 60},
			{answer: "Pennsylvania", question_id: 60},
			{answer: "Delaware", question_id: 60},
			{answer: "Maryland", question_id: 60},
			{answer: "Virginia", question_id: 60},
			{answer: "North Carolina", question_id: 60},
			{answer: "South Carolina", question_id: 60},
			{answer: "Georgia", question_id: 60},
			{answer: "The Founding Fathers wrote the Constitution.", question_id: 61},
			{answer: "1787", question_id: 62},
			{answer: "James Madison", question_id: 63},
			{answer: "Alexander Hamilton (Publius)", question_id: 63},
			{answer: "John Jay", question_id: 63},
			{answer: "U.S. diplomat", question_id: 64},
			{answer: "Oldest member of the Constitutional Convention", question_id: 64},
			{answer: "First Postmaster General of the United States", question_id: 64},
			{answer: "Writer of 'Poor Richard's Almanac'", question_id: 64},
			{answer: "Started the first free libraries.", question_id: 64},
			{answer: "George Washington", question_id: 65},
			{answer: "George Washington", question_id: 66},
			{answer: "The Louisiana Territory", question_id: 67},
			{answer: "War of 1812", question_id: 68},
			{answer: "Mexican-American War", question_id: 68},
			{answer: "Civil War", question_id: 68},
			{answer: "Spanish-American War", question_id: 68},
			{answer: "The Civil War", question_id: 69},
			{answer: "Slavery", question_id: 70},
			{answer: "Economic reasons", question_id: 70},
			{answer: "States' rights", question_id: 70},
			{answer: "Freed the slaves (Emmancipation Proclamation", question_id: 71},
			{answer: "Saved (or preserved) the Union", question_id: 71},
			{answer: "Led the United States during the Civil War", question_id: 71},
			{answer: "Freed the slaves in the Confederacy (South)", question_id: 72},
			{answer: "Fought for women's rights.", question_id: 73},
			{answer: "World War I", question_id: 74},
			{answer: "World War II", question_id: 74},
			{answer: "Korean War", question_id: 74},
			{answer: "Vietnam War", question_id: 74},
			{answer: "(Persian) Gulf War", question_id: 74},
			{answer: "Woodrow Wilson", question_id:75},
			{answer: "Franklin Roosevelt", question_id: 76},
			{answer: "Japan, Germany and Italy", question_id: 77},
			{answer: "World War II", question_id: 78},
			{answer: "Communism", question_id: 79},
			{answer: "Civil Rights Movement", question_id: 80},
			{answer: "Fought for civil rights.", question_id: 81},
			{answer: "Worked for equality for all Americans.", question_id: 81},
			{answer: "Terrorists attacked the United States.", question_id: 82},
			{answer: "Cherokee", question_id: 83},
			{answer: "Navajo", question_id: 83},
			{answer: "Sioux", question_id: 83},
			{answer: "Chippewa", question_id: 83},
			{answer: "Choctaw", question_id: 83},
			{answer: "Pueblo", question_id: 83},
			{answer: "Apache", question_id: 83},
			{answer: "Iroquois", question_id: 83},
			{answer: "Creek", question_id: 83},
			{answer: "Blackfeet", question_id: 83},
			{answer: "Seminole", question_id: 83},
			{answer: "Cheyenne", question_id: 83},
			{answer: "Arawak", question_id: 83},
			{answer: "Shawnee", question_id: 83},
			{answer: "Mohegan", question_id: 83},
			{answer: "Huron", question_id: 83},
			{answer: "Oneida", question_id: 83},
			{answer: "Lakota", question_id: 83},
			{answer: "Crow", question_id: 83},
			{answer: "Teton", question_id: 83},
			{answer: "Hopi", question_id: 83},
			{answer: "Inuit", question_id: 83},
			{answer: "Missouri River", question_id: 84},
			{answer: "Mississippi River", question_id: 84},
			{answer: "Pacific Ocean", question_id: 85},
			{answer: "Atlantic Ocean", question_id: 86},
			{answer: "Puerto Rico", question_id: 87},
			{answer: "U.S. Virgin Islands", question_id: 87},
			{answer: "American Samoa", question_id: 87},
			{answer: "Northern Mariana Islands", question_id: 87},
			{answer: "Guam", question_id: 87},
			{answer: "Maine", question_id: 88},
			{answer: "New Hampshire", question_id: 88},
			{answer: "Vermont", question_id: 88},
			{answer: "New York", question_id: 88},
			{answer: "Pennsylvania", question_id: 88},
			{answer: "Ohio", question_id: 88},
			{answer: "Michigan", question_id: 88},
			{answer: "Minnesota", question_id: 88},
			{answer: "North Dakota", question_id: 88},
			{answer: "Montana", question_id: 88},
			{answer: "Idaho", question_id: 88},
			{answer: "Washington", question_id: 88},
			{answer: "Alaska", question_id: 88},
			{answer: "California", question_id: 89},
			{answer: "Arizona", question_id: 89},
			{answer: "New Mexico", question_id: 89},
			{answer: "Texas", question_id: 89},
			{answer: "Washington, D.C.", question_id: 90},
			{answer: "New York Harbor", question_id: 91},
			{answer: "Liberty Island", question_id: 91},
			{answer: "Because there were 13 original colonies.", question_id: 92},
			{answer: "Because there is one star for each of the 50 states.", question_id: 93},
			{answer: "The Star-Spangled Banner", question_id: 94},
			{answer: "July 4", question_id: 95},
			{answer: "New Year's Day", question_id: 96},
			{answer: "Martin Luther King, Jr. Day", question_id: 96},
			{answer: "Memorial Day", question_id: 96},
			{answer: "Independence Day", question_id: 96},
			{answer: "Labor Day", question_id: 96},
			{answer: "Columbus Day", question_id: 96},
			{answer: "Veterans Day", question_id: 96},
			{answer: "Thanksgiving Day", question_id: 96},
			{answer: "Christmas", question_id: 96}
		]
)



