require_relative '../app.rb'

Question.delete_all

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
			{question: "What are two rights in the Declaration of Independence?", wrong_answer_one: "Love", wrong_answer_two: "Pursuit of wealth"},
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
			{question: "We elect a U.S. Representative for how many years?", wrong_answer_one: "Four (4)", wrong_answer_two: "Six (6)"}
			{question: "Name your U.S. Representative.", wrong_answer_one: nil, wrong_answer_two: nil},
			{question: "Who is one of your U.S. Senators now?", wrong_answer_one: nil, wrong_answer_two: nil},
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
			{question: "What are two Cabinet-level positions?", wrong_answer_one: "Secretary of Letters", wrong_answer_two: "Secretary of Sport"},
			{question: "What does the judicial branch do?", wrong_answer_one: "Write laws", wrong_answer_two: "Enforce laws"},
		]
	
