# Maciej Matiaszowski 

[![Gitter](https://badges.gitter.im/JoinChat.svg)](https://gitter.im/stagyrite/kassette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge "Gitter") [![pages-build-deployment](https://github.com/Stagyrite/stagyrite.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/Stagyrite/stagyrite.github.io/actions/workflows/pages/pages-build-deployment)

[Master of Computer Science](https://integro.cen.info.pl/ici/recorddetail?id=oai%3Apolona.pl%3A36345879 "Wielokryterialny system rozdziału zadań z wykorzystaniem algorytmów genetycznych - OpacWWW - Prolib Integro") ﹠ [Oracle Certified Java Professional](https://catalog-education.oracle.com/pls/certview/sharebadge?id=9975082503C1283F2B41AA028D2DFA4763196DD3CB7F09D0B0D7BF65DCFCEABA "Oracle Certified Professional, Java SE 8 Programmer")

## About me

I'm a Java programmer [certified by Oracle](stagyrite "Stagyrite &#124; Profile"), here for lifelong learning and to avoid social cliques. In real life, I can be either optimistic, pessimistic, or fatalistic; therefore, I'd choose to be an [optimist](https://eltikia.github.io/eltikia/#beliefs-changed-to-atheism "Java skills &#124; Eltikia"). However, a fatalist tries to see the world as it is, imagining it neither better nor worse, neither maximising gain nor minimising loss. In other words, either finite or completely infinite. Enough stories of fatalist-pessimist-optimist relations, although they effectively strain relationships.

At the risk of repeating myself, I'm a programmer by profession and education, and I even received numerous course completions [certificates](https://kironia.github.io/kironia "Java skills &#124; Kironia"). Java, architecture, and databases are within my area of expertise. I enjoy camping at the Baltic Sea when I have a few weeks of free time. I learn [foreign languages](languages "Languages &#124; Stagyrite"), and despite knowing both English and German, I know more than a few sentences in French. I wander through [a forest](https://copernix.io/#?where=16.86239573690688,51.15963462572615,20&?query=&?map_type=hybrid "Copernix - Know thy World") in my free time, notwithstanding the above activities and considerations.

I spent many of my early years in Kalisz, the place I still visit to ride my all-terrain bike (among other things). I studied Computer Science at the University of Wrocław and the Wrocław University of Science and Technology (Faculty of Electronics). Before starting my studies, I graduated from a lyceum with a general education class, where French was the second foreign language. For approximately 20% of my total estimated career time, I worked as a Java programmer at a large company known by several names. Up till now, I'm a senior Java developer working near Wrocław.

My hobbies include hiking, camping, [going to the cinema](cinema "Vintage film posters &#124; Stagyrite"), [foreign languages](languages "Languages &#124; Stagyrite"), and inline skating. As for the retro computer games, I created a [YouTube channel](https://eltikia.github.io/ "Nostalgie-Ecke von Stagyrit") along with a [surfing corner](https://kironia.github.io/ "Nostalgie-Ecke von Stagyrit"), a [roguelike game](https://stagyrite.github.io/dust/ "[O]xxxxxx[[/\/\/\/\ DUST/\/\/\/\/\ > &#124; dust"), and an [in-browser minesweeper](https://github.com/stagyrite/yam "Yet Another Minesweeper"). I also have a retro-like balloon shooting game that I share [on GitHub pages](https://kironia.github.io/99balloons/ "99balloons &#124; balloon shooting game"). Along with starting Emacs, [Standard ML programming](sml "Standard ML &#124; Stagyrite") would be my professional hobby, although its purpose may differ greatly. Additionally, I prefer [Raku (Perl 6)](https://stagyrite.github.io/Perl-1.0/raku "Stagyrite &#124; 🐪 Perl Kit") to be my professional hobby, as script programming matters.

To keep the long story short, my professional skills include Java, Python, DevOps, dotCMS, Hibernate, IDE, JavaScript, Perl, SQL, and Spring. By IDE, I mainly mean IntelliJ IDEA and Eclipse, although I also worked with NetBeans and (last but not least) PyCharm. I've even done a fun project with WebStorm, but either Emacs or Vim should be excluded from the list of IDEs. Nevertheless, I used Vim at school and, more recently, Emacs to further educate myself in SML. 

Notwithstanding the above, five programming languages are worth knowing: Java, Python, Ruby, Perl, and JavaScript. It's not an extremely fluctuating opinion, and therefore, only replacements are allowed, for instance, Jython or Raku. C++ would be an interesting alternative, as it provides for handling concurrency differently from Java. I speak [Streem](https://stagyrite.github.io/streem/doc "Streem documentation &#124; Streem") here and there, but one can't be a well-grounded Streemer.

## Contact me

![package](images/package.png)

* Maciej Matiaszowski
* Email: [maciej.matiaszowski@gmail.com](mailto:maciej.matiaszowski@gmail.com?subject=Stagyrite%27s%20Private%20Homepage "Email me")
* Gitter: [#kassette](https://matrix.to/#/#kassette:gitter.im "Gitter &#124; Kassette")
* Homepage: [Stagyrite.GitHub.io](https://stagyrite.github.io/# "Maciej Matiaszowski &#124; Stagyrite")
* GitHub: [GitHub/Stagyrite](https://github.com/Stagyrite/ "Stagyrite (Maciej Matiaszowski)")

#### Speaking Streem

##### contacts.csv

```csv
id,platform,nickname,url
1,GitHub,Stagyrite,https://Stagyrite.GitHub.io
2,Gitter,Stagyrite,https://gitter.im/stagyrite/kasette
3,GitHub,eltikia,https://Eltikia.GitHub.io
4,YouTube,eltikia,https://youtube.com/@eltikia
5,GitHub,kironia,https://Kironia.GitHub.io
```

##### ./streem contacts.strm

```ruby
get = {
    case [], _ -> nil
    case [x, *y], 0 -> x
    case [x, *y], n -> get(y, n - 1)
}
isYouTube = { x -> get(x, 1) == "YouTube" }
getUrl = { x -> get(x, 3) }
data = csv()
["int,string,string,string"] | data
stream = fread("contacts.csv") | data
stream | filter(isYouTube) | map(getUrl) | stdout
# Output: https://youtube.com/@eltikia
```

---

🏝️🌊☀️⛵️
