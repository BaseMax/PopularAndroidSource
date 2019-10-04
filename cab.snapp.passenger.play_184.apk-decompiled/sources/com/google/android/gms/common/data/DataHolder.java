package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.av;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class DataHolder extends zzbfm implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new c();
    private static final a k = new b(new String[0]);

    /* renamed from: a  reason: collision with root package name */
    int f2899a;

    /* renamed from: b  reason: collision with root package name */
    private int f2900b;
    private final String[] c;
    private Bundle d;
    private final CursorWindow[] e;
    private final int f;
    private final Bundle g;
    private int[] h;
    private boolean i;
    private boolean j;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final String[] f2901a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<HashMap<String, Object>> f2902b;
        private final String c;
        private final HashMap<Object, Integer> d;
        private boolean e;
        private String f;

        private a(String[] strArr) {
            this.f2901a = (String[]) ap.checkNotNull(strArr);
            this.f2902b = new ArrayList<>();
            this.c = null;
            this.d = new HashMap<>();
            this.e = false;
            this.f = null;
        }

        /* synthetic */ a(String[] strArr, byte b2) {
            this(strArr);
        }

        public a zza(ContentValues contentValues) {
            av.zzv(contentValues);
            HashMap hashMap = new HashMap(contentValues.size());
            for (Map.Entry next : contentValues.valueSet()) {
                hashMap.put((String) next.getKey(), next.getValue());
            }
            return zza((HashMap<String, Object>) hashMap);
        }

        /* JADX WARNING: Removed duplicated region for block: B:10:0x0031  */
        /* JADX WARNING: Removed duplicated region for block: B:11:0x0037  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.google.android.gms.common.data.DataHolder.a zza(java.util.HashMap<java.lang.String, java.lang.Object> r5) {
            /*
                r4 = this;
                com.google.android.gms.common.internal.av.zzv(r5)
                java.lang.String r0 = r4.c
                r1 = -1
                if (r0 != 0) goto L_0x000a
            L_0x0008:
                r0 = -1
                goto L_0x002f
            L_0x000a:
                java.lang.Object r0 = r5.get(r0)
                if (r0 != 0) goto L_0x0011
                goto L_0x0008
            L_0x0011:
                java.util.HashMap<java.lang.Object, java.lang.Integer> r2 = r4.d
                java.lang.Object r2 = r2.get(r0)
                java.lang.Integer r2 = (java.lang.Integer) r2
                if (r2 != 0) goto L_0x002b
                java.util.HashMap<java.lang.Object, java.lang.Integer> r2 = r4.d
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r3 = r4.f2902b
                int r3 = r3.size()
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                r2.put(r0, r3)
                goto L_0x0008
            L_0x002b:
                int r0 = r2.intValue()
            L_0x002f:
                if (r0 != r1) goto L_0x0037
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r4.f2902b
                r0.add(r5)
                goto L_0x0041
            L_0x0037:
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r1 = r4.f2902b
                r1.remove(r0)
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r1 = r4.f2902b
                r1.add(r0, r5)
            L_0x0041:
                r5 = 0
                r4.e = r5
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.a.zza(java.util.HashMap):com.google.android.gms.common.data.DataHolder$a");
        }

        public final DataHolder zzcb(int i) {
            return new DataHolder(this);
        }
    }

    public static class b extends RuntimeException {
        public b(String str) {
            super(str);
        }
    }

    DataHolder(int i2, String[] strArr, CursorWindow[] cursorWindowArr, int i3, Bundle bundle) {
        this.i = false;
        this.j = true;
        this.f2900b = i2;
        this.c = strArr;
        this.e = cursorWindowArr;
        this.f = i3;
        this.g = bundle;
    }

    /* synthetic */ DataHolder(a aVar) {
        this(aVar, 0);
    }

    private DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i2) {
        this.i = false;
        this.j = true;
        this.f2900b = 1;
        this.c = (String[]) ap.checkNotNull(strArr);
        this.e = (CursorWindow[]) ap.checkNotNull(cursorWindowArr);
        this.f = i2;
        this.g = null;
        zzajz();
    }

    private final void a(String str, int i2) {
        Bundle bundle = this.d;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i2 < 0 || i2 >= this.f2899a) {
            throw new CursorIndexOutOfBoundsException(i2, this.f2899a);
        }
    }

    public static a zzb(String[] strArr) {
        return new a(strArr, (byte) 0);
    }

    public static DataHolder zzca(int i2) {
        return new DataHolder(k, i2);
    }

    public final void close() {
        synchronized (this) {
            if (!this.i) {
                this.i = true;
                for (CursorWindow close : this.e) {
                    close.close();
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void finalize() throws Throwable {
        try {
            if (this.j && this.e.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
            }
        } finally {
            super.finalize();
        }
    }

    public final int getCount() {
        return this.f2899a;
    }

    public final int getStatusCode() {
        return this.f;
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.i;
        }
        return z;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.c, false);
        el.zza(parcel, 2, (T[]) this.e, i2, false);
        el.zzc(parcel, 3, this.f);
        el.zza(parcel, 4, this.g, false);
        el.zzc(parcel, 1000, this.f2900b);
        el.zzai(parcel, zze);
        if ((i2 & 1) != 0) {
            close();
        }
    }

    public final void zza(String str, int i2, int i3, CharArrayBuffer charArrayBuffer) {
        a(str, i2);
        this.e[i3].copyStringToBuffer(i2, this.d.getInt(str), charArrayBuffer);
    }

    public final Bundle zzagk() {
        return this.g;
    }

    public final void zzajz() {
        this.d = new Bundle();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.c;
            if (i3 >= strArr.length) {
                break;
            }
            this.d.putInt(strArr[i3], i3);
            i3++;
        }
        this.h = new int[this.e.length];
        int i4 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.e;
            if (i2 < cursorWindowArr.length) {
                this.h[i2] = i4;
                i4 += this.e[i2].getNumRows() - (i4 - cursorWindowArr[i2].getStartPosition());
                i2++;
            } else {
                this.f2899a = i4;
                return;
            }
        }
    }

    public final long zzb(String str, int i2, int i3) {
        a(str, i2);
        return this.e[i3].getLong(i2, this.d.getInt(str));
    }

    public final int zzbz(int i2) {
        int i3 = 0;
        ap.checkState(i2 >= 0 && i2 < this.f2899a);
        while (true) {
            int[] iArr = this.h;
            if (i3 >= iArr.length) {
                break;
            } else if (i2 < iArr[i3]) {
                i3--;
                break;
            } else {
                i3++;
            }
        }
        return i3 == this.h.length ? i3 - 1 : i3;
    }

    public final int zzc(String str, int i2, int i3) {
        a(str, i2);
        return this.e[i3].getInt(i2, this.d.getInt(str));
    }

    public final String zzd(String str, int i2, int i3) {
        a(str, i2);
        return this.e[i3].getString(i2, this.d.getInt(str));
    }

    public final boolean zze(String str, int i2, int i3) {
        a(str, i2);
        return this.e[i3].getLong(i2, this.d.getInt(str)) == 1;
    }

    public final float zzf(String str, int i2, int i3) {
        a(str, i2);
        return this.e[i3].getFloat(i2, this.d.getInt(str));
    }

    public final byte[] zzg(String str, int i2, int i3) {
        a(str, i2);
        return this.e[i3].getBlob(i2, this.d.getInt(str));
    }

    public final boolean zzga(String str) {
        return this.d.containsKey(str);
    }

    public final boolean zzh(String str, int i2, int i3) {
        a(str, i2);
        return this.e[i3].isNull(i2, this.d.getInt(str));
    }

    private DataHolder(a aVar, int i2) {
        this(aVar.f2901a, a(aVar), i2);
    }

    private static CursorWindow[] a(a aVar) {
        long j2;
        if (aVar.f2901a.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList<HashMap<String, Object>> arrayList = aVar.f2902b;
        int size = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(aVar.f2901a.length);
        CursorWindow cursorWindow2 = cursorWindow;
        int i2 = 0;
        boolean z = false;
        while (i2 < size) {
            try {
                if (!cursorWindow2.allocRow()) {
                    StringBuilder sb = new StringBuilder(72);
                    sb.append("Allocating additional cursor window for large data set (row ");
                    sb.append(i2);
                    sb.append(")");
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i2);
                    cursorWindow2.setNumColumns(aVar.f2901a.length);
                    arrayList2.add(cursorWindow2);
                    if (!cursorWindow2.allocRow()) {
                        arrayList2.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = arrayList.get(i2);
                boolean z2 = true;
                for (int i3 = 0; i3 < aVar.f2901a.length && z2; i3++) {
                    String str = aVar.f2901a[i3];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z2 = cursorWindow2.putNull(i2, i3);
                    } else if (obj instanceof String) {
                        z2 = cursorWindow2.putString((String) obj, i2, i3);
                    } else {
                        if (obj instanceof Long) {
                            j2 = ((Long) obj).longValue();
                        } else if (obj instanceof Integer) {
                            z2 = cursorWindow2.putLong((long) ((Integer) obj).intValue(), i2, i3);
                        } else if (obj instanceof Boolean) {
                            j2 = ((Boolean) obj).booleanValue() ? 1 : 0;
                        } else if (obj instanceof byte[]) {
                            z2 = cursorWindow2.putBlob((byte[]) obj, i2, i3);
                        } else if (obj instanceof Double) {
                            z2 = cursorWindow2.putDouble(((Double) obj).doubleValue(), i2, i3);
                        } else if (obj instanceof Float) {
                            z2 = cursorWindow2.putDouble((double) ((Float) obj).floatValue(), i2, i3);
                        } else {
                            String valueOf = String.valueOf(obj);
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length());
                            sb2.append("Unsupported object for column ");
                            sb2.append(str);
                            sb2.append(": ");
                            sb2.append(valueOf);
                            throw new IllegalArgumentException(sb2.toString());
                        }
                        z2 = cursorWindow2.putLong(j2, i2, i3);
                    }
                }
                if (z2) {
                    z = false;
                } else if (!z) {
                    StringBuilder sb3 = new StringBuilder(74);
                    sb3.append("Couldn't populate window data for row ");
                    sb3.append(i2);
                    sb3.append(" - allocating new window.");
                    cursorWindow2.freeLastRow();
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i2);
                    cursorWindow2.setNumColumns(aVar.f2901a.length);
                    arrayList2.add(cursorWindow2);
                    i2--;
                    z = true;
                } else {
                    throw new b("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                }
                i2++;
            } catch (RuntimeException e2) {
                int size2 = arrayList2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    ((CursorWindow) arrayList2.get(i4)).close();
                }
                throw e2;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }
}
