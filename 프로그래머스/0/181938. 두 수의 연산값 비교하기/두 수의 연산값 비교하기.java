class Solution {
    public int solution(int a, int b) {
        int answer = 0;
        String a1 = String.valueOf(a);
        String b1 = String.valueOf(b);
        String str = a1+b1;
        int idx = Integer.parseInt(str);
        if(idx < 2*a*b){
            answer= 2*a*b;
            return answer; 
        }else{
            answer=idx;
            return answer;
        }
    }
}