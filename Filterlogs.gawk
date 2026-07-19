#!/usr/bin/awk -f

# BEGIN block: Executes once before processing any text data
BEGIN {
    FS = ","          # Set the Input Field Separator to a comma (CSV parser)
    print "=== ARCHITECTURE COMPILATION REPORT ==="
    print "Platform \t Build Status \t Speed (s)"
    print "---------------------------------------------"
}

# Body block: Matches lines where the 3rd field equals "ERROR"
$3 == "ERROR" {
    print "⚠️ ALERT: Platform " $1 " failed during compilation phase!"
}

# Body block: Matches lines where the 3rd field equals "SUCCESS"
$3 == "SUCCESS" {
    # Print formatted text columns using system fields ($1 = column 1, $2 = column 2)
    printf "%-10s \t %-12s \t %-8s\n", $1, $3, $2
}

# END block: Executes once after all files have been read completely
END {
    print "---------------------------------------------"
    print "Parsing Complete."
}
