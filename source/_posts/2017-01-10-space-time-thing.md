---
title: Space Time Thing
category: article
tags: organization language
author: spencer@ultroneous.org
hidden: yes
---

This is a quick, messy, incomplete outline of my organization language. It's so messy that I'm not even going to explain what I mean by "organization language", except to say it's something like a [pattern language](https://en.wikipedia.org/wiki/Pattern_language).{% sidenote "Maybe it actually *is* a pattern language, if you order the elements the right way, but I'm not going to bother figuring that out. Such is my dedication to messiness!" %}

The building blocks of an organization are *spaces*, *times*, and *things*.

{% newthought "A space" %} consists of a *center*, which is a thing, and a *space document*. A space document{% sidenote "Wherever you see the word \"document\" in this article, you should imagine a version-controlled website. Documents are big, rich, complex objects." %} contains information about the space, such as its name, whether it's currently open or closed, who and what is in it, what's happening now, what happened before, and what might happen next.

Spaces can be open or closed. To begin with, a space is open. The language for creating a new space is "to open a space". It stays open as long as it's in use, and the space document is being actively maintained. If all goes according to plan, you close the space a moment before this isn't true anymore.

Closed spaces are generally undesirable, and should be opened again, or unmade.

Examples of spaces: a house, a temple, a garden, a city, a planet, a forest, a lake, a table (as a place people sit at).{% marginfigure "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Last_meeting_of_the_Potsdam_Conference_in_Potsdam%2C_Germany._Seated_around_the_conference_table%2C_President_Harry_S...._-_NARA_-_198951.jpg/295px-Last_meeting_of_the_Potsdam_Conference_in_Potsdam%2C_Germany._Seated_around_the_conference_table%2C_President_Harry_S...._-_NARA_-_198951.jpg" "A space. [(source)](https://commons.wikimedia.org/wiki/File:Last_meeting_of_the_Potsdam_Conference_in_Potsdam,_Germany._Seated_around_the_conference_table,_President_Harry_S...._-_NARA_-_198951.jpg)" %}

{% newthought "A time" %} consists of a space, a set of things inside the space, and a *time document*. One time document is shared by many times, and contains records of what happened in those times. It also contains a *game*, which is a [flow chart](https://en.wikipedia.org/wiki/Flowchart) made up of *questions*, *answers* and *moments*. Answers are represented as edges, questions and moments as nodes.

Example of a question: "How many people are here?" Examples of answers: "Less than five" or "Exactly ten".

Moments are patterns of actual behavior in reality. For example: walk home, make a fire, talk politics. A sufficiently complex moment should be made into a time, in itself.

For a game to be valid, it needs to follow these three rules:{% marginfigure "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flickr_-_Official_U.S._Navy_Imagery_-_Sailors_play_board_games_with_children_at_the_Cameron_Community_Ministries_during_Rochester_Navy_Week.jpg/320px-Flickr_-_Official_U.S._Navy_Imagery_-_Sailors_play_board_games_with_children_at_the_Cameron_Community_Ministries_during_Rochester_Navy_Week.jpg" "A game. [(source)](https://commons.wikimedia.org/wiki/File:Flickr_-_Official_U.S._Navy_Imagery_-_Sailors_play_board_games_with_children_at_the_Cameron_Community_Ministries_during_Rochester_Navy_Week.jpg)" %}

1. Each question leads to two or more answers. (Nothing else.)
2. Each answer leads to a question or a moment. (Nothing else.)
3. Each moment leads to a question. (Nothing else.)

Examples of times: a meeting, a project, a work shift, a party, a dinner, a storytelling.{% marginfigure "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Family_seated_for_a_meal.jpg/320px-Family_seated_for_a_meal.jpg" "A time. [(source)](https://commons.wikimedia.org/wiki/File:Family_seated_for_a_meal.jpg)" %}

{% newthought "A thing" %} consists of a physical process and a *thing document*. One thing document is shared by many things. It should give names for each of the individual things it references, and also the kind of thing to which all of those things belong -- for example, a hat is a thing, and hats are a kind of thing.

It isn't practical to make everything into a thing. There would be too many things. You can make things out of anything, and every combination of things can be a thing itself. "A mountain in China and my left toe" could be a thing, but it wouldn't be an *important* thing, so it's better to just let it not be a thing.

The idea is to make things out of what you spend the most time talking about; those will be the most important things, which it's most worth deeply understanding and bringing into conscious design. The thing document should describe what these things are, why they matter, what to do with them, and any other useful information about them.

Examples of things: a person, a chair, a document,{% sidenote "*This is so recursive*." %} a tree, an organization, a family, a webpage, a tool (as hardware), a tool (as software), a table (as a surface with legs).{% marginfigure "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Parlor_table_made_by_Joseph_Meeks_and_Sons%2C_c._1860.JPG/320px-Parlor_table_made_by_Joseph_Meeks_and_Sons%2C_c._1860.JPG" "A thing. [(source)](https://commons.wikimedia.org/wiki/File:Parlor_table_made_by_Joseph_Meeks_and_Sons,_c._1860.JPG)" %}

{% newthought "The point" %} of all this is to have a simple, meaningful language for designing a world. Ideally all these different documents are [open source](https://en.wikipedia.org/wiki/Open-source_hardware).
