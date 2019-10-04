package com.a.a.c;

final class ak {
    public final ak cause;
    public final String className;
    public final String localizedMessage;
    public final StackTraceElement[] stacktrace;

    public ak(Throwable th, aj ajVar) {
        this.localizedMessage = th.getLocalizedMessage();
        this.className = th.getClass().getName();
        this.stacktrace = ajVar.getTrimmedStackTrace(th.getStackTrace());
        Throwable cause2 = th.getCause();
        this.cause = cause2 != null ? new ak(cause2, ajVar) : null;
    }
}
