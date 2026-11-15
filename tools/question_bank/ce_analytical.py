from ce_common import *
import itertools
dom('ce-analytical')

# ---- executable checks for the puzzle and algorithm questions
def collatz(n):
    c=0
    while n>1:
        n=n//2 if n%2==0 else 3*n+1; c+=1
    return c
assert collatz(10)==6
f={1:1}
for n in range(2,6): f[n]=f[n-1]+2*n
assert f[5]==29
i=1;it=0
while i<100: i*=2; it+=1
assert it==7
x,y=3,4; x=x+y; y=x-y; x=x-y; assert (x,y)==(4,3)
assert sum(i*i for i in range(1,6))==55
# knights and knaves: A says "B is a knave"; B says "A and I are the same type"
ok=[(a,b) for a in (True,False) for b in (True,False) if (a==(not b)) and (b==(a==b))]
assert ok==[(True,False)]
# three liars chain: A: "B lies", B: "C lies", C: "A and B both lie"
ok=[(a,b,c) for a,b,c in itertools.product((True,False),repeat=3) if a==(not b) and b==(not c) and c==((not a) and (not b))]
assert ok==[(False,True,False)]
# pets puzzle
sol=[p for p in itertools.permutations(['cat','dog','parrot']) if p[0]=='cat' and p[1]!='cat' and p[2]!='dog']
assert sol==[('cat','dog','parrot')]
# 9 coins -> 2 weighings (3^2 >= 9)
assert 3**2>=9 and 3**1<9
assert abs((1-0.7**2)-0.51)<1e-9 and 0.3+0.0==0.3
assert max(r for r in [(w*(20-w)) for w in range(0,21)])==100
assert comb(6,2)==15 if False else math.comb(6,2)==15
assert 2*20+1==41 and sum(range(1,9))==36
assert abs(70+60-100)==30
assert (6+30/60*0)==6 and 6*60+30==390

