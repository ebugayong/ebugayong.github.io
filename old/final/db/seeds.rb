# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
FirstYear.delete_all
SecondYear.delete_all
Case.delete_all
CaseSource.delete_all
Meeting.delete_all

# Create the first years
puts "Creating First Years..."
Mann = FirstYear.create(first_name: 'Ryan', last_name: 'Mann', email_address: 'rmann2016@kellogg.northwestern.edu', password: 'AppCreator')
Smith = FirstYear.create(first_name: 'John', last_name: 'Smith', email_address: 'jsmith2016@kellogg.northwestern.edu', password: 'Generic')
Hendrix = FirstYear.create(first_name: 'Jimmy', last_name: 'Hendrix', email_address: 'jhendrix2016@kellogg.northwestern.edu', password: 'Spangled')
Bugayong = FirstYear.create(first_name: 'Elizabeth ', last_name: 'Bugayong', email_address: 'ebugayong2015@kellogg.northwestern.edu', password: 'Password')
Jelinek = FirstYear.create(first_name: 'Ashley', last_name: 'Jelinek', email_address: 'ajelinek2015@kellogg.northwestern.edu', password: 'Missing')


# Create the second years
puts "Creating SecondYears..."
Paper = SecondYear.create(first_name: 'Copy', last_name: 'Paper', email_address: 'cpaper2015@kellogg.northwestern.edu', password: 'Friday 99')
John = SecondYear.create(first_name: 'Little', last_name: 'John', email_address: 'ljohn2015@kellogg.northwestern.edu', password: 'Yeahhh')
Zee = SecondYear.create(first_name: 'Jay', last_name: 'Zee', email_address: 'jzee2015@kellogg.northwestern.edu', password: 'Uhhuh')
Knowles = SecondYear.create(first_name: 'Beyonce', last_name: 'Knowles', email_address: 'wokeuplikethis@fab.com', password: 'Surfboard')
West = SecondYear.create(first_name: 'Kayne', last_name: 'West', email_address: 'yeezus@yeezus.com', password: 'Croissants')

# Create the casesource
puts "Creating casesources..."
source1 = CaseSource.create(source: 'McK')
source2 = CaseSource.create(source: 'BCG')
source3 = CaseSource.create(source: 'Bain')
source4 = CaseSource.create(source: 'Deloitte')
source5 = CaseSource.create(source: 'KCC')

# Create the cases
puts "Creating cases..."
case1 = Case.create(source_id: source1.id, title: 'Orrington Office Supplies')
case2 = Case.create(source_id: source1.id, title: 'ComputerCo')
case3 = Case.create(source_id: source1.id, title: 'Big Oil')
case4 = Case.create(source_id: source1.id, title: 'Dark Sky')
case5 = Case.create(source_id: source1.id, title: 'Chic Cosmetology')

# Create the meeting
puts "Creating meetings..."
meeting1 = Meeting.create(meeting_time: '2015,1,2,3,4', firstyear_id: Mann.id, secondyear_id: Paper.id, case_id: case1.id)
meeting2 = Meeting.create(meeting_time: '2015,1,2,4,5', firstyear_id: Mann.id, secondyear_id: Paper.id, case_id: case1.id)
meeting3 = Meeting.create(meeting_time: '2015,1,2,5,6', firstyear_id: Smith.id, secondyear_id: Paper.id, case_id: case2.id)
meeting4 = Meeting.create(meeting_time: '2015,1,2,6,7', firstyear_id: Jelinek.id, secondyear_id: Paper.id, case_id: case3.id)
meeting5 = Meeting.create(meeting_time: '2015,1,2,7,8', firstyear_id: Jelinek.id, secondyear_id: Paper.id, case_id: case3.id)

puts "There are now #{FirstYear.count} first years, #{SecondYear.count} second years, #{Case.count} cases from #{CaseSource.count} sources, and #{Meeting.count} meetings in the database."
