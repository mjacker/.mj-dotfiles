# Documentation of Scripts

---

## change-field-separator.sh

**Description:**

> This changes the separator from " " (spaces) to ":" colons.

**Code:**

```bash
awk -F ":" '{print$1}' /etc/passwd
```

---

## print-first-column.sh

**Description:**

> Simple example how to print the first column of ps

**Code:**

```bash
ps
echo "print first column: "
ps | awk '{print$1}'
echo "print fourth column: "
ps | awk '{print$4}'
```

---

## print-third-character.sh

**Description:**

> Print the third character of a strings using awk.

**Code:**

```bash
`echo "abcde" | akw '{print substr($0, 3, 1)}'`
```

