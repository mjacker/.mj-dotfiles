# Documentation of Scripts

---

## get-inside-parenthesis.sh

**Code:**

```bash
echo "This is whatever before (/this/is/my/path/to/script.sh) this is whatever after" | \
  sed -n 's/.*(\(.*\)).*/\1/p'
```
| Part       | Meaning                                                                 |
|------------|-------------------------------------------------------------------------|
| `.*`       | Match any characters, greedily, up to the first `(`                    |
| `(`        | Match a literal opening parenthesis (escaped because `(` is special)   |
| `\(.*\)`   | Capture everything inside the parentheses (`.*`) into group `\1`       |
| `)`        | Match a literal closing parenthesis (escaped)                          |
| `.*`       | Match any characters after the closing parenthesis                     |

---

| Group      | Meaning                                                                 |
|------------|-------------------------------------------------------------------------|
| `\1`       | Refers to the first captured group: the path inside the parentheses     |

