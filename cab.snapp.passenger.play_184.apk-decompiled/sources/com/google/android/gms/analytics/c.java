package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.e;
import com.google.android.gms.internal.bo;
import java.lang.Thread;
import java.util.ArrayList;

public final class c implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    final Thread.UncaughtExceptionHandler f2571a;

    /* renamed from: b  reason: collision with root package name */
    private final h f2572b;
    private final Context c;
    private b d;
    private d e;

    public c(h hVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (hVar == null) {
            throw new NullPointerException("tracker cannot be null");
        } else if (context != null) {
            this.f2571a = uncaughtExceptionHandler;
            this.f2572b = hVar;
            this.d = new g(context, new ArrayList());
            this.c = context.getApplicationContext();
            String valueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
            bo.v(valueOf.length() != 0 ? "ExceptionReporter created, original handler is ".concat(valueOf) : new String("ExceptionReporter created, original handler is "));
        } else {
            throw new NullPointerException("context cannot be null");
        }
    }

    public final b getExceptionParser() {
        return this.d;
    }

    public final void setExceptionParser(b bVar) {
        this.d = bVar;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        String str;
        if (this.d != null) {
            str = this.d.getDescription(thread != null ? thread.getName() : null, th);
        } else {
            str = "UncaughtException";
        }
        String valueOf = String.valueOf(str);
        bo.v(valueOf.length() != 0 ? "Reporting uncaught exception: ".concat(valueOf) : new String("Reporting uncaught exception: "));
        this.f2572b.send(new e.b().setDescription(str).setFatal(true).build());
        if (this.e == null) {
            this.e = d.getInstance(this.c);
        }
        d dVar = this.e;
        dVar.dispatchLocalHits();
        dVar.f2581a.zzwx().zzwo();
        if (this.f2571a != null) {
            bo.v("Passing exception to the original handler");
            this.f2571a.uncaughtException(thread, th);
        }
    }
}
