User.delete_all;
Submission.delete_all;
Comment.delete_all;
Vote.delete_all;

u1 = User.create(username: "Bill", password: "1234")
u2 = User.create(username: "Sonny", password: "abcd")
u3 = User.create(username: "Shannon", password: "mypassword")
u4 = User.create(username: "Julianna", password: "password")



s1= Submission.create(title: 'the age of the computer', content: 'bla bla bla', user_id: u1.id)
s2= Submission.create(title: 'an amazing title here', content: 'this is the best article ever', user_id: u2.id)
s3= Submission.create(title: 'what is the something', url: 'http://www.something.com', user_id: u1.id)
s4= Submission.create(title: 'New iphone is the best ever', url: 'http://www.something.com', user_id: u4.id)


c1 = Comment.create(content: 'this submisison rocks', user_id: u1.id, submission_id: s2.id)
c2 = Comment.create(content: 'this is a terrible submission', user_id: u2.id, submission_id: s1.id, comment_id: c1.id)
c3 = Comment.create(content: 'the iphone is the best!', user_id: u3.id, submission_id: s4.id)


v1 = Vote.create(user_id: u1.id, value: true, submission_id: s2.id)
v2 = Vote.create(user_id: u2.id, value: true, submission_id: s1.id)
v3 = Vote.create(user_id: u4.id, value: true, comment_id: c2.id)