topic('Data Interpretation')
E('b',"A shop sold 40, 55, 35 and 50 pens on four consecutive days. What was the average number of pens sold per day?","45","42","47","50","The total is 180 and 180 ÷ 4 = 45.","(40+55+35+50)/4")
E('i',"Revenue (in crore rupees) was 80 in 2022, 100 in 2023, 90 in 2024 and 126 in 2025. In which year was the percentage growth over the previous year the highest?","2025","2023","2024","2022","Growth: 2023 = 25%, 2024 = −10%, 2025 = 40%. The highest growth is in 2025.")
E('i',"Using the same revenue figures (80, 100, 90, 126 crore rupees for 2022 to 2025), what was the percentage fall in revenue from 2023 to 2024?","10%","9%","11.1%","12.5%","The fall is 10 out of the 2023 value of 100, which is 10%.","(100-90)/100*100")
E('i',"A company's break-even point is the number of units at which revenue equals cost. Fixed costs are 20,000 rupees and each unit adds 50 rupees to profit after variable costs. How many units must be sold to break even?","400","200","500","1,000","Break-even units = fixed cost ÷ contribution per unit = 20,000 ÷ 50 = 400.","20000/50")
E('i',"Marks of seven students are 12, 7, 15, 9, 20, 11 and 7. What is the median mark?","11","9","12","10","Sorted: 7, 7, 9, 11, 12, 15, 20. The middle (fourth) value is 11.","sorted([12,7,15,9,20,11,7])[3]")
E('i',"The mean of five numbers is 20 and the median is 18. If the largest number is increased by 10, what happens?","The mean becomes 22 and the median stays 18","The mean stays 20 and the median becomes 28","Both mean and median increase by 10","The mean becomes 30 and the median 28","The total rises by 10, so the mean rises by 2. The median is the middle value and is unaffected.","20+10/5",ans=22)
E('i',"Which value is closest to 19.8% of 2,520?","500","400","600","450","19.8% is almost 20%, and 20% of 2,520 is 504, so the closest value is 500.","round(0.198*2520/100)*100")
E('a',"In a survey, 70% of people like tea and 60% like coffee. What is the minimum percentage that must like both?","30%","10%","20%","40%","70 + 60 = 130, which is 30 more than 100. At least 30% must therefore like both.","70+60-100")
E('a',"In a class of 60 students, 35 like tea, 30 like coffee and 10 like neither. How many like both?","15","10","20","25","50 students like at least one drink. Both = 35 + 30 − 50 = 15.","35+30-(60-10)")
E('a',"A and B invest in a business: A puts in 6,000 rupees for 12 months and B puts in 8,000 rupees for 6 months. If the profit is 3,000 rupees, what is A's share?","1,800","1,500","2,000","1,200","Capital × time is 72,000 for A and 48,000 for B, a ratio of 3:2, so A gets 3/5 of 3,000 = 1,800.","3000*72000/120000")
topic('Algorithms & Pseudo-code')
E('b',"Trace the code: x = 3; y = 4; x = x + y; y = x − y; x = x − y. What are the final values of x and y?","x = 4, y = 3","x = 3, y = 4","x = 7, y = 3","x = 4, y = 7","After the three steps x = 7, y = 3, then x = 4. The values have been swapped.")
E('b',"What does this loop give? sum = 0; for i = 1 to 5: sum = sum + i × i","55","15","30","25","The sum is 1 + 4 + 9 + 16 + 25 = 55.","sum(i*i for i in range(1,6))")
E('i',"i = 1; while i < 100: i = i × 2. How many times does the loop body run?","7","6","8","5","i takes the values 1, 2, 4, 8, 16, 32, 64, so the body runs 7 times and ends with i = 128.","7")
E('a',"n = 10; count = 0; while n > 1: if n is even then n = n / 2 else n = 3n + 1; count = count + 1. What is the final count?","6","5","7","8","10 → 5 → 16 → 8 → 4 → 2 → 1 takes 6 steps.","6")
E('a',"f(1) = 1 and f(n) = f(n − 1) + 2n for n > 1. What is f(5)?","29","25","31","27","f(2) = 5, f(3) = 11, f(4) = 19, f(5) = 29.","29")
E('a',"Which expression is equivalent to NOT (A AND B)?","(NOT A) OR (NOT B)","(NOT A) AND (NOT B)","A OR B","A AND (NOT B)","De Morgan's law: the negation of an AND is the OR of the negations.")
E('i',"A function maps 2 to 8, 3 to 27 and 4 to 64. What does it map 5 to?","125","100","75","150","The outputs are cubes of the inputs, so 5 maps to 125.","5**3")
topic('Critical Reasoning')
E('i',"A study finds that cities with more ice cream sales also have more drowning incidents. Which explanation best avoids assuming that one causes the other?","Hot weather increases both ice cream sales and swimming","Ice cream makes swimmers tired","Drowning increases the appetite for ice cream","Ice cream vendors are often near water","A third factor (hot weather) can drive both, so the correlation does not show that one causes the other.")
E('i',"Argument: Our new training programme worked, because exam scores rose after it was introduced. Which finding would most strengthen this argument?","A similar group that did not take the training showed no rise in scores","Scores had been rising for several years","The training lasted two weeks","Many students liked the trainer","A comparison group with no improvement rules out other explanations for the rise.")
E('i',"A school says a new homework policy raised exam scores. Which fact would most weaken this claim?","The exam was made easier this year","The policy was announced in September","More students attended the exam","The school has a new principal","If the exam itself became easier, the higher scores may have nothing to do with the policy.")
E('a',"Argument: Every successful founder works long hours. Rahul works long hours. So Rahul is a successful founder. What is the flaw?","It assumes working long hours is enough for success","It assumes Rahul is a founder","It contradicts the first statement","It uses an unfamiliar word","The first statement says success requires long hours, not that long hours guarantee success.")
E('a',"The statement 'If it rains, the match is cancelled' is true and the match was not cancelled. What must be true?","It did not rain","It rained","The match was held in the rain","The match was cancelled for another reason","If rain always leads to cancellation, then no cancellation means there was no rain.")
E('i',"What is the best conclusion from this? 'All employees at the firm hold a degree. Sana does not hold a degree.'","Sana is not an employee at the firm","Sana is an employee without a degree","The firm hires only graduates in some cases","Sana will apply to the firm","If every employee has a degree, someone without one cannot be an employee.")
E('a',"A claim states: 'Most users of the app are satisfied, so the app is the best on the market.' Which is the weakest part of this reasoning?","Satisfaction alone does not show that no other app is better","It uses the word 'most'","It talks about users","It mentions the market","Being liked by most of its users does not compare the app with others.")
topic('Data Sufficiency')
E('i',"What is the value of x? I. x² = 9. II. x > 0. Which is correct?","Both statements together are needed","Statement I alone is enough","Statement II alone is enough","Neither is enough even together","I gives x = 3 or −3. II removes −3. Together they give x = 3.")
E('i',"Is the integer n even? I. n + 1 is odd. II. n² is divisible by 4. Which is correct?","Each statement alone is sufficient","Only statement I is sufficient","Only statement II is sufficient","Both together are needed","If n + 1 is odd, n is even. If n² is divisible by 4, n must be even. Either statement settles it.")
topic('Logic Puzzles')
E('a',"On an island, knights always tell the truth and knaves always lie. A says: 'B is a knave.' B says: 'A and I are of the same type.' What are A and B?","A is a knight and B is a knave","A is a knave and B is a knight","Both are knights","Both are knaves","If A were a knave, B would be a knight and B's statement would be false, which is impossible. So A is a knight, B is a knave, and B's false statement is consistent.")
E('a',"A says 'B lies'. B says 'C lies'. C says 'A and B both lie'. Each is either always truthful or always lying. Who tells the truth?","Only B","Only A","Only C","A and C","Testing the cases, the only consistent assignment is that B is truthful and A and C lie.")
E('a',"Three boxes are labelled Apples, Oranges and Mixed, but every label is wrong. You may take one fruit from one box without looking inside. Which box should you pick from to fix all labels?","The box labelled Mixed","The box labelled Apples","The box labelled Oranges","Any box works equally well","The Mixed box must be pure. Whatever fruit you draw tells you its true contents, and the other two follow because their labels are wrong.")
E('a',"Nine coins look identical but one is heavier. What is the minimum number of weighings on a balance scale that guarantees finding it?","2","3","4","1","Split into three groups of three. One weighing finds the group, and a second finds the coin.")
E('a',"Amit, Bina and Chetan own a cat, a dog and a parrot, one each. Amit owns neither the dog nor the parrot. Chetan does not own the dog. Who owns the parrot?","Chetan","Bina","Amit","Cannot be determined","Amit owns the cat. Chetan cannot have the dog, so Chetan has the parrot and Bina has the dog.")
E('a',"A farmer must take a wolf, a goat and a cabbage across a river in a boat that carries him and one item. The wolf eats the goat and the goat eats the cabbage if left alone. What should he take first?","The goat","The wolf","The cabbage","Nothing","Taking the goat first leaves the wolf and the cabbage together, which is safe. Taking anything else leaves the goat in danger.")
topic('Probability & Estimation')
E('a',"The chance of rain is 30% on each of two days, independently. What is the probability of at least one rainy day?","51%","60%","9%","49%","The chance of no rain on both days is 0.7 × 0.7 = 0.49, so at least one rainy day has probability 0.51.","1-0.7*0.7",ans=0.51)
E('i',"A person types 40 words per minute. A page has 300 words. How many minutes are needed to type 12 pages?","90","80","100","120","12 pages hold 3,600 words, and 3,600 ÷ 40 = 90 minutes.","12*300/40")
E('i',"A tank holds 50 litres and leaks 2 litres per hour. It is filled at 10 am. At what time does it become empty?","11 am the next day","10 am the next day","9 pm the same day","10 pm the same day","50 ÷ 2 = 25 hours, and 25 hours after 10 am is 11 am the next day.","50/2",ans=25)
E('i',"Two people work in parallel on tasks A (2 hours), B (3 hours, which must follow A) and C (1 hour, independent). What is the minimum total time?","5 hours","6 hours","3 hours","4 hours","A then B form a chain of 5 hours. The second person does C during that time, so the total is 5 hours.","2+3",ans=5)
E('i',"A meeting is at 4:00 pm IST. London is 5.5 hours behind IST (ignore daylight saving). What is the local time in London?","10:30 am","9:30 am","11:30 am","10:00 am","4:00 pm minus 5 hours 30 minutes is 10:30 am.")
topic('Patterns & Optimisation')
E('b',"Six people shake hands once with everyone else in the group. How many handshakes take place?","15","30","12","36","The number of handshakes is C(6, 2) = 15.","math.comb(6,2)")
E('i',"A staircase pattern uses 1, 3, 6, 10 blocks in its first four steps. How many blocks does the 8th figure use?","36","28","45","32","These are triangular numbers n(n+1)/2. For n = 8 the count is 36.","8*9/2")
E('a',"One triangle needs 3 matchsticks, two triangles in a row need 5, and three need 7. How many matchsticks are needed for 20 triangles in a row?","41","40","43","60","The count is 2n + 1, so 20 triangles need 41 sticks.","2*20+1")
E('a',"A rectangular field has a fixed perimeter of 40 metres. What is the maximum possible area in square metres?","100","99","96","110","For a fixed perimeter the area is largest for a square. Each side is 10 m, so the area is 100.","max(w*(20-w) for w in range(21))")
E('a',"A clock gains 5 minutes every hour. It was set correctly at noon. What time does it show when the true time is 6 pm?","6:30 pm","6:05 pm","6:35 pm","6:25 pm","In 6 hours it gains 30 minutes, so it shows 6:30 pm.","6*5",ans=30)
E('a',"A bag has 3 red and 2 blue balls. One red ball is removed. What is the chance that the next ball drawn is red?","1/2","3/5","2/5","3/4","After removing one red ball, 2 of the remaining 4 balls are red.","2/4")
E('i',"Which fraction is the greatest? 5/8, 7/11, 3/5, 2/3","2/3","5/8","7/11","3/5","As decimals: 0.625, 0.636, 0.6 and 0.667. The largest is 2/3.","max(5/8,7/11,3/5,2/3)",ans=2/3)
E('b',"If all rectangles are shapes with four sides and figure Z has five sides, what can you conclude?","Z is not a rectangle","Z is a rectangle","Z is a square","Nothing can be said","A rectangle must have four sides, so a five-sided figure cannot be one.")
E('i',"A team of 4 completes one third of a task in 5 days. How many more days will 6 people take to finish, at the same rate per person?","6.67","10","7.5","5","One person does 1/60 of the task per day, so 6 people do 1/10 per day. The remaining 2/3 takes 20/3 days.","(2/3)/(6/60)",ans=20/3 if False else 6.666666666666667)

