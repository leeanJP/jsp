package com.listener;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;

@WebListener
public class SessionAttrListener implements HttpSessionAttributeListener {
    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println("[리스너] 세션 속성 추가 : " + event.getName()
        + "=" + event.getValue());
    }
    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        System.out.println("[리스너] 세션 속성 제거 : " + event.getName()
                + "=" + event.getValue());
    }
    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println("[리스너] 세션 속성 변경 : " + event.getName()
                + "=" + event.getValue());
    }

}
