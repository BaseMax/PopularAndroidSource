package org.eclipse.paho.a.a.c;

import java.util.Enumeration;
import java.util.Hashtable;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.r;
import org.eclipse.paho.a.a.s;

public final class a implements m {

    /* renamed from: a  reason: collision with root package name */
    private Hashtable<String, r> f8779a;

    public final void close() throws s {
        Hashtable<String, r> hashtable = this.f8779a;
        if (hashtable != null) {
            hashtable.clear();
        }
    }

    public final Enumeration<String> keys() throws s {
        a();
        return this.f8779a.keys();
    }

    public final r get(String str) throws s {
        a();
        return this.f8779a.get(str);
    }

    public final void open(String str, String str2) throws s {
        this.f8779a = new Hashtable<>();
    }

    public final void put(String str, r rVar) throws s {
        a();
        this.f8779a.put(str, rVar);
    }

    public final void remove(String str) throws s {
        a();
        this.f8779a.remove(str);
    }

    public final void clear() throws s {
        a();
        this.f8779a.clear();
    }

    public final boolean containsKey(String str) throws s {
        a();
        return this.f8779a.containsKey(str);
    }

    private void a() throws s {
        if (this.f8779a == null) {
            throw new s();
        }
    }
}
