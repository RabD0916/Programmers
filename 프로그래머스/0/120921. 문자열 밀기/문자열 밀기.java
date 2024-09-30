class Solution {
    public int solution(String A, String B) {
        if (A.equals(B)) {
            return 0; // 이미 A와 B가 같은 경우
        }
        
        int answer = 0;
        StringBuilder sb = new StringBuilder(A);
        
        for (int i = 0; i < A.length(); i++) {
            // 마지막 글자를 맨 앞으로 이동시키는 방식으로 회전
            char lastChar = sb.charAt(sb.length() - 1);
            sb.deleteCharAt(sb.length() - 1);
            sb.insert(0, lastChar);
            
            answer++;
            
            if (sb.toString().equals(B)) {
                return answer; // A와 B가 같아졌을 때 회전 수 반환
            }
        }
        
        return -1; // A를 아무리 회전해도 B와 같아지지 않는 경우
    }
}
