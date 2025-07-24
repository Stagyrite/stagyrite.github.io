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
# Grasrechen

name = "Grabie do trawy"
translations = kvs()
translations.put(name, "Grasrechen")
product = kvs()
product.put("name", name)
product.put("name_de", name)
product.update("name_de") { x -> translations.get(x) }
print(product.get("name_de"))
```

---

🔵⚪️⛵️🧿
