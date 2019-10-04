package com.google.zxing.pdf417;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private int f4387a;

    /* renamed from: b  reason: collision with root package name */
    private String f4388b;
    private boolean c;
    private int d = -1;
    private String e;
    private String f;
    private String g;
    private long h = -1;
    private long i = -1;
    private int j = -1;
    private int[] k;

    public final int getSegmentIndex() {
        return this.f4387a;
    }

    public final void setSegmentIndex(int i2) {
        this.f4387a = i2;
    }

    public final String getFileId() {
        return this.f4388b;
    }

    public final void setFileId(String str) {
        this.f4388b = str;
    }

    @Deprecated
    public final int[] getOptionalData() {
        return this.k;
    }

    @Deprecated
    public final void setOptionalData(int[] iArr) {
        this.k = iArr;
    }

    public final boolean isLastSegment() {
        return this.c;
    }

    public final void setLastSegment(boolean z) {
        this.c = z;
    }

    public final int getSegmentCount() {
        return this.d;
    }

    public final void setSegmentCount(int i2) {
        this.d = i2;
    }

    public final String getSender() {
        return this.e;
    }

    public final void setSender(String str) {
        this.e = str;
    }

    public final String getAddressee() {
        return this.f;
    }

    public final void setAddressee(String str) {
        this.f = str;
    }

    public final String getFileName() {
        return this.g;
    }

    public final void setFileName(String str) {
        this.g = str;
    }

    public final long getFileSize() {
        return this.h;
    }

    public final void setFileSize(long j2) {
        this.h = j2;
    }

    public final int getChecksum() {
        return this.j;
    }

    public final void setChecksum(int i2) {
        this.j = i2;
    }

    public final long getTimestamp() {
        return this.i;
    }

    public final void setTimestamp(long j2) {
        this.i = j2;
    }
}
