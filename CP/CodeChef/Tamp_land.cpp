#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while (t--)
    {
        int n;
        cin>>n;
        vector<int> arr;
        for (int i = 0; i < n; i++)
        {
            int a;
            cin>>a;
            arr.push_back(a);
        }
        int mid=n/2;
        bool flag=true;
        if(n%2==0){
            flag=false;
        }
        else{
            int start=0,end=n-1,counter=1;
            while (start<=end)
            {
                if(arr[start]!= counter or arr[end]!= counter){
                    flag=false;
                    break;

                }
                start++;
                end--;
                counter++;
            }
            
        }
        if(flag){
            cout<<"YES"<<endl;
        }
        else cout<<"NO"<<endl;
        
    }
    
}