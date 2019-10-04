package com.mapbox.android.telemetry;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private String f4970a;

    /* renamed from: b  reason: collision with root package name */
    private String f4971b = ak.obtainCurrentDate();
    private String c;
    private String d;
    private String e;
    private String f;
    private Integer g;
    private String h;
    private String i;

    public d(String str, String str2, String str3, String str4, String str5) {
        this.f4970a = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    public final void setStartTime(String str) {
        this.h = str;
    }

    public final void setEndTime(String str) {
        this.i = str;
    }

    public final void setSize(int i2) {
        this.g = Integer.valueOf(i2);
    }

    public final String getName() {
        return this.f4970a;
    }

    public final String getCreated() {
        return this.f4971b;
    }

    public final String getFileId() {
        return this.c;
    }

    public final String getFormat() {
        return this.d;
    }

    public final String getType() {
        return this.e;
    }

    public final String getSessionId() {
        return this.f;
    }

    public final Integer getSize() {
        return this.g;
    }

    public final String getStartTime() {
        return this.h;
    }

    public final String getEndTime() {
        return this.i;
    }
}
