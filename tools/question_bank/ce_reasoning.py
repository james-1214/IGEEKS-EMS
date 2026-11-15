from ce_common import *
import itertools
dom('ce-reasoning')

# ---- self-checks used to verify keys before anything is written
def nxt(seq,f): return f(seq)
assert [3*2**i for i in range(5)]==[3,6,12,24,48]
assert [n*n+1 for n in range(1,6)]==[2,5,10,17,26] and 6*6+1==37
assert [2**k+1 for k in range(0,6)]==[2,3,5,9,17,33] and 2**6+1==65
s=[7]; d=3
for _ in range(5): s.append(s[-1]+d); d*=2
assert s==[7,10,16,28,52,100]
assert [p*p for p in (2,3,5,7,11,13)]==[4,9,25,49,121,169]
assert [n**3-1 for n in range(1,7)]==[0,7,26,63,124,215]
x=3; seq=[x]
for _ in range(5): x=x*2+2; seq.append(x)
assert seq==[3,8,18,38,78,158]
assert [n*n*(n+1) for n in range(1,7)]==[2,12,36,80,150,252]
assert date(2027,1,1).strftime('%A')=='Friday' and date(2026,11,14).strftime('%A')=='Saturday'
# direction walk: start facing west, 10 forward, left 5, left 10, right 5
dirs=['N','E','S','W']; f=3; x=y=0; mv={'N':(0,1),'E':(1,0),'S':(0,-1),'W':(-1,0)}
for turn,dist in [(0,10),(-1,5),(-1,10),(1,5)]:
    f=(f+turn)%4; x+=mv[dirs[f]][0]*dist; y+=mv[dirs[f]][1]*dist
assert (x,y)==(0,-10)
assert (0+90-135+180)%360==135
# seating row: R T S Q P is the only arrangement meeting the clues
sol=[p for p in itertools.permutations('PQRST') if p[0]=='R' and p[4]=='P' and abs(p.index('Q')-0)>1 and p.index('S')==p.index('T')+1]
assert sol==[tuple('RTSQP')], sol
# circular table (clockwise indices; right of X is X-1)
cs=[]
for p in itertools.permutations('ABCDEF'):
    pos={c:i for i,c in enumerate(p)}
    if pos['A']==0 and (pos['D']-pos['A'])%6==3 and pos['B']==(pos['A']-1)%6 and pos['C']==(pos['D']+1)%6 and (pos['E']-pos['B'])%6==3: cs.append(p)
assert len(cs)==1 and cs[0][(cs[0].index('C')+3)%6]=='F'
assert 7+15-1==21 and 100%7==2
assert 40-15+1-12-1==13
assert 32==14+19-1 and 32-(14-6)==24
assert sorted('SOLUTION')[-3]=='S'
assert 12==3*2*2

