# blockchains

## quelques sources

[intro très rapide](https://www.youtube.com/watch?v=r43LhSUUGTQ) (bof bof)

[BarCamp "La Blockchain pour les développeurs" : PaloIT](https://www.youtube.com/watch?v=6hmQT8H-JJk) (bof bof)

[Public key infrastructure (PKI) will soon run on blockchain technology : nexusgroup.com 20170322](https://www.nexusgroup.com/blog/public-key-infrastructure-pki-will-soon-run-blockchain-technology/)

[Cécile Monteil - La Blockchain : un jeu d'enfant, Finance-Fiction , Popfinance](https://www.youtube.com/watch?v=cL1PWRaZq4g) (bof bof)

[La Blockchain en détail (Benoît Lafontaine - Yann Rouillard) : Octo](https://www.youtube.com/watch?v=J0MgFQ-j6nE) (prometteur !)

[c-est-quoi-la-blockchain : blockchainfrance.net](https://blockchainfrance.net/decouvrir-la-blockchain/c-est-quoi-la-blockchain/)

## questions

A priori les certificats utilisés dans une blockchain sont autosignés, comment gérer la révocation des certificats ?

Question déterminante, en tant que user de la blockchain je veux :
- révoquer ma paire de clefs si elle est perdue ou volée
- révoquer ma paire de clefs pour augmenter la taille de chiffrement de mes clefs (evol techno nécessitant d'augmenter la taille des clefs cf [cette explication sur wikipedia](https://fr.wikipedia.org/wiki/Chiffrement_RSA#S.C3.A9curit.C3.A9))
- savoir si la paire de clefs d'une autre personne est révoquée

## blockchain pki

### blockcerts.org

> The Open Standard for Blockchain Certificates.

> Build apps that issue and verify blockchain-based certificates for academic credentials, professional certifications, workforce development, and civic records.

[github organization](https://github.com/blockchain-certificates)

[www.blockcerts.org](http://www.blockcerts.org/)

### University paper

[IKP: Turning a PKI Around with Blockchains, Stephanos Matsumoto & Raphael M. Reischuk](https://eprint.iacr.org/2016/1018.pdf)
