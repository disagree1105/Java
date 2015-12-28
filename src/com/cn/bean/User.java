package com.cn.bean;

public class User implements java.io.Serializable{
			/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
			private Integer id;
			private String username;
			private String password;
			private String type;
			private String name;
			private String idcard_number;
			private String tel;
			
			
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

			public String getType() {
				return type;
			}

			public void setType(String type) {
				this.type = type;
			}

			public String getName() {
				return name;
			}

			public void setName(String name) {
				this.name = name;
			}

			public String getIdcard_number() {
				return idcard_number;
			}

			public void setIdcard_number(String idcard_number) {
				this.idcard_number = idcard_number;
			}

			public String getTel() {
				return tel;
			}

			public void setTel(String tel) {
				this.tel = tel;
			}

			
			public Integer getId() {
				return id;
			}

			public void setId(Integer id) {
				this.id = id;
			}

			public User(){}
			
			public User(String username,String password,String type,String name,String idcard_number,String tel)
			{
				this.username=username;
				this.password=password;
				this.type=type;
				this.name=name;
				this.idcard_number=idcard_number;
				this.tel=tel;
				
			}

}
