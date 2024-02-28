package com.filter;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public class BasicFilter implements Filter {

    FilterConfig config;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config = filterConfig;
        String filterName = filterConfig.getFilterName();
        System.out.println("BasicFilter -> init() 호출 됨 :" + filterName);
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
        throws IOException, ServletException {
        String filterInitParam = config.getInitParameter("FILTER_INIT_PARAM");

        System.out.println("BasicFilter -> 초기화 매개변수 : " + filterInitParam );

        String method = ((HttpServletRequest)req).getMethod();
        System.out.println("BasicFilter - > 전송방식 : " + method);

        chain.doFilter(req,resp);
    }

    @Override
    public void destroy() {
        System.out.println("BasicFilter -> destory() 호출됨");
    }


}
