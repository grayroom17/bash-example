#!/bin/bash

grep -E "\w+Ex" regexp_text.txt
egrep "\w+Ex" regexp_text.txt
grep -E "(\w+|\s)Ex" regexp_text.txt
grep -E "[0-9]+" scv_file.txt