topic('Data Interpretation')
E('b',"A bar chart shows monthly sales of 30, 45, 25 and 40 units for January to April. In which month were sales the lowest?","March","January","April","February","The values are Jan 30, Feb 45, Mar 25 and Apr 40, so March has the smallest value.")
E('b',"Daily temperatures in a week were Monday 31, Tuesday 33, Wednesday 29, Thursday 35 and Friday 32 degrees Celsius. On which day was it hottest?","Thursday","Tuesday","Friday","Monday","The highest reading is 35, which was on Thursday.")
E('b',"A recipe needs 3 cups of flour for 12 biscuits. How many cups are needed for 36 biscuits?","9","6","12","8","36 biscuits is three times the recipe, so 3 × 3 = 9 cups.","3*36/12")
E('b',"A pie chart of a 2,000-person survey shows that 25% chose option A. How many people chose option A?","500","250","400","800","25% of 2,000 = 2,000 ÷ 4 = 500.","2000*0.25")
E('b',"What is the value of 8 + 6 × 2 − 4 ÷ 2?","18","24","12","26","Multiplication and division come first: 6 × 2 = 12 and 4 ÷ 2 = 2. Then 8 + 12 − 2 = 18.","8+6*2-4/2")
E('b',"A train leaves at 9:45 am and arrives at 12:10 pm. How long is the journey?","2 hours 25 minutes","2 hours 35 minutes","3 hours 25 minutes","2 hours 15 minutes","From 9:45 to 12:00 is 2 hours 15 minutes, and 10 more minutes make 2 hours 25 minutes.")
E('b',"count = 0; for i = 1 to 10: if i is even then count = count + 1. What is the value of count at the end?","5","10","4","6","The even numbers from 1 to 10 are 2, 4, 6, 8 and 10, so count is 5.","sum(1 for i in range(1,11) if i%2==0)")
E('i',"A phone costing 18,000 rupees is bought on a 12-month instalment plan with total interest of 1,800 rupees. What is the monthly instalment in rupees?","1,650","1,500","1,800","1,350","Total payable = 18,000 + 1,800 = 19,800, and 19,800 ÷ 12 = 1,650.","(18000+1800)/12")
E('i',"A company's sales in the first three quarters were 200, 250 and 300 units. The yearly average per quarter was 275. How many units were sold in the fourth quarter?","350","325","300","375","The yearly total is 4 × 275 = 1,100. The fourth quarter is 1,100 − 750 = 350.","4*275-(200+250+300)")
E('a',"How many different 3-letter codes can be made from the letters A, B, C, D, E if no letter repeats and order matters?","60","10","125","120","The number of arrangements is 5 × 4 × 3 = 60.","5*4*3")
E('a',"A fair coin is tossed 3 times. What is the probability of getting exactly two heads?","3/8","1/4","1/2","1/8","Of the 8 equally likely outcomes, HHT, HTH and THH have exactly two heads: 3/8.","3/8")
E('a',"A sorted list of 1,000 items is searched with binary search. What is the largest number of comparisons that may be needed?","10","8","100","500","Each comparison halves the list. Since 2¹⁰ = 1,024 ≥ 1,000, at most 10 comparisons are needed.","math.ceil(math.log2(1001))")
E('a',"Using the 'rule of 72', roughly how many years does it take for money to double at 9% annual compound growth?","8","9","6","12","The rule of 72 gives 72 ÷ 9 = 8 years.","72/9")
E('i',"A shirt is marked 1,200 rupees with 25% off. A second shop sells the same shirt for 950 rupees. Which is cheaper and by how much?","The first shop, by 50 rupees","The second shop, by 50 rupees","The first shop, by 250 rupees","Both are equal","The first shop sells at 900 rupees, which is 50 rupees less than 950.","950-1200*0.75",ans=50)
E('i',"In a table, A scored 60, B scored 75 and C scored 90 in a test marked out of 120. Who scored exactly 62.5%?","B","A","C","Nobody","75 out of 120 is 62.5%.","75/120*100",ans=62.5)
