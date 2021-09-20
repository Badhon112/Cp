#include <bits/stdc++.h>
using namespace std;
void solved()
{
    int n;
    cin >> n;
    map<int, int> m;
    for (int i = 0; i < n; i++)
    {
        int x;
        cin >> x;
        m[x]++;
    }
    int ans = n, cnt = 0;
    for (auto element : m)
    {
        ans = min(ans, n - element.second);
        cnt++;
    }
    if (cnt >= 2)
        ans = min(ans, n - 2);
    cout << ans << endl;
}
int main()
{
    int t;
    cin >> t;
    while (t--)
    {
        solved();
    }
}