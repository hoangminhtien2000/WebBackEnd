package com.models;

public class Account {
   private int id;
   private String username;
   private String password;
   private String name;
   private String img;
   private String role;

   public Account() {
   }

   public Account(int id, String username, String password, String name, String img, String role) {
      this.id = id;
      this.username = username;
      this.password = password;
      this.name = name;
      this.img = img;
      this.role = role;
   }

   public Account(String username, String password, String name, String img, String role) {
      this.username = username;
      this.password = password;
      this.name = name;
      this.img = img;
      this.role = role;
   }

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getUsername() {
      return username;
   }

   public void setUsername(String username) {
      this.username = username;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getImg() {
      return img;
   }

   public void setImg(String img) {
      this.img = img;
   }

   public String getRole() {
      return role;
   }

   public void setRole(String role) {
      this.role = role;
   }
}
