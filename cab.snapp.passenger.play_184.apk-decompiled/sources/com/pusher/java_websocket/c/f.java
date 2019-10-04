package com.pusher.java_websocket.c;

import java.util.Iterator;

public interface f {
    byte[] getContent();

    String getFieldValue(String str);

    boolean hasFieldValue(String str);

    Iterator<String> iterateHttpFields();
}
