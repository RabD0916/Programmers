class Solution {
    public String solution(String rsp) {
        String[] num = rsp.split("");
        StringBuilder answer = new StringBuilder();
        
        for (String n : num) {
            if (n.equals("2")) {
                answer.append("0");
            } else if (n.equals("0")) {
                answer.append("5");
            } else {
                answer.append("2");
            }
        }
        
        return answer.toString();
    }
}
