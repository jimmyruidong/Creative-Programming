import random

#fruits = ["apple","mango","pomegranate","strawberry","banana"]

#print(fruits)

#for eachFruit in fruits:
#    print("I love eating " + eachFruit)

#randomFruit = random.choice(fruits)
#sentence = "My smoothie recipe involves " + randomFruit
#print(sentence)

#sentence2 = "My smoothie recipe is the greatest ever."
#sentence2Words = sentence2.split()
#print (sentence2Words)

#for word in sentence2Words:
#    print (word)

#randomWord = random.choice(sentence2Words)
#print randomWord

verbs =[]
with open("Wordlists/Verbs.txt") as verbsFile:
    for line in verbsFile:
        verb = line.strip()
        verbs.append(verb)

randomVerb = random.choice(verbs)
print(randomVerb)

verbs2 =[]
with open("Wordlists/AshleyBovan/POS/verbs/2syllableverbs.txt") as verbsFile2:
    for line in verbsFile2:
        verb2 = line.strip()
        verbs2.append(verb2)

randomVerb2 = random.choice(verbs2)
print(randomVerb2)

firstNames =[]
with open("Wordlists/FirstNames.txt") as fNameFile:
    for line in fNameFile:
        firstName = line.strip()
        firstNames.append(firstName)

randomFName = random.choice(firstNames)
print(randomFName)



lastNames =[]
with open("Wordlists/LastNames.txt") as lNameFile:
    for line in lNameFile:
        lastName = line.strip()
        lastNames.append(lastName)

randomLName = random.choice(lastNames)
print(randomLName)


adjectives = []
with open("Wordlists/AshleyBovan/POS/adjectives/28K adjectives.txt") as adjectiveFile:
    for line in adjectiveFile:
        adjective = line.strip()
        adjectives.append(adjective)

randomAdjective = random.choice(adjectives)
print(randomAdjective)

adjectives2 = []
with open("Wordlists/AshleyBovan/POS/adjectives/2syllableadjectives.txt") as adjective2File:
    for line in adjective2File:
        adjective2 = line.strip()
        adjectives2.append(adjective2)

randomAdjective2 = random.choice(adjectives2)
print(randomAdjective2)


nouns =[]
with open("Wordlists/AshleyBovan/POS/nouns/91K nouns.txt") as nounFile:
    for line in nounFile:
        noun = line.strip()
        nouns.append(noun)

randomNoun = random.choice(nouns)
print(randomNoun)

places = []
with open("Wordlists/MOBY/Places.txt") as placeFile:
    for line in placeFile:
        place = line.strip()
        places.append(place)

randomPlace = random.choice(places)
print(randomPlace)

firstNames =[]
with open("Wordlists/FirstNames.txt") as fNameFile:
    for line in fNameFile:
        firstName = line.strip()
        firstNames.append(firstName)

randomFName = random.choice(firstNames)
print(randomFName)

randomFullName = randomFName + " " + randomLName
print(randomFullName)

space = " "

def autoSpacer(x):
    return x + " "

print(autoSpacer("test1") + autoSpacer ("test2"))

def tenseChecker(y):
    if y.endswith("e"):
    return (y + "d")

    else
    if y.endswith(!"e")
    return (y + "ed")

randomSentenceCreator = autoSpacer(randomFullName ) + autoSpacer (randomVerb) + autoSpacer(randomAdjective) + autoSpacer(randomNoun)
print(randomSentenceCreator)
#Test for sentence creating
#Overall Testbed prior to TwitterBot
#Goal: Create working Sentence from wordlist of txt files.



#adverbs_3syll = []
#with open("Wordlists/AshleyBovan/POS/adverbs/3syllableadverbs.txt") as file:
#    for line in file:
#        adverb = line.strip()
#        adverbs_3syll.append(adverb)
#
#print(adverbs_3syll[0:1])
