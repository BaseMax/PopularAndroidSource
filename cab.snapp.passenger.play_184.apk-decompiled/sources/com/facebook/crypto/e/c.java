package com.facebook.crypto.e;

import com.facebook.crypto.a.a;
import java.util.ArrayList;
import java.util.Iterator;

public final class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayList<String> f2468a = new ArrayList<String>() {
        {
            add("conceal");
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private boolean f2469b = true;
    private boolean c = false;
    private volatile UnsatisfiedLinkError d = null;

    public final synchronized void ensureCryptoLoaded() throws a {
        if (!a()) {
            throw new a(this.d);
        }
    }

    private synchronized boolean a() {
        if (!this.f2469b) {
            return this.c;
        }
        try {
            Iterator<String> it = f2468a.iterator();
            while (it.hasNext()) {
                System.loadLibrary(it.next());
            }
            this.c = true;
        } catch (UnsatisfiedLinkError e) {
            this.d = e;
            this.c = false;
        }
        this.f2469b = false;
        return this.c;
    }
}
