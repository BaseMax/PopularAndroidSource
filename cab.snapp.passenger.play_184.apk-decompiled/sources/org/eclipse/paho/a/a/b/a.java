package org.eclipse.paho.a.a.b;

import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import java.util.logging.MemoryHandler;

public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private Logger f8775a = null;

    /* renamed from: b  reason: collision with root package name */
    private ResourceBundle f8776b = null;
    private ResourceBundle c = null;
    private String d = null;
    private String e = null;
    private String f = null;

    public void initialise(ResourceBundle resourceBundle, String str, String str2) {
        this.c = this.f8776b;
        this.e = str2;
        this.f = str;
        this.f8775a = Logger.getLogger(this.f);
        this.f8776b = resourceBundle;
        this.c = resourceBundle;
        this.d = this.f8776b.getString("0");
    }

    public void setResourceName(String str) {
        this.e = str;
    }

    public boolean isLoggable(int i) {
        return this.f8775a.isLoggable(a(i));
    }

    public void severe(String str, String str2, String str3) {
        log(1, str, str2, str3, null, null);
    }

    public void severe(String str, String str2, String str3, Object[] objArr) {
        log(1, str, str2, str3, objArr, null);
    }

    public void severe(String str, String str2, String str3, Object[] objArr, Throwable th) {
        log(1, str, str2, str3, objArr, th);
    }

    public void warning(String str, String str2, String str3) {
        log(2, str, str2, str3, null, null);
    }

    public void warning(String str, String str2, String str3, Object[] objArr) {
        log(2, str, str2, str3, objArr, null);
    }

    public void warning(String str, String str2, String str3, Object[] objArr, Throwable th) {
        log(2, str, str2, str3, objArr, th);
    }

    public void info(String str, String str2, String str3) {
        log(3, str, str2, str3, null, null);
    }

    public void info(String str, String str2, String str3, Object[] objArr) {
        log(3, str, str2, str3, objArr, null);
    }

    public void info(String str, String str2, String str3, Object[] objArr, Throwable th) {
        log(3, str, str2, str3, objArr, th);
    }

    public void config(String str, String str2, String str3) {
        log(4, str, str2, str3, null, null);
    }

    public void config(String str, String str2, String str3, Object[] objArr) {
        log(4, str, str2, str3, objArr, null);
    }

    public void config(String str, String str2, String str3, Object[] objArr, Throwable th) {
        log(4, str, str2, str3, objArr, th);
    }

    public void log(int i, String str, String str2, String str3, Object[] objArr, Throwable th) {
        Level a2 = a(i);
        if (this.f8775a.isLoggable(a2)) {
            a(a2, str, str2, this.f8776b, str3, objArr, th);
        }
    }

    public void fine(String str, String str2, String str3) {
        trace(5, str, str2, str3, null, null);
    }

    public void fine(String str, String str2, String str3, Object[] objArr) {
        trace(5, str, str2, str3, objArr, null);
    }

    public void fine(String str, String str2, String str3, Object[] objArr, Throwable th) {
        trace(5, str, str2, str3, objArr, th);
    }

    public void finer(String str, String str2, String str3) {
        trace(6, str, str2, str3, null, null);
    }

    public void finer(String str, String str2, String str3, Object[] objArr) {
        trace(6, str, str2, str3, objArr, null);
    }

    public void finer(String str, String str2, String str3, Object[] objArr, Throwable th) {
        trace(6, str, str2, str3, objArr, th);
    }

    public void finest(String str, String str2, String str3) {
        trace(7, str, str2, str3, null, null);
    }

    public void finest(String str, String str2, String str3, Object[] objArr) {
        trace(7, str, str2, str3, objArr, null);
    }

    public void finest(String str, String str2, String str3, Object[] objArr, Throwable th) {
        trace(7, str, str2, str3, objArr, th);
    }

    public void trace(int i, String str, String str2, String str3, Object[] objArr, Throwable th) {
        Level a2 = a(i);
        if (this.f8775a.isLoggable(a2)) {
            a(a2, str, str2, this.c, str3, objArr, th);
        }
    }

    private static String a(ResourceBundle resourceBundle, String str) {
        try {
            return resourceBundle.getString(str);
        } catch (MissingResourceException unused) {
            return str;
        }
    }

    private void a(Level level, String str, String str2, ResourceBundle resourceBundle, String str3, Object[] objArr, Throwable th) {
        if (str3.indexOf("=====") == -1) {
            str3 = MessageFormat.format(a(resourceBundle, str3), objArr);
        }
        LogRecord logRecord = new LogRecord(level, String.valueOf(this.e) + ": " + str3);
        logRecord.setSourceClassName(str);
        logRecord.setSourceMethodName(str2);
        logRecord.setLoggerName(this.f);
        if (th != null) {
            logRecord.setThrown(th);
        }
        this.f8775a.log(logRecord);
    }

    private static Level a(int i) {
        switch (i) {
            case 1:
                return Level.SEVERE;
            case 2:
                return Level.WARNING;
            case 3:
                return Level.INFO;
            case 4:
                return Level.CONFIG;
            case 5:
                return Level.FINE;
            case 6:
                return Level.FINER;
            case 7:
                return Level.FINEST;
            default:
                return null;
        }
    }

    public String formatMessage(String str, Object[] objArr) {
        try {
            return this.f8776b.getString(str);
        } catch (MissingResourceException unused) {
            return str;
        }
    }

    public void dumpTrace() {
        for (Logger logger = this.f8775a; logger != null; logger = logger.getParent()) {
            Handler[] handlers = logger.getHandlers();
            for (int i = 0; i < handlers.length; i++) {
                if (handlers[i] instanceof MemoryHandler) {
                    synchronized (handlers[i]) {
                        ((MemoryHandler) handlers[i]).push();
                    }
                    return;
                }
            }
        }
    }
}
