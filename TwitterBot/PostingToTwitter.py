
import random
import twitter



adverbs_3syll = []
with open("Wordlists/AshleyBovan/POS/adverbs/3syllableadverbs.txt") as file:
    for line in file:
        adverb = line.strip()
        adverbs_3syll.append(adverb)


# OAuth settings for the Twitter API
consumer_key =        'PpZWGq43l4Z4ISEUKz6lndAbx'
consumer_secret =     '5O30BXhT3zzz3N2QZ715OReqWb7AVUV5Ra9slgFq2olUbep16m'
access_token_key =    '1113850992112672768-W55vtpX6Gjn2rD3QYdk6ag8D0THZKB'
access_token_secret = 'bYGoDjWEZn5nJFUBoCFHPmwJQ3PX4LnWOIsrhUyQYnSSm'

firstNames =[]
with open("Wordlists/FirstNames.txt") as fNameFile:
    for line in fNameFile:
        firstName = line.strip()
        firstNames.append(firstName)

randomFName = random.choice(firstNames)

lastNames =[]
with open("Wordlists/LastNames.txt") as lNameFile:
    for line in lNameFile:
        lastName = line.strip()
        lastNames.append(lastName)

randomLName = random.choice(lastNames)

nouns =[]
with open("Wordlists/AshleyBovan/POS/nouns/91K nouns.txt") as nounFile:
    for line in nounFile:
        noun = line.strip()
        nouns.append(noun)

randomNoun = random.choice(nouns)

verbs =[]
with open("Wordlists/Verbs.txt") as verbsFile:
    for line in verbsFile:
        verb = line.strip()
        verbs.append(verb)

randomVerb = random.choice(verbs)

adjectives = []
with open("Wordlists/AshleyBovan/POS/adjectives/28K adjectives.txt") as adjectiveFile:
    for line in adjectiveFile:
        adjective = line.strip()
        adjectives.append(adjective)

randomAdjective = random.choice(adjectives)

places = []
with open("Wordlists/MOBY/Places.txt") as placeFile:
    for line in placeFile:
        place = line.strip()
        places.append(place)

randomPlace = random.choice(places)

adjectives2 = []
with open("Wordlists/AshleyBovan/POS/adjectives/2syllableadjectives.txt") as adjective2File:
    for line in adjective2File:
        adjective2 = line.strip()
        adjectives2.append(adjective2)

randomAdjective2 = random.choice(adjectives2)

verbs2 =[]
with open("Wordlists/AshleyBovan/POS/verbs/2syllableverbs.txt") as verbsFile2:
    for line in verbsFile2:
        verb2 = line.strip()
        verbs2.append(verb2)

randomVerb2 = random.choice(verbs2)

tweet = 'A ' + randomNoun + ' by the name of ' + randomFName + " " + randomLName + " " + randomVerb + "(ed) " + randomAdjective + '(ly) through the ' + randomPlace + '. ' +  randomFName + " " + randomLName + " was very " + randomAdjective2 + " to " + randomVerb2 + " at the " + randomPlace + " today too! What a great day for " + randomFName + " " + randomLName + " the " + randomNoun + "."
print (tweet)

with open('Tweets.txt', 'a') as f:
	f.write(tweet + '\n')

api = twitter.Api(consumer_key = consumer_key, consumer_secret = consumer_secret, access_token_key = access_token_key, access_token_secret = access_token_secret)

print ('posting tweet...')
try:
	status = api.PostUpdate(tweet)
	print ('- success!')
except twitter.TwitterError as e:
	print ('- error posting!')
	print (e)
