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
# Output:
# 🇬🇧 lawn rake
# 🇫🇷 Râteau à gazon

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
print("🇬🇧 " + product.get("name_fr"))
product.update("name_pl") { x -> translations.get(x + "_pl") }
product.update("name_fr") { x -> translations.get(x + "_fr") }
product.update("name_de") { x -> translations.get(x + "_de") }
print("🇫🇷 " + product.get("name_fr"))
```

---

🔵⚪️⛵️🧿
