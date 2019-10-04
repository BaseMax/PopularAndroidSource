package com.webengage.sdk.android.utils;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

class d {
    static int d = 24;

    /* renamed from: a  reason: collision with root package name */
    JsonReader f5594a = null;

    /* renamed from: b  reason: collision with root package name */
    Object f5595b = null;
    boolean c = false;

    /* renamed from: com.webengage.sdk.android.utils.d$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5596a = new int[JsonToken.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(20:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|20) */
        /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x004b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0056 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0062 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                android.util.JsonToken[] r0 = android.util.JsonToken.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5596a = r0
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x0014 }
                android.util.JsonToken r1 = android.util.JsonToken.BEGIN_OBJECT     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x001f }
                android.util.JsonToken r1 = android.util.JsonToken.BEGIN_ARRAY     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x002a }
                android.util.JsonToken r1 = android.util.JsonToken.END_ARRAY     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x0035 }
                android.util.JsonToken r1 = android.util.JsonToken.END_OBJECT     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x0040 }
                android.util.JsonToken r1 = android.util.JsonToken.NAME     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x004b }
                android.util.JsonToken r1 = android.util.JsonToken.STRING     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x0056 }
                android.util.JsonToken r1 = android.util.JsonToken.NUMBER     // Catch:{ NoSuchFieldError -> 0x0056 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0056 }
                r2 = 7
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0056 }
            L_0x0056:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x0062 }
                android.util.JsonToken r1 = android.util.JsonToken.NULL     // Catch:{ NoSuchFieldError -> 0x0062 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0062 }
                r2 = 8
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0062 }
            L_0x0062:
                int[] r0 = f5596a     // Catch:{ NoSuchFieldError -> 0x006e }
                android.util.JsonToken r1 = android.util.JsonToken.BOOLEAN     // Catch:{ NoSuchFieldError -> 0x006e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x006e }
                r2 = 9
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x006e }
            L_0x006e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.d.AnonymousClass1.<clinit>():void");
        }
    }

    d(InputStream inputStream, boolean z) {
        this.f5594a = new JsonReader(new InputStreamReader(inputStream));
        this.c = z;
        this.f5595b = c();
        this.f5594a.close();
    }

    private Object a(String str) {
        if (str.startsWith("~t")) {
            try {
                return DataType.convert(str, DataType.DATE, true);
            } catch (Exception unused) {
                return null;
            }
        } else {
            if (str.startsWith("~") && str.length() > 1) {
                str = str.substring(1);
            }
            return str;
        }
    }

    private Object b(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        Object obj = str;
        if (length == d) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                obj = simpleDateFormat.parse(str);
            } catch (Exception unused) {
                obj = str;
            }
        }
        return obj;
    }

    private Object c() {
        switch (AnonymousClass1.f5596a[this.f5594a.peek().ordinal()]) {
            case 1:
                this.f5594a.beginObject();
                HashMap hashMap = new HashMap();
                while (this.f5594a.hasNext()) {
                    hashMap.put((String) c(), c());
                }
                c();
                return hashMap;
            case 2:
                this.f5594a.beginArray();
                ArrayList arrayList = new ArrayList();
                while (this.f5594a.hasNext()) {
                    arrayList.add(c());
                }
                c();
                return arrayList;
            case 3:
                this.f5594a.endArray();
                break;
            case 4:
                this.f5594a.endObject();
                break;
            case 5:
                String nextName = this.f5594a.nextName();
                return this.c ? a(nextName) : b(nextName);
            case 6:
                String nextString = this.f5594a.nextString();
                return this.c ? a(nextString) : b(nextString);
            case 7:
                String nextString2 = this.f5594a.nextString();
                try {
                    return Long.valueOf(Long.parseLong(nextString2));
                } catch (NumberFormatException unused) {
                    return Double.valueOf(Double.parseDouble(nextString2));
                }
            case 8:
                this.f5594a.nextNull();
                return null;
            case 9:
                return Boolean.valueOf(this.f5594a.nextBoolean());
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public Map<String, Object> a() {
        Object obj = this.f5595b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public List<Object> b() {
        Object obj = this.f5595b;
        if (obj instanceof List) {
            return (List) obj;
        }
        return null;
    }
}
