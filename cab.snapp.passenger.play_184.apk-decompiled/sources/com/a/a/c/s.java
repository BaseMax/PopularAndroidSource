package com.a.a.c;

import android.content.Context;
import io.fabric.sdk.android.services.common.i;
import io.fabric.sdk.android.services.settings.o;

final class s {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1819a;

    /* renamed from: b  reason: collision with root package name */
    private final o f1820b;

    public s(Context context, o oVar) {
        this.f1819a = context;
        this.f1820b = oVar;
    }

    public final String getTitle() {
        return a("com.crashlytics.CrashSubmissionPromptTitle", this.f1820b.title);
    }

    public final String getMessage() {
        return a("com.crashlytics.CrashSubmissionPromptMessage", this.f1820b.message);
    }

    public final String getSendButtonTitle() {
        return a("com.crashlytics.CrashSubmissionSendTitle", this.f1820b.sendButtonTitle);
    }

    public final String getAlwaysSendButtonTitle() {
        return a("com.crashlytics.CrashSubmissionAlwaysSendTitle", this.f1820b.alwaysSendButtonTitle);
    }

    public final String getCancelButtonTitle() {
        return a("com.crashlytics.CrashSubmissionCancelTitle", this.f1820b.cancelButtonTitle);
    }

    private String a(String str, String str2) {
        return b(i.getStringsFileValue(this.f1819a, str), str2);
    }

    private static String b(String str, String str2) {
        return a(str) ? str2 : str;
    }

    private static boolean a(String str) {
        return str == null || str.length() == 0;
    }
}
