package com.webengage.sdk.android;

import android.content.Context;
import java.lang.Thread;

class aq implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f5511a = null;

    /* renamed from: b  reason: collision with root package name */
    private Context f5512b = null;
    private f c = null;

    aq(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context, f fVar) {
        this.f5511a = uncaughtExceptionHandler;
        this.f5512b = context.getApplicationContext();
        this.c = fVar;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        Logger.e("WebEngage", "App has crashed\n".concat(String.valueOf(th)));
        f fVar = this.c;
        if (fVar != null) {
            fVar.a(true);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5511a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
