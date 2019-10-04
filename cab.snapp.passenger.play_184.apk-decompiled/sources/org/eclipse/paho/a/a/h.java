package org.eclipse.paho.a.a;

import org.eclipse.paho.a.a.a.a.u;

public interface h {
    c getActionCallback();

    d getClient();

    p getException();

    int[] getGrantedQos();

    int getMessageId();

    u getResponse();

    boolean getSessionPresent();

    String[] getTopics();

    Object getUserContext();

    boolean isComplete();

    void setActionCallback(c cVar);

    void setUserContext(Object obj);

    void waitForCompletion() throws p;

    void waitForCompletion(long j) throws p;
}
