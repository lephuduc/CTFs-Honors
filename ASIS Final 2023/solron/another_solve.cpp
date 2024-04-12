#include <bits/stdc++.h>
#include <bitset>

using namespace std;
typedef long long ll;
ll a[40] = {220179052945, 221599562964, 444619635947, 890659781913, 1792683643978, 3572582697785, 7203406306349, 14378402412318, 28986927447714, 11643743283942, 23925295566415, 2347216352402, 6650475000967, 16995696561353, 38967439719263, 34999786772450, 33047669078852, 6032978850744, 28701550533997, 39525984254490, 39401807925258, 40196286962541, 20482387330, 6897582192128, 18193262052213, 14034687311267, 38696243811282, 28771492424308, 22561153986096, 12368643406675, 14879186769676, 44273488962403, 25808097631864, 9471922805862, 13007638866703, 2609645511581, 8199094738496, 20848327273257, 8152120364717, 45844305601939};
ll encflag[16] = {344134140428421, 391025233794614, 413813486118251, 367271938492043, 381976419575618, 337567063468323, 379136577196018, 324405153827667, 310857710617980, 346704121949466, 318132162847387, 299624312887295, 314186202343305, 317640875233415, 325423198510227, 300168950700057};

typedef pair<ll, int> pir;
#define fi first
#define se second
vector<pir> sum1, sum2;


void brutegen(int cur, int ed, int state, ll cursum, vector<pir> & archive, bool _20 = false)
{
    if (cur >=ed)
    {
        archive.push_back(pir(cursum, state));
    }
    else
    {
        brutegen(cur + 1, ed, state, cursum, archive, _20);
        if (!_20)
            brutegen(cur + 1, ed, state | (1<<cur), cursum + a[cur], archive, _20);
        else brutegen(cur + 1, ed, state | (1<<(cur - 20)), cursum + a[cur], archive, _20);

    }
}

void getindex(int state1,int state2)
{
    string s = "";
    for(int i = 0; i < 20; ++i)
        if ((state1 >> i) & 1)
            s+="1";
        else
            s+="0";
    for(int i = 0; i< 20; ++i)
        if ((state2 >>i) & 1)
            s+="1";
        else{
            s+="0";
        }
    for(int i = 0; i< 5; ++i){
        std::bitset<8> b(s.substr(i*8,8));
        unsigned char c = ( b.to_ulong() & 0xFF);
        cout<<c;
    }
    // cout<<endl;
    // cout<<s<<endl;
}
void solve(ll target)
{
    brutegen(0, 20, 0, 0, sum1);
    brutegen(20, 40, 0, 0, sum2, true);
    sort(sum2.begin(), sum2.end());
    for(auto i : sum1)
        if (i.fi > target) continue;
        else
        {
            int pos = lower_bound(sum2.begin(), sum2.end(), pir(target - i.fi, 0)) - sum2.begin();
            if (sum2[pos].fi + i.fi == target)
            {
                // cout << "FOUND\n";
                getindex(i.se, sum2[pos].se);
                return;
            }
        }
}
int main()
{
    ll target = 344134140428421;
    // solve(target);
    for (auto i:encflag){
        solve(i);
    }
    return 0;
}



// void getindex(int state1,int state2)
// {
//     string s = "";
//     for(int i = 0; i < 20; ++i)
//         if ((state1 >> i) & 1)
//             // cout << i<< " ";
//             s+="1";
//         else
//             s+="0";
//     for(int i = 0; i< 20; ++i)
//         if ((state2 >>i) & 1)
//             // cout << i  + 20<< " ";
//             s+="1";
//         else{
//             s+="0";
//         }
//     cout<<s<<endl;
// }