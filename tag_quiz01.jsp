<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    	ArrayList를 생성해서 1~45까지의 난수 6개를 저장하세요.
    	중복이 발생되면 안됩니다. 중복 방지 로직을 세워서 난수를 리스트에 삽입 후 
    	body 태그에 리스트 내부의 값을 출력해주세요.
    	*/
    %>
    
    
    
    <%
    //		로또 번호는 리스트를 비우고 새로 써줘야한다.
    //		declaration ! 를 쓰면 원래 있던 데이터도 그대로 남아있고 다시 리스트에 
    // 		쌓이기 때문에 fuck이 났다. 구문을 쓰거나 언어를 선택할 때 이유를 되묻고 진행하자
    // 		아직 개발자가 되기도 전인데 속도가 빨라야 나중에 이렇게 다 틀리면 아무짝에도 쓸모없다.
    // 		지금은 생각하고, 이유를 파악하는 것에만 집중하자.
    		List<Integer> lotto = new ArrayList<>();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h2>로또 번호 생성 결과!!!</h2>
	<h3>이번 주 로또 번호는 이 번호다!!</h3>
	
	<%			
	
		
		while(true){
		

			int num = (int) (Math.random()*45)+1;

    		boolean flag = true;
		
			if(lotto.contains(num)){
				flag = false;
			}		
			
			if(flag == true){
				lotto.add(num);
				}			

			if(lotto.size() >= 6) {
				break;					
			}
			
	}
	
		for(int j : lotto) {
			out.print(j + " ");	
		}	
		
 %>
	
</body>
</html>