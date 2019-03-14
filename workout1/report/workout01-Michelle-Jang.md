Shooting Analytics of Golden State Warriors (2016)
================
Michelle Jang

Basketball is all about scoring. After all, games are determined by which team gets the ball into the net more, so it seems to follow naturally that the best teams in the NBA are those that have players who are most effective at scoring. Furthermore, 3-point shots are one of the most efficient types of shots, meaning that good offensive teams have several three-point threats, with playmakers to help feed the ball to those threats. This is especially true for the Golden State Warriors who have won championships in 2015, 2017, and 2018. Based in Oakland, CA, the Golden State Warriors, after a period of struggle, first bounced back in 2015 with the arrival of playmakers and sharpshooters such as Stephen Curry and since then have been experiencing continued success with the help of players like Klay Thompson, Kevin Durant, Draymond Green, and Andre Iguodala. According to Forbes, the Warriors are currently the seventh highest valued sports franchise in the United States (and joint tenth in the world) with an estimated value of $3.1 billion.

We’re interested in looking at how the unique shooting patterns of these players contribute to such a successful team, but first, a little bit of background on these players…

**Stephen Curry**: A six-time NBA All Star, Curry has been named the NBA Most Valuable Player twice and has won three NBA Championships playing for the Warriors. Many players and analysts have called him the greatest shooter in NBA history, and he has been credited for revolutionizing the game of basketball by centering game strategies around three-point shots.

**Klay Thompson**: Thompson is a five-time NBA All Star who, in 2014, set a then NBA record of 484 combined three-pointers with teammate Stephen Curry. They earned the nickname “Splash Brothers,” and he has not only continued to break records but also been credited as one of the greatest shooters in NBA history.

**Kevin Durant**: Durant was a heavily recruited high school prospect and went on to earn numerous awards in college. He played nine seasons in Oklahoma City before signing with the Warriors in 2016, since then winning back-to-back championships in 2017 and 2018. Off the court, Durant is one of the highest-earning basketball players in the world due to various endorsement deals.

**Draymond Green**: A three-time NBA All Star, Durant won NBA Defensive Player of the Year in 2017. Green plays significant minutes for the Warriors and has been credited for being one of the only NBA players capable of being versatile enough to play and defend multiple positions, make plays for teammates, and space the floor. He has been playing since 2012.

**Andre Iguodala**: Iguodala was an NBA All Star in 2012 and has been named to the NBA All-Defensive team twice. He was acquired by the Golden State Warriors in 2013 and won NBA Finals Most Valuable Player in 2015. His positions are shooting guard/small forward.

### Data

To expand upon shooting analytics, we utilized data collected on each player that included elements like opponent, date of the game, shot type, shot distance, court coordinates in which the shot occurred, and if the shot was made. We then used the court coordinates and whether the shot was made to generate shot charts to better visualize the shooting patterns of each player.

``` r
# to create Stephen Curry's shot chart

curry_plot <- ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x=x, y=y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle("Shot Chart: Stephen Curry (2016 season)") + theme_minimal()
```

We also utilized this data to specifically look into effective shooting percentages of the players, first separated by shot type (2PT Field Goal vs 3PT Field Goal) and then in general (both 2PT and 3PT Field Goals). To create these tables, we used data from individual players to gather information on how many total 2PT shots were attempted and how many of them were made, and then calculated a shooting percentage by dividing the number made by the number attempted. We followed the same process for 3PT shots and for shots in general and organized all of these tables in descending order by shooting percentage.

### Analytics

Let’s start by taking a look at the shot charts for these players.

<img src="/Users/michellejang/Desktop/Stat133/workout1/images/gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" />

Right away, we can see that Durant, Thompson, and Curry are all attempting shots more frequently than Iguodala and Green, with the majority of Curry’s shots coming from outside the three-point line. The shot charts of Durant and Thompson seem to be almost identical with Thompson attempting slightly more three-point shots and both players attempting and making a significant amount of their shots from inside the three-point line. Although Green seems to not be attempting as many shots as Durant, Thompson, and Curry are, it is interesting to note that his three-point shot attempts are comparable to that of Durant. Iguodala’s shot chart contains a noticeably low number of attempts, but the frequency of shots made indicates his strength in accuracy.

