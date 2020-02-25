/^[ \t]*$/d
/\t.*/s/\[.*\]/;echo '&'; apt install -y /g
s/\t//g
1 s/;//
# s/#.$//
