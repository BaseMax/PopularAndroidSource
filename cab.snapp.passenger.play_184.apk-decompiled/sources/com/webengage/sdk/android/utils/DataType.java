package com.webengage.sdk.android.utils;

import androidx.appcompat.widget.ActivityChooserView;
import com.webengage.sdk.android.Logger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.a.c;

public enum DataType {
    STRING,
    INTEGER,
    LONG,
    DOUBLE,
    BOOLEAN,
    LIST,
    MAP,
    DATE,
    NUMBER,
    UNKNOWN;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f5564a;

        /* renamed from: b  reason: collision with root package name */
        private Object f5565b;
        private List<String> c;
        private String d;

        a(String str, Object obj) {
            this.f5564a = null;
            this.f5565b = null;
            this.c = null;
            this.d = null;
            this.f5564a = str;
            this.f5565b = obj;
            this.c = new ArrayList(2);
            this.d = null;
        }

        public a a(Object obj, String str) {
            this.f5565b = obj;
            this.d = str;
            return this;
        }

        public a a(Object obj, String str, String str2) {
            this.f5565b = obj;
            this.c.add(0, str);
            this.d = str2;
            return this;
        }

        public String a() {
            return this.f5564a;
        }

        public void a(String str) {
            this.c.remove(str);
        }

        public Object b() {
            return this.f5565b;
        }

        public void b(String str) {
            this.d = str;
        }

        public String c() {
            if (this.c.size() == 0) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            for (String next : this.c) {
                if (sb.length() != 0) {
                    sb.append(" in key ");
                }
                sb.append("'");
                sb.append(next);
                sb.append("'");
            }
            return sb.toString();
        }

