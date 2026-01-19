# Languages

## Language proficiency

| 🔢 | 🏁 | Language | [CEFR](https://stagyrite.github.io/languages#my-language-proficiency "Common European Framework of Reference for Languages") |
| :---: |  :---: | :---: | :---: |
| 1️⃣ | 🇬🇧 | English | [B2](https://stagyrite.github.io/languages#my-language-proficiency "Post-Intermediate") |
| 2️⃣ | 🇩🇪 | German | [B1](https://stagyrite.github.io/languages#my-language-proficiency "Intermedìate") |
| 3️⃣ | 🇫🇷 | French | [A2](https://stagyrite.github.io/languages#my-language-proficiency "Pre-Intermediate") |
| 4️⃣ | 🇵🇱 | Polish | [N](https://stagyrite.github.io/languages#my-language-proficiency "Native") |

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

makeProduct = (row) -> {
    name = getName(row, "en")
    inPolish = getName(row, "pl")
    inFrench = getName(row, "fr")
    inGerman = getName(row, "de")
    product = kvs()
    product.put("name", name)
    product.put("name_pl", inPolish)
    product.put("name_fr", inFrench)
    product.put("name_de", inGerman)
    product
}

frenchProductName = { row ->
    inFrench = row.get("name_fr")
    puts("🇫🇷 " + inFrench)
}

translationsCsv = csv()
["string,string,string,string"] | translationsCsv
stream = fread("languageVersions.csv") | translationsCsv
stream | makeProduct | frenchProductName

# Output: 🇫🇷 Râteau à gazon
```

---

🔵⚪️⛵️🧿
