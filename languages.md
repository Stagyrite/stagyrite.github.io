# Languages

## Language proficiency

| 🔢 | 🏁 | Language | [CEFR](https://stagyrite.github.io/languages#my-language-proficiency "Common European Framework of Reference for Languages") |
| :---: |  :---: | :---: | :---: |
| 1️⃣ | 🇬🇧 | English | [B2](https://stagyrite.github.io/languages#my-language-proficiency "Post-Intermediate") |
| 2️⃣ | 🇩🇪 | German | [B1](https://stagyrite.github.io/languages#my-language-proficiency "Intermedìate. But one day I will say: Post-Intermediate") |
|  | 🇫🇷 | French| 0+ |
| 3️⃣ | 🇵🇱 | Polish | [N](https://stagyrite.github.io/languages#my-language-proficiency "Native") |

#### Speaking Streem

##### ./streem languageVersions.strm

```ruby
get = {
    case [], _ -> nil
    case [x, *y], 0 -> x
    case [x, *y], n -> get(y, n - 1)
}

getName = (x, language) -> {

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

hasName = (x, english) -> { getName(x, "en") == english }
translationsCsv = csv()
["string,string,string,string"] | translationsCsv
stream = fread("translations.csv") | translationsCsv

translate = (english, language) -> {
        thisFilter = filter{ x -> hasName(x, english) }
        translateThis = map { x -> getName(x, language) }
        translationsCsv | thisFilter | translateThis
}

translations = kvs()
product = kvs()

translateProduct = (name) -> {
        translations.put(name + "_pl", translate(name, "pl"))
        translations.put(name + "_fr", translate(name, "fr"))
        translations.put(name + "_de", translate(name, "de"))
        product.put("name", name)
        product.put("name_pl", name)
        product.put("name_fr", name)
        product.put("name_de", name)
        product.update("name_pl") { x -> translations.get(x + "_pl") }
        product.update("name_fr") { x -> translations.get(x + "_fr") }
        product.update("name_de") { x -> translations.get(x + "_de") }
}

translateProduct("lawn rake")
product.get("name_fr") | map { x -> "🇫🇷 " + x } | stdout

# Output: 🇫🇷 Râteau à gazon
```

---

🔵⚪️⛵️🧿
