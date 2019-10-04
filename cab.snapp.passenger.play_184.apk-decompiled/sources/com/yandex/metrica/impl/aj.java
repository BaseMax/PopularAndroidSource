package com.yandex.metrica.impl;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.yandex.metrica.impl.ob.nl;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class aj implements ai {

    /* renamed from: a  reason: collision with root package name */
    private Executor f5682a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public ai f5683b;

    public aj(ai aiVar) {
        this(Executors.newSingleThreadExecutor(), aiVar);
    }

    public void a() {
        this.f5682a.execute(new nl() {
            public void a() {
                aj.this.f5683b.a();
            }
        });
    }

    public void a(final Intent intent, final int i) {
        this.f5682a.execute(new nl() {
            public void a() {
                aj.this.f5683b.a(intent, i);
            }
        });
    }

    public void a(final Intent intent, final int i, final int i2) {
        this.f5682a.execute(new nl() {
            public void a() {
                aj.this.f5683b.a(intent, i, i2);
            }
        });
    }

    public void a(final Intent intent) {
        this.f5682a.execute(new nl() {
            public void a() {
                aj.this.f5683b.a(intent);
            }
        });
    }

    public void b(final Intent intent) {
        this.f5682a.execute(new nl() {
            public void a() {
                aj.this.f5683b.b(intent);
            }
        });
    }

    public void c(final Intent intent) {
        this.f5682a.execute(new nl() {
            public void a() {
                aj.this.f5683b.c(intent);
            }
        });
    }

    public void b() {
        this.f5683b.b();
    }

    public void a(String str, int i, String str2, Bundle bundle) throws RemoteException {
        Executor executor = this.f5682a;
        final String str3 = str;
        final int i2 = i;
        final String str4 = str2;
        final Bundle bundle2 = bundle;
        AnonymousClass7 r1 = new nl() {
            public void a() throws RemoteException {
                aj.this.f5683b.a(str3, i2, str4, bundle2);
            }
        };
        executor.execute(r1);
    }

    public void a(final Bundle bundle) throws RemoteException {
        this.f5682a.execute(new nl() {
            public void a() throws Exception {
                aj.this.f5683b.a(bundle);
            }
        });
    }

    aj(Executor executor, ai aiVar) {
        this.f5682a = executor;
        this.f5683b = aiVar;
    }
}
