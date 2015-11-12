function p = prime_pairs(n)
pr = primes(100000);
for p = pr
    if (isprime(p+n))
        return;
    end
end
p = -1;
end