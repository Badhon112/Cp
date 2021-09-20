#include <bits/stdc++.h>
using namespace std;
#define ll long long
int main()
{
    ll t;
    cin >> t;
    while (t--)
    {
        ll a, i = 1, count = 1;
        cin >> a;
        vector<int> v;
        while (v.size() <= a)
        {
            if (i % 3 != 0 && i % 10 != 3)
            {
                v.push_back(i);
                count++;
            }
            i++;
        }
        cout << v[a - 1] << endl;
    }
}