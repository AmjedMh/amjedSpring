package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.dao.CompteRepository;
import com.example.entities.Compte;

@EnableGlobalMethodSecurity(prePostEnabled = true ,securedEnabled = true, 
jsr250Enabled = true)
@EnableWebSecurity
@EnableJpaRepositories(basePackageClasses = CompteRepository.class)
@ComponentScan("com.example")
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private javax.sql.DataSource dataSource;
    @Autowired
    BCryptPasswordEncoder passwordEncoder;
    @Bean
    public BCryptPasswordEncoder encoder() {
    	return new BCryptPasswordEncoder();
    }
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

   
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //auth.userDetailsService(userDetailsService)
        //.passwordEncoder(getPasswordEncoder());
    	auth.jdbcAuthentication().dataSource(dataSource).usersByUsernameQuery("select email as principal ,password as credentials,active,type from compte where email=?").
    	authoritiesByUsernameQuery("select email as principal, type as role from compte  where email=?")
    	.rolePrefix("ROLE_");
    }

	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();
        
       // http.authorizeRequests().antMatchers("/index","/inscription","/login","/assets/**","/css/**","/js/**","/vendor/**","/fonts/**","/images/**").permitAll();
        http.exceptionHandling().accessDeniedPage("/access-denied");
       
        //http.formLogin().loginPage("/login").permitAll()
        // .defaultSuccessUrl("/index");
      
        // http.authorizeRequests().antMatchers("/logoutadmin","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/controledemande","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/controleoffres","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/accueiladmin","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/loginadmin","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/controlecompte","/admincss/**","/cssfolder/**").permitAll();
        //  http.authorizeRequests().antMatchers("/controlerecriteur","/admincss/**","/cssfolder/**").permitAll();
      // http.authorizeRequests().antMatchers("/deleteCondidat","/admincss/**","/cssfolder/**").permitAll();
        //  http.authorizeRequests().antMatchers("/deleteexperienc","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/deleteCompetence","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/deleteFormation","/admincss/**","/cssfolder/**").permitAll();
        // http.authorizeRequests().antMatchers("/deleteDemande","/admincss/**","/cssfolder/**").permitAll();
        //  http.authorizeRequests().antMatchers("/deleteRecriteur","/admincss/**","/cssfolder/**").permitAll();
        //  http.authorizeRequests().antMatchers("/deleteoffre","/admincss/**","/cssfolder/**").permitAll();
      
        //http.authorizeRequests().antMatchers("/post-job", "/RecruteurAccount").hasRole("R").anyRequest().fullyAuthenticated();
        //http.authorizeRequests().antMatchers("/contact","/manage-resumes","/").hasRole("/c").anyRequest().fullyAuthenticated();
}
   
}
