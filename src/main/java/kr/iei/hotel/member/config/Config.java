package kr.iei.hotel.member.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import kr.iei.hotel.member.config.auth.PrincipalDetailsService;
import kr.iei.hotel.member.config.auth.PrincipalOAuth2UserService;

@Configuration
@EnableWebSecurity	// 시큐리티 활성화
@EnableGlobalMethodSecurity(securedEnabled = true,	// @Secured("ROLE_ADMIN") 활성화 -> 특정 메서드에 걸 수 있음 
							prePostEnabled = true)	// @preAuthorize("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')") 활성화 -> 두 개 이상 권한에 적용
													// @postAuthorize("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')") 활성화 -> 잘 안씀
public class Config extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private PrincipalDetailsService principalDetailsService;

	@Autowired
	private PrincipalOAuth2UserService principalOAuth2UserService;
//	private final CustomOAuth2UserService customOAuth2UserService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	auth.userDetailsService(principalDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
        	.csrf().disable()								// cors 비활성화 -> 몰라
//        	.cors().disable()								// csrf 비활성화 -> 몰라
//        	.formLogin().disable()							// 몰라
        	.headers().frameOptions().disable()				// 몰라
        	;
        http
        	.authorizeRequests()
        		.antMatchers("/path/**").authenticated()	// 경로 접근 권한 -> 로그인 된 경우
        		.antMatchers("/path/**").access("hasRole('ROLE_REGURAL')")	// 경로 접근 권한 -> 'ROLE_REGURAL'
        		.anyRequest().permitAll()					// 나머지 경로에 접근 권한 -> 모든 권한
        		.and()
        	.formLogin()
        		.loginPage("/login")						// 권한 없는 페이지에 접근할 때 이동할 경로 
        		.usernameParameter("memberEmail")
        		.loginProcessingUrl("/loginProc")			// '/loginProc'호출시 시큐리티가 진행 -> controller 불필요
        		.defaultSuccessUrl("/")						// 로그인 성공시 이동할 경로
        		.failureUrl("/loginFailure")				// 로그인 실패시 이동할 경로
        		.and()
        	.logout()
            	.clearAuthentication(true)					// default : true
            	.invalidateHttpSession(true)				// default : true
                .logoutSuccessUrl("/login")
        	;
        http
        	.oauth2Login()
        		.defaultSuccessUrl("/login/oAuth2")
        		.failureUrl("/login")
        		.loginPage("/login")
        		.userInfoEndpoint()
        		.userService(principalOAuth2UserService)	// 구글 로그인 후 토큰 & 프로필을 받아서 처리하는 함수
    		;
    }
    
}
