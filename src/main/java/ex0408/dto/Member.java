package ex0408.dto;

public class Member {
   private String id;
   private String name;
   private int age;
   private String addr;

   public Member() {

   }

   public Member(String id, String name, int age, String addr) {
      this.id = id;
      this.name = name;
      this.age = age;
      this.addr = addr;
   }

   public String getId() {
      return id;
   }

   public String getName() {
      return name;
   }

   public int getAge() {
      return age;
   }

   public String getAddr() {
      return addr;
   }
}
