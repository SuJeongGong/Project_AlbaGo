package com.spring.ex.interceptor;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(RUNTIME)
@Target({ TYPE, METHOD })
public @interface Auth {//회원, 관리자만 접근 가능

	public enum Role {
		ADMIN, ENTERPRISE, INDIVIDUAL
	}

	// 이와 같이 작성하면 메서드 위에 @Auth(role=Role.ADMIN)과 같이 작성 가능
	public Role role() default Role.INDIVIDUAL;
	
}
