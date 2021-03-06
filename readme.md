# Computers are cheap

===

# ?

<!--
We study the world so we can make better decisions,
build better things and satisfy our curiosity.
-->

---

![](world-data-world.jpg)

<!-- This is how we in this room do it. -->

---

## World -> Data

```
Special Operations,2005,2006,2007,2008,2009,Total
Emergency Service,0%,0%,1%,1%,0%,2%
Harbor Unit,0%,0%,0%,0%,0%,0%
Aviation Unit,0%,0%,0%,0%,0%,0%
Taxi Unit,0%,0%,0%,0%,0%,0%
Canine Unit,0%,0%,0%,0%,0%,0%
Mounted Unit,0%,0%,0%,0%,0%,0%
Headquarters,0%,0%,0%,0%,0%,0%
Special Operations Division Total,0%,0%,1%,1%,0%,2%
Percent of All Subject Officers Against Whom Allegations were Substantiated,0%,0%,0.2%,0.3%,0%,0.1%
```

When I say "data", I'm talking about tables.

<!-- 
The world is complicated; we need to simplify it in
order to understand it. Representing the world as
tabular data is one way of doing that.
-->

---


## Data -> Data

![](1000px-The_Normal_Distribution.svg.png)


<!--
Sometimes the data are still too complicated, so we
simplify these data further with statistics.

http://upload.wikimedia.org/wikipedia/commons/thumb/2/25/The_Normal_Distribution.svg/1000px-The_Normal_Distribution.svg.png
-->


---



## Data -> World


![](sf-shapefile.png)


<!--

We simplify the data enough that we can understand it,
then we convert our data back into other things, like
papers and graphs.

-->


---


![](world-data-world.jpg)

===


## Computers are cheap. How does that change things?

---

![](computers.jpg)


(Remember, "data" are tables.)

<!--

Some things got cheap faster than other things did.

-->
---

### Tradeoffs

Lots of automatically collected data

* More power
* Simpler models
* Not the exact data we want
* More work to store and process
* Less external validity

---

![](world-data-world.jpg)

---

# World -> Data

<!--
Now it's super cheap to collect data, sometimes.
We collect the data practically for free by measuring things that are already happening.
We don't worry too much about designing a research plan. We wind up with
very large, often complete, historical data.
Here are some convenient/inexpensive data collection approaches.

-->

---

![](leif.jpg)

http://dontflush.me/420

---

![](highlighted-public-notice.png)

---

![](piwik.png)

---

# Data -> Data

<!--
We decided to collect more data because it was cheap.
The resulting data are far more complicated than the data
coming out of questionnaires, so we need to do more statistics
and data transformations.
-->


---

![](logfiles.png)

---

    text = '''
    Todo lo cual hace un total de $ 7.534,74, que deberá ser abonado por la demandada a
    la actora en la forma y con más los intereses dispuestos en la sentencia de grado.
    En virtud de las argumentaciones expuestas y con arreglo a lo
    establecido por el art. 279 del CPCCN, corresponde adecuar la imposición de costas y
    los honorarios al resultado del pleito que se ha dejado propuesto para resolver la
    apelación.
    '''
    money_raw = re.findall(r"\$ ?[.,0-9]+", text)
    money = [float(re.sub('[^0-9]$', '', filter(lambda c: c in ",1234567890", m).replace(",", "."))) for m in money_raw]
    print money
    # [7534.74]

Find dollar amounts in free-form text

---

![](zipcode.png)

---

# Data -> World

---

[![](baseball.png)](http://www.nytimes.com/interactive/2013/08/02/sports/baseball/bang-for-your-buck.html)

---

* Google
* Yelp
* Foursquare
* Facebook
* Twitter
* ...

---

[![](fms-symphony-preview.png)](http://fms.csvsoundsystem.com)

===

# Creating meaningful datasets

---

## A text search is not statistics

---

## Designing experiments with Social media data

<!--
Collecting everything is akin to turning on a
security camera; we get all of the information
about the place where the camera is pointing
over time. If we want to know about other locations
or about specific times, we have to process
the stuff we collect to fit our curiousity.
-->

![](interrupted-time-series.png)

http://snap.stanford.edu/soma2010/papers/soma2010_1.pdf

---

## Control group

![](topsy.png)

http://topsy.com/analytics?q1=bacon&q2=statistics&via=Topsy

---

## Be careful: Selection bias

![](pew.png)

http://pewinternet.org/Reports/2012/Twitter-Use-2012/Findings.aspx

---

![](gender.png)

http://www.informationisbeautiful.net/visualizations/chicks-rule/

---

![](brain.png)

People tweet about things they're comfortable sharing.

http://harmony-institute.org/therippleeffect/2012/10/12/1265/

---

## Predict other variables: Fancy post-stratification

---

[![](tweet-times.jpg)](https://hackpad.com/Measuring-Socioeconomic-Indicators-in-Arabic-Tweets-IZ5ByP2LvIt)

---

![](weekly_gender)

http://www.quora.com/Natural-Language-Processing/Are-there-any-text-corpora-labeled-with-gender-age-of-authors
http://clic.cimec.unitn.it/amac/twitter_ngram/

Gender

---

![](us_middle_names_over_time.png)

Age

http://thomaslevine.com/!/middle-names

---

Occupation/specialization

![](cornell_middle_names_by_school.png)

http://thomaslevine.com/!/middle-names

# One more thought

The power of linking

* Twitter user
* User profile
* Lots of tweets
* Links to websites

---

[![](opendatasites.png)](http://opendatasites.com/)

===

# Computers are cheap

* Computers are cheap,
* so we collect a lot more data,
* so we can do a lot more with it,
* but we have to process it more,
* and we still have to do good statistics.
