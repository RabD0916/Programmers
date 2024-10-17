class Solution {
    public int solution(int[] num_list) {
        int answer = 0;
        int hap=0;
        int gob=1;
        for(int i=0; i<num_list.length;i++){
            hap+=num_list[i];
            gob*=num_list[i];
        }
        if(gob<hap*hap){
            return answer=1;
        }else{
            return answer=0;
        }
    }
}