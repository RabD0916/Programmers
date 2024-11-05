class Solution {
    public int solution(String num_str) {
        String[] num = num_str.split("");
        int answer = 0;
        for(String n : num){
            answer=Integer.parseInt(n)+answer;
        }
        return answer;
    }
}