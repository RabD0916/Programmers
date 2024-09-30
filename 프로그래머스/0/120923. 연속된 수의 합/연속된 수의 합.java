class Solution {
    public int[] solution(int num, int total) {
        int[] answer = new int[num];
        int numnum = (total/num) - ((num - 1)/2);
        
        for(int i=0;i<num;i++){
            answer[i]=numnum;
            numnum++;
        }
        return answer;
    }
}