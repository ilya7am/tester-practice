**Linux terminal (GitBash) commands**

1) Where I am `pwd`
2) Create a folder `mkdir stage1`
3) Go to the folder  `cd stage1`
4) Create 3 folders  `mkdir f1 f2 f3`
5) Go to one of the folders  `cd f1`
6) Create 5 files (3txt, 2 json) `touch try1.json try2.json try1.txt try2.txt try3.txt`
7) Create 3 folders  `mkdir one two three`
8. Show all content in a folder   `ls –la` 
9) Open txt file `vim try1.txt`
10) Update and save it  `:wq`
11) Go out of the folder on another level  `cd ..`
12) Move 2 files into another one  `mv f1/{try1.json,try1.txt} f2`
13) Copy 2 files into another one  `cp f1/{try2.json,try2.txt} f2`
14) Find a file by name `find . -name "try3.txt"`
15) Show the file content in a real time `tail –f try1.json.`
16) Display first few lines of a txt file  `head -2 f2/try1.txt`
17) Show last few lines of a txt file  `tail -2 f2/try1.txt`
18) Show the content of a long file `less try1.txt` 
19) Display date and time `date`
20) Send http-request to the server `curl http://162.55.220.72:5005/terminal-hw-request`