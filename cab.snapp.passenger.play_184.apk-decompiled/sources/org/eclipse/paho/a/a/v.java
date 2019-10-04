package org.eclipse.paho.a.a;

import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.a.q;

public class v implements h {
    public q internalTok = null;

    public v() {
    }

    public v(String str) {
        this.internalTok = new q(str);
    }

    public p getException() {
        return this.internalTok.getException();
    }

    public boolean isComplete() {
        return this.internalTok.isComplete();
    }

    public void setActionCallback(c cVar) {
        this.internalTok.setActionCallback(cVar);
    }

    public c getActionCallback() {
        return this.internalTok.getActionCallback();
    }

    public void waitForCompletion() throws p {
        this.internalTok.waitForCompletion(-1);
    }

    public void waitForCompletion(long j) throws p {
        this.internalTok.waitForCompletion(j);
    }

    public d getClient() {
        return this.internalTok.getClient();
    }

    public String[] getTopics() {
        return this.internalTok.getTopics();
    }

    public Object getUserContext() {
        return this.internalTok.getUserContext();
    }

    public void setUserContext(Object obj) {
        this.internalTok.setUserContext(obj);
    }

    public int getMessageId() {
        return this.internalTok.getMessageID();
    }

    public int[] getGrantedQos() {
        return this.internalTok.getGrantedQos();
    }

    public boolean getSessionPresent() {
        return this.internalTok.getSessionPresent();
    }

    public u getResponse() {
        return this.internalTok.getResponse();
    }
}
