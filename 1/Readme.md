# Problem Statement: Imagine there is a file full of Twitter tweets by various users and you are provided a set of words that indicates racial slurs. Write a program that can indicate the degree of profanity for each sentence in the file. Write in any programming language (preferably in Python) - make any assumptions, but remember to state them.

The python program reads a file of Twitter tweets, and detects the degree of profanity for each sentence using a set of racial slurs. The following assumptions are made:
1. The tweets are in English or any language which uses the English alphabet
2. The input file contains one tweet per line.
3. The set of racial slurs is provided as a Python set.
4. The tweets do not contain any non-ASCII characters.

The code simply strips the words in each tweet, counts the number of slur words defined in the tweet, and returns the percentage of profanity using the simple formula of **(profanity words)/(total words) * 100**.

This method can be further expanded upon this method using NLP sentiment analysis to only count those slurs which are used to offend the person rather than just listing it, and use lemmatization to find slurs among misspelled/slang words.

Here is an example of the output for some tweets:

![Screenshot 2023-04-24 223641](https://user-images.githubusercontent.com/75660041/234067637-43f05caf-5165-4079-8750-659e0fb695ea.png)
