package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.metadata.Metadata;

public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: a  reason: collision with root package name */
    public final String f12632a;

    public Id3Frame(String str) {
        this.f12632a = str;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f12632a;
    }
}
