# 🐚 LeetCode Bash Solutions

This repository contains my solutions to **LeetCode Bash problems**.  
The purpose of this repo is not just to provide answers, but also to highlight what I learned while solving them.

---

## 📖 What I Learned
While working on these problems, I practiced and reinforced:
- **Unix pipes (`|`)** → chaining commands together
- **`grep` & regex** → filtering and matching text patterns
- **`awk`** → column-based processing
- **`sed`** → replacing text using patterns
- **`sort`, `uniq`, `tr`, `cut`** → common text manipulation tools
- Building **concise one-liner solutions** by combining tools

---

## 🗂 Repository Structure
Each problem is stored as a separate script inside the `solutions/` folder:

```
solutions/
  ├── valid-phone-numbers.sh
  ├── transpose-file.sh
  ├── word-frequency.sh
  ├── tenth-line.sh
  └── ...
```

Each script starts with:
```bash
# Problem: <Problem Name>
# Description: Short explanation of the task
# Key idea: Main Unix command(s) this problem is about

<solution code>
```

---

## 📝 Example Problems

### ✅ [Valid Phone Numbers](solutions/valid-phone-numbers.sh)
```bash
grep -E '^([0-9]{3}-[0-9]{3}-[0-9]{4}|\([0-9]{3}\) [0-9]{3}-[0-9]{4})$' file.txt
```
**Key idea:** Use `grep -E` with regex to validate different phone number formats.

---

### ✅ [Word Frequency](solutions/word-frequency.sh)
```bash
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -nr
```
**Key idea:** Convert spaces to newlines, count words with `uniq -c`, then sort by frequency.

---

### ✅ [Transpose File](solutions/transpose-file.sh)
```bash
awk '{
  for (i=1; i<=NF; i++) {
    if (NR==1) { out[i]=$i }
    else { out[i]=out[i]" "$i }
  }
} END {
  for (i=1; i<=NF; i++) print out[i]
}' file.txt
```
**Key idea:** Use arrays in `awk` to re-construct rows as columns.

---

### ✅ [Tenth Line](solutions/tenth-line.sh)
```bash
sed -n '10p' file.txt
```
**Key idea:** Use `sed -n '10p'` to directly print the 10th line of a file.

---

## 🚀 How to Run
Clone the repo:
```bash
git clone https://github.com/<your-username>/leetcode-bash-solutions.git
cd leetcode-bash-solutions
```

Make scripts executable:
```bash
chmod +x solutions/*.sh
```

Run a script:
```bash
./solutions/word-frequency.sh
```

---

## 📌 Notes
These solutions are meant to be:
- Concise (one-liners where possible)
- Practical (using the right Unix tool for the job)
- Educational (focusing on what each problem is testing)

Contributions with alternative solutions are always welcome! 🚀
