package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import c.e.a.b.d.b.b;
import c.e.a.b.d.b.c;
import c.e.a.b.d.d.r;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

@KeepName
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public static final a f13007a = new b(new String[0], null);

    /* renamed from: b  reason: collision with root package name */
    public final int f13008b;

    /* renamed from: c  reason: collision with root package name */
    public final String[] f13009c;

    /* renamed from: d  reason: collision with root package name */
    public Bundle f13010d;

    /* renamed from: e  reason: collision with root package name */
    public final CursorWindow[] f13011e;

    /* renamed from: f  reason: collision with root package name */
    public final int f13012f;

    /* renamed from: g  reason: collision with root package name */
    public final Bundle f13013g;

    /* renamed from: h  reason: collision with root package name */
    public int[] f13014h;

    /* renamed from: i  reason: collision with root package name */
    public int f13015i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f13016j = false;

    /* renamed from: k  reason: collision with root package name */
    public boolean f13017k = true;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String[] f13018a;

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<HashMap<String, Object>> f13019b;

        /* renamed from: c  reason: collision with root package name */
        public final String f13020c;

        /* renamed from: d  reason: collision with root package name */
        public final HashMap<Object, Integer> f13021d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f13022e;

        /* renamed from: f  reason: collision with root package name */
        public String f13023f;

        public a(String[] strArr, String str) {
            r.a(strArr);
            this.f13018a = strArr;
            this.f13019b = new ArrayList<>();
            this.f13020c = str;
            this.f13021d = new HashMap<>();
            this.f13022e = false;
            this.f13023f = null;
        }

        public /* synthetic */ a(String[] strArr, String str, b bVar) {
            this(strArr, null);
        }
    }

    public static class zaa extends RuntimeException {
    }

    public DataHolder(int i2, String[] strArr, CursorWindow[] cursorWindowArr, int i3, Bundle bundle) {
        this.f13008b = i2;
        this.f13009c = strArr;
        this.f13011e = cursorWindowArr;
        this.f13012f = i3;
        this.f13013g = bundle;
    }

    public final void close() {
        synchronized (this) {
            if (!this.f13016j) {
                this.f13016j = true;
                for (CursorWindow close : this.f13011e) {
                    close.close();
                }
            }
        }
    }

    public final void finalize() {
        try {
            if (this.f13017k && this.f13011e.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f13016j;
        }
        return z;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = c.e.a.b.d.d.a.a.a(parcel);
        c.e.a.b.d.d.a.a.a(parcel, 1, this.f13009c, false);
        c.e.a.b.d.d.a.a.a(parcel, 2, (T[]) this.f13011e, i2, false);
        c.e.a.b.d.d.a.a.a(parcel, 3, y());
        c.e.a.b.d.d.a.a.a(parcel, 4, x(), false);
        c.e.a.b.d.d.a.a.a(parcel, (int) AnswersRetryFilesSender.BACKOFF_MS, this.f13008b);
        c.e.a.b.d.d.a.a.a(parcel, a2);
        if ((i2 & 1) != 0) {
            close();
        }
    }

    public final Bundle x() {
        return this.f13013g;
    }

    public final int y() {
        return this.f13012f;
    }

    public final void z() {
        this.f13010d = new Bundle();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.f13009c;
            if (i3 >= strArr.length) {
                break;
            }
            this.f13010d.putInt(strArr[i3], i3);
            i3++;
        }
        this.f13014h = new int[this.f13011e.length];
        int i4 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f13011e;
            if (i2 < cursorWindowArr.length) {
                this.f13014h[i2] = i4;
                i4 += this.f13011e[i2].getNumRows() - (i4 - cursorWindowArr[i2].getStartPosition());
                i2++;
            } else {
                this.f13015i = i4;
                return;
            }
        }
    }
}
