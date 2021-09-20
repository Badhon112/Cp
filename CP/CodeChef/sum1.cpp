#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while (t--)
    {
        int n,s;
        cin>>n>>s;
        int ans=0;
        ans= s-((n*(n+1))/2);
        if(ans<=n && ans>=0){
            cout<<ans<<endl;
        }
        else{
            cout<< "-1" <<endl;
        }
    }
    
}