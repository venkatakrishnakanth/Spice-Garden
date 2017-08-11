package com.bellinfo.groupproj.configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class Initialize implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {
		
		AnnotationConfigWebApplicationContext annotationCtx = new AnnotationConfigWebApplicationContext();
		annotationCtx.register(AppConfig.class);
		servletContext.addListener(new ContextLoaderListener(annotationCtx));
		
		Dynamic servlet = servletContext.addServlet("dipsatcher", new DispatcherServlet(annotationCtx));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(1);
	}

}
