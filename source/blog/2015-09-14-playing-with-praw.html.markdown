---
title: Playing with Praw
date: 2015-09-14 16:11 UTC
tags: Python, Praw
---

Reddit can be a goldmine of information, as well as something fun to play with programatically. Although you could piece something together to scrap it with relevant Python modules (BeautifulSoup, Scrapy, Requests…), you’re probably better off using their proprietary API: ‘Praw’.
 It can easily be installed via pip, and can then be run completely standalone. The cool thing about Praw is that not only can it be used to scrap data from users or subreddits, but also to create bots that interact with reddit to create subreddits, and vote as well as reply to comments and submissions.

[Read the Docs](https://praw.readthedocs.org/en/v3.1.0/)

Here is the most simple bot: it fetches [u/AWildSketchAppeared](https://www.reddit.com/user/AWildSketchAppeared) ‘s comments and prints their content

    import praw

    useragent = "v2.0"

    u = praw.Reddit(user_agent = useragent)

    test_user = u.get_redditor("AWildSketchAppeared")

    for comment in test_user.get_comments(limit=50):
        print comment.body

Project idea: write a bot that would fetch [u/AWildSketchAppeard](http://www.reddit.com/user/AWildSketchAppeard), [u/Shitty_Watercolour](http://www.reddit.com/user/Shitty_Watercolour) and [u/YOUR_NAME_IN_PAINT](http://www.reddit.com/user/YOUR_NAME_IN_PAINT) drawings and upload them to an Imgur gallery using [their API](https://github.com/Imgur/imgurpython). Or upload them via FTP to your server/S3 bucket to automatically serve them in your website’s photo gallery?

That’s a pretty big undertaking though, as you’d have to parse each comment via regex to check for imgur links, taking into account the fact that some may be shortened links, or not direct links (linking to an imgur gallery). Not to mention that some direct links may be appended with .gif, .jpg, .jpeg or .png. Much fun.
