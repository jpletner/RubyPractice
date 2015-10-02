class Response
  @@responses = []
  @@dummies  =  [] ##****added new dummies class/array*****

#responses which are a combo of question, and multiple answers are pulled from eliza_questions and added to the @@responses array/class.
  def self.add_response question, *answers
    @@responses << new(question, answers)
  end

#****added a add_dummies method to add the dummy question and answer combo from the eliza_questions file*****
  def self.add_dummies *answers
      @@dummies << new('$$',answers)
  end

#get_answer takes entered value (question) and runs it through the @@responses array/class which is created by using the question, answers combos in eliza_questions. it checks to see if the question contains a match by using the good_for? method. 
  def self.get_answer question
    responses = @@responses.select{|r| r.good_for? question}
    if responses.length > 0
      responses.sample.get_answers.sample
    else
#*****pulling sample response from dummy responses
        @@dummies.sample.get_answers.sample
    end
  end

#at initialization, all entered values are put in downcase and stored as @question.
  def initialize question, answers
    @question = question.downcase
    @answers = answers
  end

  def good_for? question
    question.downcase.include? @question 
  end #returns true or false

  def get_answers
    @answers
  end
end