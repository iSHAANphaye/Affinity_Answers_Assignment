import string
from pathlib import Path

# Change folder and file name according to ease.
data_folder = Path("C:\\Users\\ishaan phaye\\Desktop\\Assignments\\Profanity check")
profanities = data_folder / "profanity.txt"

slurs = {"nigger", "Bulla", "spic", "kike", "curry", "N-word", "ching-chong", "bong", "gook", "nigga"}
slurs = {i.lower() for i in slurs}

def profanity_checker(line):
    tweet = line.strip()
    words = [word.strip(string.punctuation) for word in tweet.split()]

    slur_list = [word for word in words if word.lower() in slurs]
    num_slurs=len(slur_list)
    
    profanity_degree = num_slurs / len(words) * 100
    return tweet,profanity_degree

with open(profanities, "r") as file:
    for line in file:
        tweet,profanity_degree = profanity_checker(line)
        print(f'{tweet} - Profanity degree: {profanity_degree:.2f}%')