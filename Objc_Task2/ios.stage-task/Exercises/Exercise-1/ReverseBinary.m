#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 ans = 0;
    for(NSInteger i = 0; i<8; i++){
        if(n%2){
            ans += pow(2,7-i);
            printf("%hhu", ans);
        }
        n/=2;
    }
    return ans;
}
