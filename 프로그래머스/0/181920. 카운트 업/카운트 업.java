class Solution {
    public int[] solution(int start_num, int end_num) {
        int idx=end_num - start_num;
        int[] answer = new int[idx+1];
        for(int i=0;i<idx+1;i++){
            answer[i]=start_num;
            start_num++;
        }
        return answer;
    }
}