        public String d() {
            return this.d;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:69:0x00b0 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.webengage.sdk.android.utils.DataType.a a(com.webengage.sdk.android.utils.DataType.a r16, int r17, boolean r18, int r19) {
        /*
            r0 = r16
            r1 = r17
            r2 = r18
            java.lang.Object r3 = r16.b()
            com.webengage.sdk.android.utils.DataType r3 = detect(r3)
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r3 = r3.ordinal()
            r3 = r4[r3]
            r4 = 3
            java.lang.String r5 = " in event '"
            java.lang.String r6 = "\n"
            r7 = 1000(0x3e8, float:1.401E-42)
            java.lang.String r8 = "'\n"
            java.lang.String r9 = "Invalid value for key "
            java.lang.String r10 = "WebEngage"
            r11 = 0
            switch(r3) {
                case 1: goto L_0x0154;
                case 2: goto L_0x00b8;
                case 3: goto L_0x0041;
                case 4: goto L_0x002d;
                case 5: goto L_0x0027;
                case 6: goto L_0x0169;
                case 7: goto L_0x0169;
                case 8: goto L_0x0169;
                case 9: goto L_0x0169;
                case 10: goto L_0x0169;
                default: goto L_0x0027;
            }
        L_0x0027:
            java.lang.Object r2 = r16.b()
            goto L_0x016d
        L_0x002d:
            java.util.Date r1 = new java.util.Date
            java.lang.Object r2 = r16.b()
            java.util.Date r2 = (java.util.Date) r2
            long r2 = r2.getTime()
            r1.<init>(r2)
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r1, r11)
            return r0
        L_0x0041:
            java.lang.Object r3 = r16.b()
            java.util.List r3 = (java.util.List) r3
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.Iterator r3 = r3.iterator()
        L_0x0050:
            boolean r13 = r3.hasNext()
            if (r13 == 0) goto L_0x00b3
            java.lang.Object r13 = r3.next()
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r13, r11)
            com.webengage.sdk.android.utils.DataType$a r0 = a((com.webengage.sdk.android.utils.DataType.a) r0, (int) r1, (boolean) r2, (int) r7)
            java.lang.String r13 = r0.d()
            if (r13 == 0) goto L_0x00a9
            java.lang.String r14 = r0.c()
            java.lang.String r15 = r0.a()
            if (r15 == 0) goto L_0x008c
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            if (r14 == 0) goto L_0x0080
            r7.<init>(r9)
            r7.append(r14)
            r7.append(r5)
            goto L_0x0085
        L_0x0080:
            java.lang.String r14 = "Invalid attribute in event '"
            r7.<init>(r14)
        L_0x0085:
            r7.append(r15)
            r7.append(r8)
            goto L_0x0099
        L_0x008c:
            if (r14 == 0) goto L_0x00a4
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r9)
            r7.append(r14)
            r7.append(r6)
        L_0x0099:
            r7.append(r13)
            java.lang.String r7 = r7.toString()
            com.webengage.sdk.android.Logger.e(r10, r7)
            goto L_0x00a7
        L_0x00a4:
            com.webengage.sdk.android.Logger.e(r10, r13)
        L_0x00a7:
            if (r1 == r4) goto L_0x00b0
        L_0x00a9:
            java.lang.Object r7 = r0.b()
            r12.add(r7)
        L_0x00b0:
            r7 = 1000(0x3e8, float:1.401E-42)
            goto L_0x0050
        L_0x00b3:
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r12, r11)
            return r0
        L_0x00b8:
            java.lang.Object r3 = r16.b()
            java.util.Map r3 = (java.util.Map) r3
            java.util.HashMap r7 = new java.util.HashMap
            r7.<init>()
            java.util.Set r3 = r3.entrySet()
            java.util.Iterator r3 = r3.iterator()
        L_0x00cb:
            boolean r12 = r3.hasNext()
            if (r12 == 0) goto L_0x014f
            java.lang.Object r12 = r3.next()
            java.util.Map$Entry r12 = (java.util.Map.Entry) r12
            java.lang.Object r13 = r12.getKey()
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r13, r11)
            r13 = 50
            com.webengage.sdk.android.utils.DataType$a r0 = a((com.webengage.sdk.android.utils.DataType.a) r0, (int) r1, (boolean) r2, (int) r13)
            java.lang.Object r13 = r0.b()
            java.lang.String r13 = java.lang.String.valueOf(r13)
            java.lang.Object r12 = r12.getValue()
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r12, r13, r11)
            r12 = 1000(0x3e8, float:1.401E-42)
            com.webengage.sdk.android.utils.DataType$a r0 = a((com.webengage.sdk.android.utils.DataType.a) r0, (int) r1, (boolean) r2, (int) r12)
            java.lang.String r14 = r0.d()
            if (r14 == 0) goto L_0x0143
            java.lang.String r15 = r0.a()
            if (r15 == 0) goto L_0x0128
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>(r9)
            java.lang.String r12 = r0.c()
            r15.append(r12)
            r15.append(r5)
            java.lang.String r12 = r0.a()
            r15.append(r12)
            r15.append(r8)
            r15.append(r14)
            java.lang.String r12 = r15.toString()
            goto L_0x013e
        L_0x0128:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>(r9)
            java.lang.String r15 = r0.c()
            r12.append(r15)
            r12.append(r6)
            r12.append(r14)
            java.lang.String r12 = r12.toString()
        L_0x013e:
            com.webengage.sdk.android.Logger.e(r10, r12)
            if (r1 == r4) goto L_0x014a
        L_0x0143:
            java.lang.Object r12 = r0.b()
            r7.put(r13, r12)
        L_0x014a:
            r0.a(r13)
            goto L_0x00cb
        L_0x014f:
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r7, r11)
            return r0
        L_0x0154:
            if (r2 == 0) goto L_0x0169
            java.lang.Object r1 = r16.b()
            java.lang.String r1 = r1.toString()
            r2 = r19
            java.lang.String r1 = com.webengage.sdk.android.utils.k.a((java.lang.String) r1, (int) r2)
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r1, r11)
            return r0
        L_0x0169:
            r0.b(r11)
            return r0
        L_0x016d:
            if (r1 == 0) goto L_0x01e9
            r3 = 1
            java.lang.String r4 = "Invalid data type '"
            if (r1 == r3) goto L_0x01c7
            r3 = 2
            if (r1 == r3) goto L_0x019e
            if (r2 == 0) goto L_0x0193
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r4)
            java.lang.Class r3 = r2.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r1.append(r3)
            java.lang.String r3 = "'. Must be one of [String, Number, Boolean, List, Map, Date].\nDiscarded value."
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            goto L_0x0195
        L_0x0193:
            java.lang.String r1 = "Value is null.\nDiscarded value"
        L_0x0195:
            java.lang.String r2 = java.lang.String.valueOf(r2)
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r2, r1)
            return r0
        L_0x019e:
            if (r2 == 0) goto L_0x01c1
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r4)
            java.lang.Class r3 = r2.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r1.append(r3)
            java.lang.String r3 = "'. Must be one of [String, Number, Boolean, List, Map, Date].\nConverted value to String."
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            r0.a(r2, r1)
            goto L_0x01c6
        L_0x01c1:
            java.lang.String r1 = "Value is null."
            r0.a(r11, r1)
        L_0x01c6:
            return r0
        L_0x01c7:
            if (r2 == 0) goto L_0x01e3
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r4)
            java.lang.Class r2 = r2.getClass()
            java.lang.String r2 = r2.getSimpleName()
            r1.append(r2)
            java.lang.String r2 = "'. Must be one of [String, Number, Boolean, List, Map, Date].\nConverted value to null."
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            goto L_0x01e4
        L_0x01e3:
            r1 = r11
        L_0x01e4:
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r11, r1)
            return r0
        L_0x01e9:
            com.webengage.sdk.android.utils.DataType$a r0 = r0.a(r2, r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.DataType.a(com.webengage.sdk.android.utils.DataType$a, int, boolean, int):com.webengage.sdk.android.utils.DataType$a");
    }

    private static Object a(Object obj, boolean z) {
        DataType detect;
        while (true) {
            detect = detect(obj);
            if (detect != null) {
                switch (detect) {
                    case STRING:
                        String str = (String) obj;
                        if (z && (str.startsWith("~") || str.startsWith("^") || str.startsWith("`"))) {
                            str = "~".concat(String.valueOf(str));
                        }
                        return str;
                    case MAP:
                        c cVar = new c();
                        for (Map.Entry entry : ((Map) obj).entrySet()) {
                            cVar.put((String) a(entry.getKey(), z), a(entry.getValue(), z));
                        }
                        return cVar;
                    case LIST:
                        org.a.a aVar = new org.a.a();
                        for (Object a2 : (List) obj) {
                            aVar.put(a(a2, z));
                        }
                        return aVar;
                    case DATE:
                        SimpleDateFormat simpleDateFormat = z ? new SimpleDateFormat("'~t'yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US) : new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                        return simpleDateFormat.format(obj);
                    case UNKNOWN:
                        if (!(obj instanceof c)) {
                            return c.NULL;
                        }
                        obj = ((c) obj).toMap();
                    case INTEGER:
                    case LONG:
                    case DOUBLE:
                    case NUMBER:
                    case BOOLEAN:
                        return obj;
                }
            } else if (obj == null) {
                return c.NULL;
            }
        }
        throw new IllegalArgumentException("Unknown Data Type : ".concat(String.valueOf(detect)));
    }

    static Object a(Object obj, boolean z, boolean z2, int i) {
        switch (detect(obj)) {
            case STRING:
                if (z2) {
                    obj = k.a(obj.toString(), i);
                    break;
                }
                break;
            case MAP:
                HashMap hashMap = new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    hashMap.put(a(entry.getKey(), z, z2, 50).toString(), a(entry.getValue(), z, z2, 1000));
                }
                return hashMap;
            case LIST:
                ArrayList arrayList = new ArrayList();
                for (Object a2 : (List) obj) {
                    arrayList.add(a(a2, z, z2, 1000));
                }
                return arrayList;
            case DATE:
                return new Date(((Date) obj).getTime());
            case INTEGER:
            case LONG:
            case DOUBLE:
            case NUMBER:
            case BOOLEAN:
                break;
            default:
                if (z) {
                    return null;
                }
                break;
        }
        return obj;
    }

    public static Object cloneExternal(Object obj) {
        return cloneExternal(null, obj);
    }

    public static Object cloneExternal(String str, Object obj) {
        a a2 = a(new a(str, obj), 2, true, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        String d = a2.d();
        if (d != null) {
            Logger.e("WebEngage", d);
        }
        return a2.b();
    }

    public static Object cloneInternal(Object obj) {
        return a(obj, false, false, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0104, code lost:
        if (r4 != 4) goto L_0x0106;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x0217, code lost:
        throw new java.lang.IllegalArgumentException("Unknown Data Type : ".concat(java.lang.String.valueOf(r4)));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Object convert(java.lang.Object r3, com.webengage.sdk.android.utils.DataType r4, boolean r5) {
        /*
            com.webengage.sdk.android.utils.DataType r0 = detect(r3)
            int[] r1 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r2 = r4.ordinal()
            r1 = r1[r2]
            r2 = 1
            switch(r1) {
                case 1: goto L_0x01ee;
                case 2: goto L_0x01ae;
                case 3: goto L_0x016e;
                case 4: goto L_0x00f9;
                case 5: goto L_0x0010;
                case 6: goto L_0x00bd;
                case 7: goto L_0x0081;
                case 8: goto L_0x0045;
                case 9: goto L_0x0106;
                case 10: goto L_0x0012;
                default: goto L_0x0010;
            }
        L_0x0010:
            goto L_0x0208
        L_0x0012:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r5 = r0.ordinal()
            r4 = r4[r5]
            if (r4 == r2) goto L_0x003c
            r5 = 10
            if (r4 != r5) goto L_0x0021
            return r3
        L_0x0021:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r0.toString()
            r4.append(r5)
            java.lang.String r5 = " cannot be converted to Boolean"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L_0x003c:
            java.lang.String r3 = r3.toString()
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            return r3
        L_0x0045:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r5 = r0.ordinal()
            r4 = r4[r5]
            if (r4 == r2) goto L_0x0078
            switch(r4) {
                case 6: goto L_0x006d;
                case 7: goto L_0x006d;
                case 8: goto L_0x006d;
                case 9: goto L_0x006d;
                default: goto L_0x0052;
            }
        L_0x0052:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r0.toString()
            r4.append(r5)
            java.lang.String r5 = " cannot be converted to Double"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L_0x006d:
            java.lang.Number r3 = (java.lang.Number) r3
            double r3 = r3.doubleValue()
            java.lang.Double r3 = java.lang.Double.valueOf(r3)
            return r3
        L_0x0078:
            java.lang.String r3 = r3.toString()
            java.lang.Double r3 = java.lang.Double.valueOf(r3)
            return r3
        L_0x0081:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r5 = r0.ordinal()
            r4 = r4[r5]
            if (r4 == r2) goto L_0x00b4
            switch(r4) {
                case 6: goto L_0x00a9;
                case 7: goto L_0x00a9;
                case 8: goto L_0x00a9;
                case 9: goto L_0x00a9;
                default: goto L_0x008e;
            }
        L_0x008e:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r0.toString()
            r4.append(r5)
            java.lang.String r5 = " cannot be converted to Long"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L_0x00a9:
            java.lang.Number r3 = (java.lang.Number) r3
            long r3 = r3.longValue()
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            return r3
        L_0x00b4:
            java.lang.String r3 = r3.toString()
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            return r3
        L_0x00bd:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r5 = r0.ordinal()
            r4 = r4[r5]
            if (r4 == r2) goto L_0x00f0
            switch(r4) {
                case 6: goto L_0x00e5;
                case 7: goto L_0x00e5;
                case 8: goto L_0x00e5;
                case 9: goto L_0x00e5;
                default: goto L_0x00ca;
            }
        L_0x00ca:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r0.toString()
            r4.append(r5)
            java.lang.String r5 = " cannot be converted to Integer"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L_0x00e5:
            java.lang.Number r3 = (java.lang.Number) r3
            int r3 = r3.intValue()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            return r3
        L_0x00f0:
            java.lang.String r3 = r3.toString()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            return r3
        L_0x00f9:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r1 = r0.ordinal()
            r4 = r4[r1]
            if (r4 == r2) goto L_0x0149
            r5 = 4
            if (r4 == r5) goto L_0x0148
        L_0x0106:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r5 = r0.ordinal()
            r4 = r4[r5]
            if (r4 == r2) goto L_0x012f
            switch(r4) {
                case 6: goto L_0x012e;
                case 7: goto L_0x012e;
                case 8: goto L_0x012e;
                case 9: goto L_0x012e;
                default: goto L_0x0113;
            }
        L_0x0113:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r0.toString()
            r4.append(r5)
            java.lang.String r5 = " cannot be converted to Number"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L_0x012e:
            return r3
        L_0x012f:
            java.lang.String r4 = r3.toString()     // Catch:{ NumberFormatException -> 0x013c }
            long r4 = java.lang.Long.parseLong(r4)     // Catch:{ NumberFormatException -> 0x013c }
            java.lang.Long r3 = java.lang.Long.valueOf(r4)     // Catch:{ NumberFormatException -> 0x013c }
            return r3
        L_0x013c:
            java.lang.String r3 = r3.toString()
            double r3 = java.lang.Double.parseDouble(r3)
            java.lang.Double r3 = java.lang.Double.valueOf(r3)
        L_0x0148:
            return r3
        L_0x0149:
            java.text.SimpleDateFormat r4 = new java.text.SimpleDateFormat
            if (r5 == 0) goto L_0x0155
            java.util.Locale r5 = java.util.Locale.US
            java.lang.String r0 = "'~t'yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
            r4.<init>(r0, r5)
            goto L_0x015c
        L_0x0155:
            java.util.Locale r5 = java.util.Locale.US
            java.lang.String r0 = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
            r4.<init>(r0, r5)
        L_0x015c:
            java.lang.String r5 = "UTC"
            java.util.TimeZone r5 = java.util.TimeZone.getTimeZone(r5)
            r4.setTimeZone(r5)
            java.lang.String r3 = r3.toString()
            java.util.Date r3 = r4.parse(r3)
            return r3
        L_0x016e:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r1 = r0.ordinal()
            r4 = r4[r1]
            if (r4 == r2) goto L_0x0197
            r5 = 3
            if (r4 != r5) goto L_0x017c
            return r3
        L_0x017c:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r0.toString()
            r4.append(r5)
            java.lang.String r5 = " cannot be converted to List"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L_0x0197:
            com.webengage.sdk.android.utils.d r4 = new com.webengage.sdk.android.utils.d
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            java.lang.String r3 = r3.toString()
            byte[] r3 = r3.getBytes()
            r0.<init>(r3)
            r4.<init>(r0, r5)
            java.util.List r3 = r4.b()
            return r3
        L_0x01ae:
            int[] r4 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r1 = r0.ordinal()
            r4 = r4[r1]
            if (r4 == r2) goto L_0x01d7
            r5 = 2
            if (r4 != r5) goto L_0x01bc
            return r3
        L_0x01bc:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r0.toString()
            r4.append(r5)
            java.lang.String r5 = " cannot be converted to Map"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L_0x01d7:
            com.webengage.sdk.android.utils.d r4 = new com.webengage.sdk.android.utils.d
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            java.lang.String r3 = r3.toString()
            byte[] r3 = r3.getBytes()
            r0.<init>(r3)
            r4.<init>(r0, r5)
            java.util.Map r3 = r4.a()
            return r3
        L_0x01ee:
            int[] r1 = com.webengage.sdk.android.utils.DataType.AnonymousClass1.f5563a
            int r0 = r0.ordinal()
            r0 = r1[r0]
            switch(r0) {
                case 1: goto L_0x01ff;
                case 2: goto L_0x01ff;
                case 3: goto L_0x01ff;
                case 4: goto L_0x01ff;
                case 5: goto L_0x01ff;
                case 6: goto L_0x01fa;
                case 7: goto L_0x01fa;
                case 8: goto L_0x01fa;
                case 9: goto L_0x01fa;
                case 10: goto L_0x01fa;
                default: goto L_0x01f9;
            }
        L_0x01f9:
            goto L_0x0208
        L_0x01fa:
            java.lang.String r3 = r3.toString()
            return r3
        L_0x01ff:
            java.lang.Object r3 = a(r3, r5)
            java.lang.String r3 = r3.toString()
            return r3
        L_0x0208:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.String r5 = "Unknown Data Type : "
            java.lang.String r4 = r5.concat(r4)
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.DataType.convert(java.lang.Object, com.webengage.sdk.android.utils.DataType, boolean):java.lang.Object");
    }

    public static DataType detect(Object obj) {
        return obj instanceof Long ? LONG : obj instanceof Integer ? INTEGER : obj instanceof Boolean ? BOOLEAN : obj instanceof String ? STRING : obj instanceof Double ? DOUBLE : obj instanceof List ? LIST : obj instanceof Map ? MAP : obj instanceof Date ? DATE : obj instanceof Number ? NUMBER : UNKNOWN;
    }

    public static boolean isNumber(DataType dataType) {
        return dataType.equals(INTEGER) || dataType.equals(LONG) || dataType.equals(DOUBLE) || dataType.equals(NUMBER);
    }

    public static DataType valueByString(String str) {
        try {
            return valueOf(str.toUpperCase());
        } catch (Exception unused) {
            return null;
        }
    }

    public final String toString() {
        return name().toLowerCase();
    }
}
