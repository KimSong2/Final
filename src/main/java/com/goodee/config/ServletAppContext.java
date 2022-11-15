package com.goodee.config;

import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.goodee.interceptor.MainInterceptor1;
import com.goodee.interceptor.MypageInterceptor1;
import com.goodee.interceptor.ShopInterceptor1;

// Spring MVC프로젝트에 관련된 설정을 하는 클래스
@Configuration
// Controller 어노테이션이 세팅되어 있는 클래스를 등록하는 어노테이션
@EnableWebMvc
// 스캔할 패키지 지정
@ComponentScan("com.goodee")
// MyBatis에서 인터페이스 정보를 스캔하도록 어노테이션 설정
// - basePackages : 어디 패키지에서 정보를 읽어올 것인가.
// - annotationClass : 어떤 어노테이션을 넣었을 시 해당 클래스를 매퍼로 스캔할 것인가.
@MapperScan(basePackages = {"com.goodee.dao"}, 
annotationClass = org.apache.ibatis.annotations.Mapper.class)
// 사용할 프로퍼티 지정
@PropertySource("/META-INF/properties/db.properties") 
public class ServletAppContext implements WebMvcConfigurer{
	
	// DB Connection과 관련된 정보를 properties 에서 field로 가져오기
	@Value("${db.classname}")
	private String classname;
	
	@Value("${db.url}")
	private String url;
	
	@Value("${db.username}")
	private String username;
	
	@Value("${db.password}")
	private String password;
	
	// Controller의 메서드가 반환하는 jsp의 이름 앞뒤에 경로와 확장자를 붙여주도록 설정한다.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	// 정적 파일의 경로 세팅
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/final/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/upload/**").addResourceLocations("file:///C:/finalprojectimage/");
	}
	
	
	private final int MAX_SIZE = 1 * 1024 * 1024;
	@Bean
	public MultipartResolver multipartResolver() {
		
		
		
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		
		// 디폴트 인코딩 타입 설정
		multipartResolver.setDefaultEncoding("UTF-8");

		// 전체 올릴 수 있는 파일들의 총 용량 최대치
		multipartResolver.setMaxUploadSize(MAX_SIZE*2);
		
		// 파일 한 개당 올릴 수 있는 용량 최대치
		multipartResolver.setMaxUploadSize(MAX_SIZE);
		
		return multipartResolver;
	}
	
	// 데이터 베이스 접속 정보 관리
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(classname);
		source.setUrl(url);
		source.setUsername(username);
		source.setPassword(password);
		return source;
	}
	
	// 쿼리문과 접속 관리하는 객체
	@Bean("SqlSessionFactory")
	public SqlSessionFactory factory(BasicDataSource source, ApplicationContext context) throws Exception{
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		// DataSource 설정
		sqlSessionFactoryBean.setDataSource(source);
		// Mapper.xml 설정
		sqlSessionFactoryBean.setMapperLocations(context.getResources("/META-INF/mapper/*.xml"));
		// Bean Alias 어노테이션 설정 위치 읽기
		sqlSessionFactoryBean.setTypeAliasesPackage("com.goodee.vo");
		// properties 설정 정보 활용
		// sqlSessionFactoryBean.setConfigurationProperties(mybatisProperties());
		
		// 설정 관련 객체 및 정보 삽입
		org.apache.ibatis.session.Configuration configuration
					= new org.apache.ibatis.session.Configuration();
		configuration.setMapUnderscoreToCamelCase(true);
		configuration.setCacheEnabled(false);
		configuration.setUseGeneratedKeys(true);
		configuration.setDefaultExecutorType(ExecutorType.REUSE);
		
		sqlSessionFactoryBean.setConfiguration(configuration);
		
		return sqlSessionFactoryBean.getObject();
	}
	   @Bean
	   public JavaMailSenderImpl javaMailService(){
	      JavaMailSenderImpl javaMailSender = new JavaMailSenderImpl();
	      javaMailSender.setHost("smtp.naver.com");
	      javaMailSender.setPort(587);
	      javaMailSender.setProtocol("smtp");
	      javaMailSender.setUsername("kimsong2_0325@naver.com");
	      javaMailSender.setPassword("7PXEPZGG7FUT");
	      Properties mailProperties = new Properties();
	      mailProperties.put("mail.debug", "true");
	      mailProperties.put("mail.smtp.auth", "true");
	      mailProperties.put("mail.smtp.starttls.enable", "true");
	      mailProperties.put("mail.smtp.debug", "true");
	      mailProperties.put("mail.smtp.ssl.protocols", "TLSv1.2");
	      mailProperties.put("mail.transport.protocol", "smtp");
	      
	      javaMailSender.setJavaMailProperties(mailProperties);
	      return javaMailSender;
	   }
	   @Override
		public void addInterceptors(InterceptorRegistry registry) {
			
			// 없어도 동작하긴 하는데 가급적이면 현업에서는 넣어서 사용한다고 하심!
			WebMvcConfigurer.super.addInterceptors(registry);
			
			// 인터셉터가 등록되는 로직이 실행
			MainInterceptor1 inter1 = new MainInterceptor1();
			ShopInterceptor1 inter2 = new ShopInterceptor1();
			MypageInterceptor1 inter3 = new MypageInterceptor1();
			
			
			// 이 순서로 실행됨
			InterceptorRegistration reg1 = registry.addInterceptor(inter1);
			InterceptorRegistration reg2 = registry.addInterceptor(inter2);
			InterceptorRegistration reg3 = registry.addInterceptor(inter3);
			
			
			// 인터셉터를 어디에 걸지 타겟을 지정 - InterceptorRegistration.addPathPatterns("경로")
			// 인터셉터를 경로를 통해 지정할 수 있으며 다른 옵션은 선택할 수 없다.
			// addPathPatterns에 들어가는 경로는 사용자가 요청하는 요청 경로이다.
			reg1.addPathPatterns("/gomain2");
			reg2.addPathPatterns("/shop/pay/{id}");
			reg3.addPathPatterns("/wish");
			reg3.addPathPatterns("/mypage");
			reg3.addPathPatterns("/userinfo");
			reg3.addPathPatterns("/myhotelres");
			reg2.addPathPatterns("/goreserve/{hotelId}/{startdate}/{enddate}");
			
			
			// 인터셉터에 동일 경로를 바라보게 하고 다수의 인터셉터를 걸 경우 맨 위에 등록된 intercepter의 prehandle부터
			// 실행된다.
			// postHandle 과 afterCompletion은 등록했던 순서의 반대로 실행된다.
		}
}
