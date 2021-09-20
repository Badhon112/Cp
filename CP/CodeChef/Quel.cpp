#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while (t--)
    {
        int n,k;
        cin>>n>>k;
        vector<int> arr;
        for(int i=0;i<n;i++){
            int a;
            cin>>a;
            arr.push_back(a);
        }
        sort(arr.begin(), arr.end(), greater<>());
        int score= arr[k-1];
        int count=0;
        for (int i = 0; i < n; i++)
        {
            if(arr[i]>=score) count++;
            else break;
        }
        cout<<count<<endl;
        
        
    }
    
}