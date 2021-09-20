#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while (t--)
    {
        int n;
        cin>>n;
        int A[n],B[n];
        for (int i = 1; i < n+1; i++)
        {
            cin>>A[i];
            
        }
        for (int i = 1; i <= n+1; i++)
        {
            cin>>B[i];
        }
        int ans=0;
        for (int i = 1; i <= n+1; i++)
        {
            if(A[i]-A[i-1]>= B[i]){
                ans++;
            }
            
        }

        
        cout<<ans<<endl;
    }
    
}