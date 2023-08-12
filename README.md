# Brazilian CPF Verification Digit Calculation Algorithm

This repository aims to demonstrate the algorithm to calculate the check digit of the Individual Taxpayer Registry (CPF) used by Brazilian registration agencies. 
The intention is to be able to implement it in several programming languages. The main purpose is to promote the habit of constant study by exploring different languages and their approaches to solve a specific problem.

## About CPF and the Verification Digit

The CPF is an identification document used in Brazil. It consists of 11 digits, with the first 9 digits being the identification numbers and the last 2 digits being the verification digits. The calculation of the verification digits is performed based on the first 9 digits of the CPF.

## Brazilian Taxpayer Registry Number (CPF) Structure
Every individual who registers with the Brazilian Federal Revenue Service's Individual Taxpayer Registry is assigned an eleven-digit decimal registration number with the following format: ABC.DEF.GHI-JK.

* The first eight digits, ABCDEFGH, constitute the base number assigned by the Federal Revenue Service during registration.
* The ninth digit, I, designates the Fiscal Region responsible for the registration.
* The penultimate digit, J, is the verification digit for the first nine digits.
* The final digit, K, is the verification digit for the nine digits preceding it.


![ABC DEF GHI-JK](https://github.com/allmeidalima/CheckSumCalculator/assets/91704800/89e66323-6d29-4ac0-b623-3cfc72fedae3)

## Regions

1. DF, GO, MS, MT e TO
2. AC, AM, AP, PA, RO e RR 
3. CE, MA e PI
4. AL, PB, PE, RN
5. BA e SE
6. MG
7. ES e RJ
8. SP
9. PR e SC
0. RS

## Python

<div>
        <a href = "mailto:allmeida.lima@gmail.com"><img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" target="_blank"></a>
        <a href="https://www.linkedin.com/in/lalmeida-lima/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a>   
</div>

##
