import vim
import webbrowser
import re
def webbrowse():
    c_word = vim.eval('expand("<cWORD>")')
    webbrowser.open(c_word)
    result = re.match("(http://.*?)", c_word)
    patt_url = re.compile("((http|https)://[A-Za-z0-9\'~+\-=_.,/%\?!;:@#\*&\(\)]+)")
    m = patt_url.search(c_word)
    if m:
        webbrowser.open(m.group(0))
    else:
        print "url not found"
