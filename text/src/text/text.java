package text;
import java.io.*;
import java.util.*;
public class text {
	 public static void main(String args[])throws IOException
	 {
		 	int size[]=new int[52];
	        char y[]=new char[52];
	        int j=0;
			 File fileSrc=new File("C:\\Users\\23615\\Desktop\\Æ®Ó¢ÎÄ°æ.txt");
	      
			 BufferedReader fin=new BufferedReader( new FileReader(fileSrc) );
			 String line;
			 Map<Character, Integer> counter= new HashMap<Character, Integer>();
			 while( (line=fin.readLine())!=null){
				int len = line.length();
				for(int i=0; i<len; i++){
					char c=line.charAt(i);
					if(!((c>='A' && c<='Z') || (c>='a' && c<='z') ) ){
						continue;
					}
					if(counter.containsKey(c)){
						counter.put(c, counter.get(c)+1);
					}else{
						counter.put(c, 1);
					}
				}
			}
			fin.close();
			
			for(Iterator<Character> it=counter.keySet().iterator(); it.hasNext(); ){
				char key=it.next();
				int count=counter.get(key);
				size[j]=count;
				y[j]=key;
		    //System.out.println(key+"    "+count);
			}
			
	       }
	 
}
