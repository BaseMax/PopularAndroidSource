package com.yandex.metrica.impl.ob;

import android.net.LocalServerSocket;
import java.io.IOException;

public class nf {

    /* renamed from: a  reason: collision with root package name */
    private String f6448a;

    /* renamed from: b  reason: collision with root package name */
    private LocalServerSocket f6449b;
    private lj c;

    public static class a extends Exception {
        public a() {
            super("Couldn't acquire lock");
        }
    }

    public nf(String str) {
        this(str, new lh(12));
    }

    public boolean a() {
        try {
            this.f6449b = new LocalServerSocket(this.f6448a);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public void b() {
        LocalServerSocket localServerSocket = this.f6449b;
        if (localServerSocket != null) {
            try {
                localServerSocket.close();
                this.f6449b = null;
            } catch (IOException unused) {
            }
        }
    }

    public void c() throws a {
        a(null);
    }

    public void a(lj ljVar) throws a {
        if (ljVar == null) {
            ljVar = this.c;
        }
        while (!a()) {
            ljVar.a();
            ljVar.c();
            if (!ljVar.b()) {
                throw new a();
            }
        }
    }

    nf(String str, lj ljVar) {
        this.f6448a = str;
        String.format("[LocalSocketLock:%s]", new Object[]{str});
        this.c = ljVar;
    }
}
