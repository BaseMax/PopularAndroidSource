package org.eclipse.paho.android.service;

import java.util.Iterator;
import org.eclipse.paho.a.a.q;

interface c {

    public interface a {
        String getClientHandle();

        q getMessage();

        String getMessageId();

        String getTopic();
    }

    void clearArrivedMessages(String str);

    void close();

    boolean discardArrived(String str, String str2);

    Iterator<a> getAllArrivedMessages(String str);

    String storeArrived(String str, String str2, q qVar);
}
