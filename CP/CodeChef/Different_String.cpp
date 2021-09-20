#include <bits/stdc++.h>
using namespace std;
void solve()
{
    int n, i;
    cin >> n;
    vector<string> str(n, ".");
    for (i = 0; i < n; i++)
    {
        cin >> str[i];
    }
    string ans = "";
    for (i = 0; i < n; i++)
    {
        if (str[i][i] == '0')
        {
            ans += '1';
        }
        else
        {
            ans += '0';
        }
    }
    cout<<ans<<endl;
}
int main()
{
    int t;
    cin >> t;
    while (t--)
    {
        solve();
    }
}