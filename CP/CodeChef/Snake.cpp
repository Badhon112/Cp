#include <bits/stdc++.h>
using namespace std;
int main()
{
    int t;
    cin >> t;
    while (t--)
    {
        int n;
        string s;
        cin >> n;
        cin >> s;
        string st;
        for (int i = 0; i < n; i++)
        {
            if (s[i] != '.')
                st += s[i];
        }
        bool ans = true;
        if (st.length() % 2 != 0)
            ans = false;
        else
        {
            for (int i = 0; i < st.length(); i++)
            {
                if (i % 2 == 0)
                {
                    if (st[i] == 'T')
                        ans = false;
                }
                else
                {
                    if (st[i] == 'H')
                        ans == false;
                }
            }
        }
        if (ans)
            cout << "Valid" << endl;
        else
            cout << "Invalid" << endl;
    }
}