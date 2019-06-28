# Multi-writer-PEKS
How to implement anti-quantum encryption algorithm has always been an important topic both in industries and academics. Yet, situations for encrypted search remain to be fully explored. Multi-writer-PEKS is a lattice-based public key encryption scheme supporting encrypted search. It employs TrapGen algorithm to generate the master secret key for the KGC, and exploits Derive algorithm to delegate private keys for each user. The keyword is encrypted by the encryption algorithm. And while the user wants to search the ciphertext related to some certain keyword, he executes the search algorithm to output the search results.

Setup

Matlab: 2015
Arguments:
"m": the dimension of lattice basis;
"n": the security parameter 
"S": master secret;
"A_tau": the identity matrix;
"c": the center of the gaussian distribution;
"s": gaussian parameter;
"k": the length of the keyword;
"l": the length of the user's identity;
"sk": user's private key'
Software Interface:
----------------------- Root Menu -----------------------


--->

Current Maintainer
Lei Xu, City University of Hong Kong, xuleicrypto@gmail.com
Xingliang Yuan, Monash University, xingliang.yuan@monash.edu
