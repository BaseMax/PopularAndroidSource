package com.crashlytics.android.core;

import e.a.a.a.a.g.u;
import e.a.a.a.f;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

public class CrashlyticsUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    public final CrashListener crashListener;
    public final Thread.UncaughtExceptionHandler defaultHandler;
    public final boolean firebaseCrashlyticsClientFlag;
    public final AtomicBoolean isHandlingException = new AtomicBoolean(false);
    public final SettingsDataProvider settingsDataProvider;

    interface CrashListener {
        void onUncaughtException(SettingsDataProvider settingsDataProvider, Thread thread, Throwable th, boolean z);
    }

    interface SettingsDataProvider {
        u getSettingsData();
    }

    public CrashlyticsUncaughtExceptionHandler(CrashListener crashListener2, SettingsDataProvider settingsDataProvider2, boolean z, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.crashListener = crashListener2;
        this.settingsDataProvider = settingsDataProvider2;
        this.firebaseCrashlyticsClientFlag = z;
        this.defaultHandler = uncaughtExceptionHandler;
    }

    public boolean isHandlingException() {
        return this.isHandlingException.get();
    }

    public void uncaughtException(Thread thread, Throwable th) {
        this.isHandlingException.set(true);
        try {
            this.crashListener.onUncaughtException(this.settingsDataProvider, thread, th, this.firebaseCrashlyticsClientFlag);
        } catch (Exception e2) {
            f.e().b(CrashlyticsCore.TAG, "An error occurred in the uncaught exception handler", e2);
        } catch (Throwable th2) {
            f.e().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, th);
            this.isHandlingException.set(false);
            throw th2;
        }
        f.e().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
        this.defaultHandler.uncaughtException(thread, th);
        this.isHandlingException.set(false);
    }
}
