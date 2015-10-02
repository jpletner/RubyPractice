require_relative 'response'

Response.add_response 'dog', 'Do you like animals?', 'What about other animals?'

Response.add_response 'mom', 'Tell me more about your mother.', 'Tell me more about your family.'

Response.add_response 'hurt', 'How has your health been?'

Response.add_response 'son', 'Tell me more about your son.', 'Tell me more about your family.'
#*****added a new response*****

Response.add_dummies 'Tell me more.', "That's interesting.", 'Go on.', 'Wow, that is sad!', 'You are very lucky'

#*****changed default question for add_dummies to $$ and added a few new dummy responses*****