topic('Number & Letter Series')
E('b',"Find the next number in the series 3, 6, 12, 24, …","48","36","30","42","Each term is double the previous one, so the next term is 24 × 2 = 48.")
E('b',"Find the next number: 2, 5, 10, 17, 26, …","37","36","35","38","The differences 3, 5, 7, 9 rise by 2 each time, so the next difference is 11 and 26 + 11 = 37.")
E('b',"Find the next letter: Z, X, V, T, …","R","S","Q","P","Each letter moves two places backwards in the alphabet: T → R.")
E('i',"Find the next number: 2, 3, 5, 9, 17, 33, …","65","49","64","66","The differences 1, 2, 4, 8, 16 double each time, so the next difference is 32 and 33 + 32 = 65.")
E('i',"Find the next number: 7, 10, 16, 28, 52, …","100","76","96","104","The differences are 3, 6, 12, 24, so the next is 48 and 52 + 48 = 100.")
E('i',"Find the next number: 4, 9, 25, 49, 121, …","169","144","196","225","These are squares of consecutive primes (2, 3, 5, 7, 11), so the next is 13² = 169.")
E('a',"Find the next number: 0, 7, 26, 63, 124, …","215","216","196","200","Each term is a cube minus one: 1³−1, 2³−1, … so the next is 6³ − 1 = 215.")
E('a',"Find the next number: 3, 8, 18, 38, 78, …","158","148","156","160","Each term is twice the previous term plus 2: 78 × 2 + 2 = 158.")
E('a',"Find the next number: 2, 12, 36, 80, 150, …","252","210","240","264","The terms are n² × (n + 1): 1²×2, 2²×3, 3²×4, 4²×5, 5²×6, so the next is 6² × 7 = 252.")
E('a',"Find the next group: ACE, FHJ, KMO, …","PRT","PQR","OQS","PRS","Inside each group letters skip one (+2). Each group starts 5 letters after the previous start: A, F, K, P → PRT.")
E('i',"What replaces the question mark? 3 9 27 / 4 16 64 / 5 25 ?","125","100","75","150","Each row is n, n², n³, so the last row is 5, 25, 125.")
E('i',"What replaces the question mark? (2, 3, 12), (4, 5, 40), (6, 7, ?)","84","42","78","91","In every group the third number is 2 × first × second: 2×2×3=12, 2×4×5=40, so 2×6×7 = 84.")
topic('Coding & Decoding')
E('b',"If CAT is written as DBU, how is DOG written in the same code?","EPH","ENH","EPG","DPH","Every letter moves one place forward: D→E, O→P, G→H.")
E('i',"If TABLE is coded as UBCMF, how is CHAIR coded?","DIBJS","DIBJR","BGZHQ","DIBKS","Every letter is shifted one place forward: C→D, H→I, A→B, I→J, R→S.")
E('i',"In a certain code, 2 is written as 5, 3 as 10, 4 as 17 and 5 as 26. What is the code for 7?","50","49","48","37","The rule is n² + 1: 2²+1=5, 3²+1=10, 4²+1=17, so 7²+1 = 50.")
E('i',"In a code language, 'tea is hot' is 'ka lo mi', 'hot coffee' is 'mi pa' and 'coffee is sweet' is 'pa lo ru'. What is the code for 'tea'?","ka","lo","mi","pa","'hot' = mi (common to the first two), 'is' = lo (common to the first and third). The word left in the first sentence is 'tea' = ka.")
E('b',"In a code, day is called night, night is called sun and sun is called moon. When can we see the stars in this code language?","Sun","Night","Day","Moon","Stars are seen at night in real life, and 'night' is called 'sun' in this code.")
topic('Blood Relations')
E('b',"A is the brother of B, and B is the sister of C. How is C related to A?","Brother or sister","Sister only","Brother only","Cousin","A and B are siblings and B and C are siblings, so C is A's sibling. The gender of C is not given.")
E('b',"Pointing to a man, Rita says, 'He is the son of my mother's only brother.' How is the man related to Rita?","Cousin","Brother","Uncle","Nephew","Her mother's brother is her maternal uncle, and his son is her cousin.")
E('i',"A is the sister of B. C is the mother of B. D is the father of C. E is the mother of D. How is A related to D?","Granddaughter","Daughter","Niece","Great-granddaughter","C is the mother of both A and B. D is C's father, so A is D's granddaughter.")
E('a',"Pointing to a photograph, Meera says, 'He is the son of the only son of my father's father.' How is the man related to Meera?","Brother","Cousin","Uncle","Father","Her father's father has only one son, who is her father. The man is that father's son, so he is Meera's brother.")
topic('Direction Sense')
E('b',"A man walks 5 km north, then 5 km east and then 5 km south. How far is he from the starting point?","5 km","10 km","15 km","0 km","The north and south legs cancel, leaving him 5 km east of the start.")
E('i',"Starting facing west, Arun walks 10 m, turns left and walks 5 m, turns left and walks 10 m, then turns right and walks 5 m. Where is he with respect to the start?","10 m south","5 m south-west","15 m south","10 m north","He goes 10 m west, 5 m south, 10 m east (back in line with the start), then 5 m south: 10 m south in total.")
E('a',"A person faces north. He turns 90° clockwise, then 135° anticlockwise and then 180° clockwise. In which direction does he face now?","South-east","North-west","South-west","East","90 − 135 + 180 = 135° clockwise from north, which is south-east.")
topic('Ranking & Order')
E('b',"Ravi ranks 7th from the top and 15th from the bottom in a class. How many students are in the class?","21","22","23","20","Total = 7 + 15 − 1 = 21, because Ravi is counted in both ranks.")
E('i',"In a row of 40 students, A is 12th from the left and B is 15th from the right. How many students are between A and B?","13","12","14","15","B is (40 − 15 + 1) = 26th from the left. Between 12th and 26th there are 26 − 12 − 1 = 13 students.")
E('i',"A is older than B but younger than C. D is older than C. E is younger than B. Who is the youngest?","E","B","A","C","The order from oldest is D > C > A > B > E.")
E('a',"Neha is 14th from the front and 19th from the back in a queue. Mini stands 6 places ahead of Neha. How many people are behind Mini?","24","25","23","26","The queue has 14 + 19 − 1 = 32 people. Mini is 8th from the front, so 32 − 8 = 24 people are behind her.")
E('b',"Which letter is the 5th to the right of the 10th letter from the left of the English alphabet?","O","N","P","M","The 10th letter is J. Five places to its right is O.")
E('i',"If the letters of the word SOLUTION are arranged in alphabetical order, which letter is third from the right?","S","T","O","U","Alphabetical order: I, L, N, O, O, S, T, U. From the right: U, T, S.")
topic('Syllogisms & Deductions')
E('b',"Statements: All pens are books. All books are papers. Conclusions: I. All pens are papers. II. Some papers are pens. Which follows?","Both I and II","Only I","Only II","Neither I nor II","I follows by chaining the two statements. II follows because if all pens are papers, some papers must be pens.")
E('i',"Statements: No cat is a dog. All dogs are animals. Conclusions: I. No cat is an animal. II. Some animals are not cats. Which follows?","Only II","Only I","Both I and II","Neither I nor II","Dogs are animals and no dog is a cat, so some animals are not cats (II). Nothing says that cats cannot be animals, so I does not follow.")
E('i',"Statements: Some doctors are teachers. All teachers are singers. Conclusions: I. Some doctors are singers. II. All doctors are singers. Which follows?","Only I","Only II","Both I and II","Neither I nor II","The doctors who are teachers are also singers, so I follows. Nothing is known about doctors who are not teachers, so II does not.")
E('i',"Statement: A company announces a 30% discount on its annual membership. Assumptions: I. Some people may be attracted to buy the membership. II. The company wants to reduce the number of members. Which is implicit?","Only I","Only II","Both I and II","Neither I nor II","Offering a discount assumes it may attract buyers. It would be odd to assume that the company wants fewer members.")
topic('Odd One Out & Analogies')
E('b',"Choose the odd one out: Mercury, Venus, Moon, Mars","Moon","Mercury","Venus","Mars","Mercury, Venus and Mars are planets. The Moon is a natural satellite.")
E('b',"Book is to Reading as Fork is to ____","Eating","Cooking","Cutting","Kitchen","A book is used for reading and a fork is used for eating.")
E('b',"Choose the odd number out: 8, 27, 64, 100, 125","100","8","27","125","8, 27, 64 and 125 are perfect cubes. 100 is not.")
E('i',"Cardiologist is to Heart as Nephrologist is to ____","Kidney","Liver","Lungs","Brain","A cardiologist treats the heart and a nephrologist treats the kidneys.")
E('i',"Choose the odd number out: 17, 23, 29, 33, 41","33","17","29","41","All of them except 33 are prime numbers; 33 = 3 × 11.")
topic('Calendar & Clock')
E('b',"If today is Monday, which day will it be after 100 days?","Wednesday","Tuesday","Thursday","Friday","100 = 14 × 7 + 2, so the day is two days after Monday: Wednesday.")
E('i',"How many times do the hands of a clock coincide in 12 hours?","11","12","10","22","The hands coincide 11 times in 12 hours, because the 12th overlap falls exactly at the end of the cycle.")
E('i',"14 November 2026 is a Saturday. Which day of the week is 1 January 2027?","Friday","Thursday","Saturday","Sunday","From 14 November to 1 January is 48 days. 48 = 6 × 7 + 6, so the day is six days after Saturday: Friday.")
topic('Cubes & Visual Logic')
E('i',"A cube painted red on all faces is cut into 27 equal small cubes. How many small cubes have exactly two faces painted?","12","8","6","1","Only the cubes on the 12 edges (one per edge, in the middle) have exactly two painted faces.")
E('i',"A cube painted on all faces is cut into 27 equal small cubes. How many small cubes have no painted face?","1","3","6","8","Only the centre cube is completely inside, so exactly one cube has no paint.")
E('a',"A 4 × 4 × 4 cube painted on all faces is cut into 64 unit cubes. How many unit cubes have exactly one face painted?","24","8","12","32","Each face has a 2 × 2 block of cubes with exactly one painted face: 4 × 6 = 24.")
topic('Seating Arrangement')
E('i',"Five friends P, Q, R, S and T sit in a row. R is at the extreme left and P at the extreme right. Q does not sit next to R. T sits immediately to the left of S. Who sits in the middle?","S","T","Q","P","R is first and P last. Q cannot be second, and T must be directly left of S, so the order is R, T, S, Q, P. The middle seat belongs to S.")
E('a',"Six people A to F sit around a circular table facing the centre. D sits opposite A. B sits to the immediate right of A. C sits to the immediate left of D. E sits opposite B. Who sits opposite C?","F","E","B","A","Listing seats clockwise from A: A, F, E, D, C, B. C is opposite the second seat, which holds F.",sc=True)
E('b',"Choose the word that cannot be made from the letters of the word EDUCATION: DUCAT, ACTION, EDUCATE, TONE","EDUCATE","ACTION","DUCAT","TONE","EDUCATE needs two E's but EDUCATION has only one.")
E('b',"The next figure in a pattern of squares grows by adding one row and one column each time (1×1, 2×2, 3×3, …). How many unit squares does the 6th figure contain?","36","30","25","42","The nth figure holds n × n unit squares, so the 6th has 36.")
E('i',"Which of these is the next term in the series: AZ, BY, CX, DW, …","EV","EU","FV","DV","The first letter moves forward and the second moves backward by one place each time: E and V.")
E('i',"A number is doubled and 9 is added to it. The result divided by 3 gives 15. What is the number?","18","21","12","24","(2x + 9)/3 = 15 gives 2x + 9 = 45, so x = 18.")
E('b',"Which of the following is a pair of numbers whose product is 144 and whose sum is 30?","6 and 24","12 and 12","8 and 18","9 and 16","Only 6 and 24 give both a product of 144 and a sum of 30.")
E('i',"If 'A + B' means A is the mother of B, 'A − B' means A is the brother of B and 'A × B' means A is the father of B, which expression shows that P is the paternal uncle of Q?","P − R × Q","P + R × Q","P × R − Q","P − R + Q","P − R: P is the brother of R. R × Q: R is the father of Q. So P is Q's paternal uncle.")
E('a',"A man introduces a woman as the daughter of the only son of his mother. How is the woman related to the man?","Daughter","Niece","Sister","Cousin","The only son of his mother is the man himself, so the woman is his daughter.")
E('a',"In a certain code language, MOUSE is written as PRXVH. How is CHAIR written?","FKDLU","FJDLU","EKBJT","DIBJS","Each letter moves three places forward: C→F, H→K, A→D, I→L, R→U.")
E('a',"Four friends compare ages: Ann is older than Bo. Cy is younger than Di. Bo is older than Di. Who is the second youngest?","Di","Ann","Bo","Cy","The order from oldest is Ann > Bo > Di > Cy, so the second youngest is Di.")
E('i',"Find the odd one out in the series: 121, 169, 225, 289, 350","350","121","289","225","The others are squares of odd numbers (11, 13, 15, 17). 350 is not a perfect square.")
