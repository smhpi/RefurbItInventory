/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.refurbit.www;

/**
 *
 * @author seyed
 */
public class UserBean {
	
      private String userName;
      private String password;
      private String firstName;
      private String lastName;
      public boolean valid;
	
	
      public String getFirstName() {
         return firstName;
	}

      public void setFirstName(String newFirstName) {
         firstName = newFirstName;
	}

	
      public String getLastName() {
         return lastName;
			}

      public void setLastName(String newLastName) {
         lastName = newLastName;
			}
			

      public String getPassword() {
         return password;
	}

      public void setPassword(String newPassword) {
         password = newPassword;
	}
	
			
      public String getUserName() {
         return userName;
			}

      public void setUserName(String userName) {
          this.userName = userName;
			}
      
    
      
				
      public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}	
}

