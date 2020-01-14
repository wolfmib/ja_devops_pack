
# 2020-01-14
---

- try to use curl to sync lib-files from other gitlab repository.
- success finish the test with personal-private-token
- check the example below, download ja_language.py from python-api project with id with branch-game_simulation_tool 

---



- use private-token (read-only)
- use -L to redirect
- use > to save new file
- endpoint:   repository/files/ ... 
- subfolder path use  %2F for each '/' 
    - example:  00_common_lib/ja_system/   = 00_common_lib%2Fja_system%2F
- use %2E for point:  
    - example:  my_python.py  = my_python%2Epy



curl -L --request GET --header 'PRIVATE-TOKEN: 2hAN8AystTyy5NmsQCjp' 'https://gitlab.com/api/v4/projects/12482418/repository/files/00_Common_Lib%2Fja_system_lib%2Fja_language%2Epy/raw?ref=game_simulation_tool' > ja_language.py