Curry’s chart is consistent with what he’s known for: centering the focus in game strategy around three-point shots. Because of his ability to successfully make three-pointers, he attempts more of these types of shots to maximize points scored per shot attempt. Thompson follows a similar pattern but seems to attempt more two-point shots than Curry does which indicates that he is a well-rounded player; he demonstrates successful shooting ability both inside and outside the three-point line. From their charts, it is easy to see why the pair has garnered the title “Splash Brothers.” In addition to Curry and Thompson, Durant also takes and makes a relatively high volume of 3-point shots.

To get a more numerical sense of the data presented by the shot charts, let's also take a look at the tables of two-point, three-point, and general effective shooting percentages created from the collected data:

    ##             name total_2pt made_2pt     perc_made_2pt
    ## 1 Andre Iguodala       210      134 0.638095238095238
    ## 2   Kevin Durant       643      390 0.606531881804043
    ## 3  Stephen Curry       563      304 0.539964476021314
    ## 4  Klay Thompson       640      329         0.5140625
    ## 5 Draymond Green       346      171 0.494219653179191

    ##             name total_3pt made_3pt     perc_made_3pt
    ## 1  Klay Thompson       580      246 0.424137931034483
    ## 2  Stephen Curry       687      280 0.407569141193595
    ## 3   Kevin Durant       272      105 0.386029411764706
    ## 4 Andre Iguodala       161       58 0.360248447204969
    ## 5 Draymond Green       232       74 0.318965517241379

    ##             name total made         perc_made
    ## 1   Kevin Durant   915  495 0.540983606557377
    ## 2 Andre Iguodala   371  192 0.517520215633423
    ## 3  Klay Thompson  1220  575 0.471311475409836
    ## 4  Stephen Curry  1250  584            0.4672
    ## 5 Draymond Green   578  245 0.423875432525952

The numbers serve to both reinforce and clarify the information presented by the shot charts. From the two-point table, we can see that although Iguodala has the smallest number of attempted shots, he has the highest shooting percentage and the second-highest percentage overall, which serves to further indicate his shooting accuracy. From the three-point table, we can see that Thompson and Curry maintain the highest shooting percentages as well as outnumber total three-point attempts as expected from the shot charts. Although Green ranks at the bottom for all three shooting percentages, this does not make him any less of an important part of this lineup; rather, it reinforces the idea that Green's power lies in his unmatched ability to effectively defend multiple positions, pass the ball around, and space the floor. These tables are indications not only of how effective the Warriors are at shooting but also of how some players, like Green, contribute to the team's success with abilities that are not necessarily just shooting itself.

It is clear that the Warriors are a strong 3-point shooting team, but what makes them so dangerous is their efficiency from inside the line as well. The data suggests that Curry, Thompson, Durant, and Iguodola all shoot above 50 percent on two point attempts. Draymond Green also shoots very near the 50 percent mark. Futhermore, the shot charts show that all five players take a high volume of shots near the basket, which are the most high-percentage types of two-point attempts. This is especially true for Draymond Green and Andre Iguodola, who mostly take only threes and close-range shots, while steering clear of the less efficient mid-range shot. The team’s smart selection demonstrates the offensive discipline of the team, and reflects the coaching ability of head coach Steve Kerr. It is clear that the Warriors are very adept at getting good, high-efficiency shot attempts from two-point range. This is a recipe for a success, as the recent trend of using statistical analysis around the league have shown that high-efficiency close range shots coupled with numerous 3-point threats make some of the most effective offenses in the NBA.

The Warriors have a perfect blend of players who are able to drive inside to create close-range opportunities for themselves, or pass the ball out to their 3-point shooters spacing the floor. This is what makes the Warriors such a dominant offensive team; these five players synthesize their individual powers in shooting abilities to create one of the most powerful and successful teams in the NBA.
