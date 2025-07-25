# Languages

## My language proficiency

| 🔢 | 🎌 | Language | [CEFR](https://stagyrite.github.io/languages#proficiency--stdout "Common European Framework of Reference for Languages") |
| :---: |  :---: | :---: | :---: |
| 1️⃣ | 🇬🇧 | English | [B1](https://stagyrite.github.io/languages#proficiency--stdout "Intermediate. But one day I will say: Post-intermediate") |
| 2️⃣ | 🇩🇪 | German | [A2](https://stagyrite.github.io/languages#proficiency--stdout "Pre-intermedìate. But one day I will say: Intermediate") |
| 3️⃣ | 🇵🇱 | Polish | [N](https://stagyrite.github.io/languages#proficiency--stdout "Native") |

#### Speaking Streem

##### ./streem languageVersions.strm

```ruby
name = "lawn rake"
translations = kvs()
translations.put(name + "_pl", "Grabie do trawy")
translations.put(name + "_fr", "Râteau à gazon")
translations.put(name + "_de", "Grasrechen")
product = kvs()
product.put("name", name)
product.put("name_pl", name)
product.put("name_fr", name)
product.put("name_de", name)
product.update("name_pl") { x -> translations.get(x + "_pl") }
product.update("name_fr") { x -> translations.get(x + "_fr") }
product.update("name_de") { x -> translations.get(x + "_de") }
print("🇫🇷 " + product.get("name_fr"))
# Output: 🇫🇷 Râteau à gazon
```

##### ./streem translations.strm

```ruby
# translations.csv:
# name,name_pl,name_fr,name_de
# lawn rake,Grabie do trawy,Râteau à gazon,Grasrechen

get = {
    case [], _ -> nil
    case [x, *y], 0 -> x
    case [x, *y], n -> get(y, n - 1)
}

translationsCsv = csv()
["string,string,string,string"] | translationsCsv
stream = fread("translations.csv") | translationsCsv

translator = (x, language) -> {

	if (language == "en") {
		index = 0
	} else if (language == "pl") {
		index = 1
	} else if (language == "fr") {
		index = 2
	} else if (language == "de") {
		index = 3
	} else {
		""
	}
	
	get(x, index)
}

hasName = (x, english) -> { get(x, 0) == english }

translate = (english, language) -> {
	translationsCsv | filter{ x -> hasName(x, english) } | { x -> translator(x, language) }
}

name = "lawn rake"
translate(name, "fr") | map { x -> "🇫🇷 " + x } | stdout
# Output: 🇫🇷 Râteau à gazon
```

---

🔵⚪️⛵️🧿
