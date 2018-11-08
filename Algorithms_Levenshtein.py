Tham khảo:
1. Levenshtein distance https://en.wikipedia.org/wiki/Levenshtein_distance#Definition
2. How Levenshtein works...: http://levenshtein.net/

# Christopher P. Matthews
# christophermatthews1985@gmail.com
# Sacramento, CA, USA
#https://en.wikibooks.org/wiki/Algorithm_Implementation/Strings/Levenshtein_distance#Python
def levenshtein(s, t):
        ''' From Wikipedia article; Iterative with two matrix rows. '''
        if s == t: return 0
        elif len(s) == 0: return len(t)
        elif len(t) == 0: return len(s)
        v0 = [None] * (len(t) + 1)
        v1 = [None] * (len(t) + 1)
        for i in range(len(v0)):
            v0[i] = i
#        print(['']+[c for c in t])
        for i in range(len(s)):
            v1[0] = i + 1
            for j in range(len(t)):
                cost = 0 if s[i] == t[j] else 1
                v1[j + 1] = min(v1[j] + 1, v0[j + 1] + 1, v0[j] + cost)
            for j in range(len(v0)):
                v0[j] = v1[j]
#            print(s[i],v0)
        return v1[len(t)]
levenshtein('tuan anh','truong thanh')    

