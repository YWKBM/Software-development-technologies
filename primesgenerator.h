#ifndef PRIMESGENERATOR_H
#define PRIMESGENERATOR_H
#pragma once
#include <vector>

class PrimesGenerator
{
public:
    virtual std::vector<int> generatePrimes(int start, int end) = 0;
    virtual ~PrimesGenerator() {}
};

#endif // PRIMESGENERATOR_H
