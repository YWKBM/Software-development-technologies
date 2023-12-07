#include "primesgenerator.h"
#include <cmath>
class BasicPrimesGenerator : public PrimesGenerator{
public:
    std::vector<int> generatePrimes(int start, int end) override{
        std::vector<int> primes;
        for (int num = start; num <= end; num++){
            bool isPrime = true;
            for (int i = 2; i < sqrt(num); i++){
                if (num % i == 0){
                    isPrime = false;
                    break;
                }
            }
            if (num > 1 && isPrime){
                primes.push_back(num);
            }
        }
        return primes;
    }
};
