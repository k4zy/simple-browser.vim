import vim
import webbrowser
import re
def webbrowse():
    c_word = vim.eval('expand("<cWORD>")')
    patt_url = re.compile("((http|https)://[A-Za-z0-9\'~+\-=_.,/%\?!;:@#\*&\(\)]+)")
    match = patt_url.search(c_word)
    if match:
        webbrowser.open(match.group(0))
    else:
        print "url not found"
