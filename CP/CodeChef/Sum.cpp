#include <bits/stdc++.h>
using namespace std;
#define ll long long
int main()
{
    int t;
    cin >> t;
    while (t--)
    {
        int n, s;
        cin >> n >> s;
        ll sum;
        sum =( n * (n + 1)) / 2;
        sum = sum - s;
        if (sum >= 1 and sum <= n)
        {
            cout << sum << endl;
        }
        else
        {
            cout << "-1" << endl;
        }
    }
    return 0;
}