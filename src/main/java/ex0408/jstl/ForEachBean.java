package ex0408.jstl;

import ex0408.dto.Member;

import java.util.*;

public class ForEachBean {
   private String names[] = {"민주", "수빈", "정희", "성희", "희정", "소영", "은진", "수현"};
   private List<String> menus = Arrays.asList("짜장", "짬뽕", "탕수육", "팔보채", "볶음밥");

   private List<Member> memberList = new ArrayList<>();
   private Map<String, String> map = new HashMap<>();

   public ForEachBean() {
      // memberList와 map에 데이터 추가
       memberList.add(new Member("kim", "김승원", 26, "경기 광주시"));
       memberList.add(new Member("son", "손태호", 25, "경기 광주시"));
       memberList.add(new Member("lee", "이재훈", 26, "경기 과천시"));
       memberList.add(new Member("jung", "정주열", 26, "경기 성남시"));
       memberList.add(new Member("song", "송중기", 35, "경기 화성시"));

       // 각 나라에 해당하는 국가코드를 key로 관리하는 map을 추가했다.
       map.put("kr", "대한민국");
       map.put("us", "미국");
       map.put("fr", "프랑스");
       map.put("jp", "일본");
   }

   public String[] getNames() {  // jsp문서에서 getNames()메소드 호출 -> ${Bean이름.names}
      return names;
   }

   public List<String> getMenus() { // ${Bean이름.menus}
      return menus;
   }

   public List<Member> getMemberList() {
      return memberList;
   }

   public Map<String, String> getMap() {
      return map;
   }
}
