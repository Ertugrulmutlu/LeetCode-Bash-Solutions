awk '
{
    for (i = 1; i <= NF; i++)  # her sütun için
        a[i] = (a[i] ? a[i] " " $i : $i)  # yanına ekle
}
END {
    for (i = 1; i <= NF; i++)  # her sütunu sırayla yazdır
        print a[i]
}' file.txt
