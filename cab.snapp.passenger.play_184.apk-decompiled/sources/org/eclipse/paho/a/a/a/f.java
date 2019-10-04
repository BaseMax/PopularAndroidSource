package org.eclipse.paho.a.a.a;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.o;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.v;

public class f {

    /* renamed from: a  reason: collision with root package name */
    static final String f8757a = f.class.getName();

    /* renamed from: b  reason: collision with root package name */
    b f8758b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8757a);
    Hashtable c;
    p d = null;
    private String e;

    public f(String str) {
        this.f8758b.setResourceName(str);
        this.c = new Hashtable();
        this.e = str;
        this.f8758b.fine(f8757a, "<Init>", "308");
    }

    public v getToken(u uVar) {
        return (v) this.c.get(uVar.getKey());
    }

    public v getToken(String str) {
        return (v) this.c.get(str);
    }

    public v removeToken(u uVar) {
        if (uVar != null) {
            return removeToken(uVar.getKey());
        }
        return null;
    }

    public v removeToken(String str) {
        this.f8758b.fine(f8757a, "removeToken", "306", new Object[]{str});
        if (str != null) {
            return (v) this.c.remove(str);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public final o a(org.eclipse.paho.a.a.a.a.o oVar) {
        o oVar2;
        synchronized (this.c) {
            String num = Integer.toString(oVar.getMessageId());
            if (this.c.containsKey(num)) {
                oVar2 = (o) this.c.get(num);
                this.f8758b.fine(f8757a, "restoreToken", "302", new Object[]{num, oVar, oVar2});
            } else {
                oVar2 = new o(this.e);
                oVar2.internalTok.setKey(num);
                this.c.put(num, oVar2);
                this.f8758b.fine(f8757a, "restoreToken", "303", new Object[]{num, oVar, oVar2});
            }
        }
        return oVar2;
    }

    /* access modifiers changed from: protected */
    public final void a(v vVar, u uVar) throws p {
        synchronized (this.c) {
            if (this.d == null) {
                String key = uVar.getKey();
                this.f8758b.fine(f8757a, "saveToken", "300", new Object[]{key, uVar});
                a(vVar, key);
            } else {
                throw this.d;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void a(v vVar, String str) {
        synchronized (this.c) {
            this.f8758b.fine(f8757a, "saveToken", "307", new Object[]{str, vVar.toString()});
            vVar.internalTok.setKey(str);
            this.c.put(str, vVar);
        }
    }

    public void open() {
        synchronized (this.c) {
            this.f8758b.fine(f8757a, "open", "310");
            this.d = null;
        }
    }

    public o[] getOutstandingDelTokens() {
        o[] oVarArr;
        synchronized (this.c) {
            this.f8758b.fine(f8757a, "getOutstandingDelTokens", "311");
            Vector vector = new Vector();
            Enumeration elements = this.c.elements();
            while (elements.hasMoreElements()) {
                v vVar = (v) elements.nextElement();
                if (vVar != null && (vVar instanceof o) && !vVar.internalTok.isNotified()) {
                    vector.addElement(vVar);
                }
            }
            oVarArr = (o[]) vector.toArray(new o[vector.size()]);
        }
        return oVarArr;
    }

    public Vector getOutstandingTokens() {
        Vector vector;
        synchronized (this.c) {
            this.f8758b.fine(f8757a, "getOutstandingTokens", "312");
            vector = new Vector();
            Enumeration elements = this.c.elements();
            while (elements.hasMoreElements()) {
                v vVar = (v) elements.nextElement();
                if (vVar != null) {
                    vector.addElement(vVar);
                }
            }
        }
        return vector;
    }

    public void clear() {
        this.f8758b.fine(f8757a, "clear", "305", new Object[]{Integer.valueOf(this.c.size())});
        synchronized (this.c) {
            this.c.clear();
        }
    }

    public int count() {
        int size;
        synchronized (this.c) {
            size = this.c.size();
        }
        return size;
    }

    public String toString() {
        String stringBuffer;
        String property = System.getProperty("line.separator", "\n");
        StringBuffer stringBuffer2 = new StringBuffer();
        synchronized (this.c) {
            Enumeration elements = this.c.elements();
            while (elements.hasMoreElements()) {
                stringBuffer2.append("{" + ((v) elements.nextElement()).internalTok + "}" + property);
            }
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }
}
