package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.sw;
import com.google.android.gms.internal.th;
import com.google.android.gms.internal.ti;
import com.google.android.gms.measurement.AppMeasurement;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public final class d {
    private static Bundle a(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        return bundle;
    }

    private static ti a(byte[] bArr) {
        try {
            return ti.zzbi(bArr);
        } catch (sw unused) {
            return null;
        }
    }

    private static AppMeasurement a(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }

    private static Object a(ti tiVar, String str, c cVar) {
        String str2 = null;
        try {
            Class<?> cls = Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            Bundle a2 = a(tiVar.zzpri, tiVar.zzprj);
            Object newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            try {
                cls.getField("mOrigin").set(newInstance, str);
                cls.getField("mCreationTimestamp").set(newInstance, Long.valueOf(tiVar.zzprk));
                cls.getField("mName").set(newInstance, tiVar.zzpri);
                cls.getField("mValue").set(newInstance, tiVar.zzprj);
                if (!TextUtils.isEmpty(tiVar.zzprl)) {
                    str2 = tiVar.zzprl;
                }
                cls.getField("mTriggerEventName").set(newInstance, str2);
                cls.getField("mTimedOutEventName").set(newInstance, !TextUtils.isEmpty(tiVar.zzprq) ? tiVar.zzprq : cVar.zzbqu());
                cls.getField("mTimedOutEventParams").set(newInstance, a2);
                cls.getField("mTriggerTimeout").set(newInstance, Long.valueOf(tiVar.zzprm));
                cls.getField("mTriggeredEventName").set(newInstance, !TextUtils.isEmpty(tiVar.zzpro) ? tiVar.zzpro : cVar.zzbqt());
                cls.getField("mTriggeredEventParams").set(newInstance, a2);
                cls.getField("mTimeToLive").set(newInstance, Long.valueOf(tiVar.zzghq));
                cls.getField("mExpiredEventName").set(newInstance, !TextUtils.isEmpty(tiVar.zzprr) ? tiVar.zzprr : cVar.zzbqv());
                cls.getField("mExpiredEventParams").set(newInstance, a2);
                return newInstance;
            } catch (Exception unused) {
                return newInstance;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    private static String a(ti tiVar, c cVar) {
        return (tiVar == null || TextUtils.isEmpty(tiVar.zzprp)) ? cVar.zzbqw() : tiVar.zzprp;
    }

    private static String a(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(obj);
    }

    private static List<Object> a(AppMeasurement appMeasurement, String str) {
        List<Object> list;
        ArrayList arrayList = new ArrayList();
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getConditionalUserProperties", new Class[]{String.class, String.class});
            declaredMethod.setAccessible(true);
            list = (List) declaredMethod.invoke(appMeasurement, new Object[]{str, ""});
        } catch (Exception unused) {
            list = arrayList;
        }
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            int size = list.size();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 55);
            sb.append("Number of currently set _Es for origin: ");
            sb.append(str);
            sb.append(" is ");
            sb.append(size);
        }
        return list;
    }

    private static void a(Context context, String str, String str2, String str3, String str4) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "_CE(experimentId) called by ".concat(valueOf);
            } else {
                new String("_CE(experimentId) called by ");
            }
        }
        if (b(context)) {
            AppMeasurement a2 = a(context);
            try {
                Method declaredMethod = AppMeasurement.class.getDeclaredMethod("clearConditionalUserProperty", new Class[]{String.class, String.class, Bundle.class});
                declaredMethod.setAccessible(true);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(str3).length());
                    sb.append("Clearing _E: [");
                    sb.append(str2);
                    sb.append(", ");
                    sb.append(str3);
                    sb.append("]");
                }
                declaredMethod.invoke(a2, new Object[]{str2, str4, a(str2, str3)});
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(com.google.android.gms.measurement.AppMeasurement r16, android.content.Context r17, java.lang.String r18, com.google.android.gms.internal.ti r19, com.google.firebase.messaging.c r20) {
        /*
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r19
            java.lang.String r4 = "com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty"
            r5 = 2
            java.lang.String r6 = "FirebaseAbtUtil"
            boolean r7 = android.util.Log.isLoggable(r6, r5)
            if (r7 == 0) goto L_0x003f
            java.lang.String r7 = r3.zzpri
            java.lang.String r8 = r3.zzprj
            java.lang.String r9 = java.lang.String.valueOf(r7)
            int r9 = r9.length()
            int r9 = r9 + 7
            java.lang.String r10 = java.lang.String.valueOf(r8)
            int r10 = r10.length()
            int r9 = r9 + r10
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r9)
            java.lang.String r9 = "_SEI: "
            r10.append(r9)
            r10.append(r7)
            java.lang.String r7 = " "
            r10.append(r7)
            r10.append(r8)
        L_0x003f:
            java.lang.Class.forName(r4)     // Catch:{ Exception -> 0x0183 }
            java.util.List r7 = a((com.google.android.gms.measurement.AppMeasurement) r0, (java.lang.String) r2)     // Catch:{ Exception -> 0x0183 }
            int r8 = b(r0, r2)     // Catch:{ Exception -> 0x0183 }
            java.util.List r9 = a((com.google.android.gms.measurement.AppMeasurement) r0, (java.lang.String) r2)     // Catch:{ Exception -> 0x0183 }
            int r9 = r9.size()     // Catch:{ Exception -> 0x0183 }
            java.lang.String r10 = ", "
            r11 = 0
            r12 = 1
            if (r9 < r8) goto L_0x00cc
            int r8 = r3.zzprs     // Catch:{ Exception -> 0x0183 }
            if (r8 == 0) goto L_0x005f
            int r8 = r3.zzprs     // Catch:{ Exception -> 0x0183 }
            goto L_0x0060
        L_0x005f:
            r8 = 1
        L_0x0060:
            java.lang.String r9 = "]"
            if (r8 != r12) goto L_0x0098
            java.lang.Object r8 = r7.get(r11)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r13 = a((java.lang.Object) r8)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r8 = b((java.lang.Object) r8)     // Catch:{ Exception -> 0x0183 }
            boolean r14 = android.util.Log.isLoggable(r6, r5)     // Catch:{ Exception -> 0x0183 }
            if (r14 == 0) goto L_0x0090
            java.lang.String r14 = java.lang.String.valueOf(r13)     // Catch:{ Exception -> 0x0183 }
            int r14 = r14.length()     // Catch:{ Exception -> 0x0183 }
            int r14 = r14 + 38
            java.lang.StringBuilder r15 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0183 }
            r15.<init>(r14)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r14 = "Clearing _E due to overflow policy: ["
            r15.append(r14)     // Catch:{ Exception -> 0x0183 }
            r15.append(r13)     // Catch:{ Exception -> 0x0183 }
            r15.append(r9)     // Catch:{ Exception -> 0x0183 }
        L_0x0090:
            java.lang.String r9 = a((com.google.android.gms.internal.ti) r19, (com.google.firebase.messaging.c) r20)     // Catch:{ Exception -> 0x0183 }
            a((android.content.Context) r1, (java.lang.String) r2, (java.lang.String) r13, (java.lang.String) r8, (java.lang.String) r9)     // Catch:{ Exception -> 0x0183 }
            goto L_0x00cc
        L_0x0098:
            boolean r0 = android.util.Log.isLoggable(r6, r5)     // Catch:{ Exception -> 0x0183 }
            if (r0 == 0) goto L_0x00cb
            java.lang.String r0 = r3.zzpri     // Catch:{ Exception -> 0x0183 }
            java.lang.String r1 = r3.zzprj     // Catch:{ Exception -> 0x0183 }
            java.lang.String r2 = java.lang.String.valueOf(r0)     // Catch:{ Exception -> 0x0183 }
            int r2 = r2.length()     // Catch:{ Exception -> 0x0183 }
            int r2 = r2 + 44
            java.lang.String r3 = java.lang.String.valueOf(r1)     // Catch:{ Exception -> 0x0183 }
            int r3 = r3.length()     // Catch:{ Exception -> 0x0183 }
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0183 }
            r3.<init>(r2)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r2 = "_E won't be set due to overflow policy. ["
            r3.append(r2)     // Catch:{ Exception -> 0x0183 }
            r3.append(r0)     // Catch:{ Exception -> 0x0183 }
            r3.append(r10)     // Catch:{ Exception -> 0x0183 }
            r3.append(r1)     // Catch:{ Exception -> 0x0183 }
            r3.append(r9)     // Catch:{ Exception -> 0x0183 }
        L_0x00cb:
            return
        L_0x00cc:
            java.util.Iterator r7 = r7.iterator()     // Catch:{ Exception -> 0x0183 }
        L_0x00d0:
            boolean r8 = r7.hasNext()     // Catch:{ Exception -> 0x0183 }
            if (r8 == 0) goto L_0x012b
            java.lang.Object r8 = r7.next()     // Catch:{ Exception -> 0x0183 }
            java.lang.String r9 = a((java.lang.Object) r8)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r8 = b((java.lang.Object) r8)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r13 = r3.zzpri     // Catch:{ Exception -> 0x0183 }
            boolean r13 = r9.equals(r13)     // Catch:{ Exception -> 0x0183 }
            if (r13 == 0) goto L_0x00d0
            java.lang.String r13 = r3.zzprj     // Catch:{ Exception -> 0x0183 }
            boolean r13 = r8.equals(r13)     // Catch:{ Exception -> 0x0183 }
            if (r13 != 0) goto L_0x00d0
            boolean r13 = android.util.Log.isLoggable(r6, r5)     // Catch:{ Exception -> 0x0183 }
            if (r13 == 0) goto L_0x00d0
            java.lang.String r13 = java.lang.String.valueOf(r9)     // Catch:{ Exception -> 0x0183 }
            int r13 = r13.length()     // Catch:{ Exception -> 0x0183 }
            int r13 = r13 + 77
            java.lang.String r14 = java.lang.String.valueOf(r8)     // Catch:{ Exception -> 0x0183 }
            int r14 = r14.length()     // Catch:{ Exception -> 0x0183 }
            int r13 = r13 + r14
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0183 }
            r14.<init>(r13)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r13 = "Clearing _E, as only one _V of the same _E can be set atany given time: ["
            r14.append(r13)     // Catch:{ Exception -> 0x0183 }
            r14.append(r9)     // Catch:{ Exception -> 0x0183 }
            r14.append(r10)     // Catch:{ Exception -> 0x0183 }
            r14.append(r8)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r13 = "]."
            r14.append(r13)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r13 = a((com.google.android.gms.internal.ti) r19, (com.google.firebase.messaging.c) r20)     // Catch:{ Exception -> 0x0183 }
            a((android.content.Context) r1, (java.lang.String) r2, (java.lang.String) r9, (java.lang.String) r8, (java.lang.String) r13)     // Catch:{ Exception -> 0x0183 }
            goto L_0x00d0
        L_0x012b:
            r1 = r20
            java.lang.Object r1 = a(r3, r2, r1)     // Catch:{ Exception -> 0x0183 }
            if (r1 != 0) goto L_0x0169
            boolean r0 = android.util.Log.isLoggable(r6, r5)     // Catch:{ Exception -> 0x0183 }
            if (r0 == 0) goto L_0x0168
            java.lang.String r0 = r3.zzpri     // Catch:{ Exception -> 0x0183 }
            java.lang.String r1 = r3.zzprj     // Catch:{ Exception -> 0x0183 }
            java.lang.String r2 = java.lang.String.valueOf(r0)     // Catch:{ Exception -> 0x0183 }
            int r2 = r2.length()     // Catch:{ Exception -> 0x0183 }
            int r2 = r2 + 42
            java.lang.String r3 = java.lang.String.valueOf(r1)     // Catch:{ Exception -> 0x0183 }
            int r3 = r3.length()     // Catch:{ Exception -> 0x0183 }
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0183 }
            r3.<init>(r2)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r2 = "Could not create _CUP for: ["
            r3.append(r2)     // Catch:{ Exception -> 0x0183 }
            r3.append(r0)     // Catch:{ Exception -> 0x0183 }
            r3.append(r10)     // Catch:{ Exception -> 0x0183 }
            r3.append(r1)     // Catch:{ Exception -> 0x0183 }
            java.lang.String r0 = "]. Skipping."
            r3.append(r0)     // Catch:{ Exception -> 0x0183 }
        L_0x0168:
            return
        L_0x0169:
            java.lang.Class r2 = java.lang.Class.forName(r4)     // Catch:{  }
            java.lang.Class<com.google.android.gms.measurement.AppMeasurement> r3 = com.google.android.gms.measurement.AppMeasurement.class
            java.lang.String r4 = "setConditionalUserProperty"
            java.lang.Class[] r5 = new java.lang.Class[r12]     // Catch:{  }
            r5[r11] = r2     // Catch:{  }
            java.lang.reflect.Method r2 = r3.getDeclaredMethod(r4, r5)     // Catch:{  }
            r2.setAccessible(r12)     // Catch:{  }
            java.lang.Object[] r3 = new java.lang.Object[r12]     // Catch:{  }
            r3[r11] = r1     // Catch:{  }
            r2.invoke(r0, r3)     // Catch:{  }
        L_0x0183:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.d.a(com.google.android.gms.measurement.AppMeasurement, android.content.Context, java.lang.String, com.google.android.gms.internal.ti, com.google.firebase.messaging.c):void");
    }

    private static int b(AppMeasurement appMeasurement, String str) {
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getMaxUserProperties", new Class[]{String.class});
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(appMeasurement, new Object[]{str})).intValue();
        } catch (Exception unused) {
            return 20;
        }
    }

    private static String b(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(obj);
    }

    private static boolean b(Context context) {
        if (a(context) == null) {
            return false;
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void zza(Context context, String str, byte[] bArr, c cVar, int i) {
        String str2;
        boolean z;
        Context context2 = context;
        String str3 = str;
        c cVar2 = cVar;
        String str4 = "com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty";
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "_SE called by ".concat(valueOf);
            } else {
                new String("_SE called by ");
            }
        }
        if (b(context)) {
            AppMeasurement a2 = a(context);
            ti a3 = a(bArr);
            if (a3 != null) {
                try {
                    Class.forName(str4);
                    boolean z2 = false;
                    for (Object next : a(a2, str3)) {
                        String a4 = a(next);
                        String b2 = b(next);
                        long longValue = ((Long) Class.forName(str4).getField("mCreationTimestamp").get(next)).longValue();
                        if (!a3.zzpri.equals(a4) || !a3.zzprj.equals(b2)) {
                            th[] thVarArr = a3.zzprt;
                            int length = thVarArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length) {
                                    str2 = str4;
                                    z = false;
                                    break;
                                }
                                str2 = str4;
                                if (thVarArr[i2].zzpri.equals(a4)) {
                                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                        StringBuilder sb = new StringBuilder(String.valueOf(a4).length() + 33 + String.valueOf(b2).length());
                                        sb.append("_E is found in the _OE list. [");
                                        sb.append(a4);
                                        sb.append(", ");
                                        sb.append(b2);
                                        sb.append("]");
                                    }
                                    z = true;
                                } else {
                                    i2++;
                                    str4 = str2;
                                }
                            }
                            if (!z) {
                                if (a3.zzprk > longValue) {
                                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                        StringBuilder sb2 = new StringBuilder(String.valueOf(a4).length() + 115 + String.valueOf(b2).length());
                                        sb2.append("Clearing _E as it was not in the _OE list, andits start time is older than the start time of the _E to be set. [");
                                        sb2.append(a4);
                                        sb2.append(", ");
                                        sb2.append(b2);
                                        sb2.append("]");
                                    }
                                    a(context2, str3, a4, b2, a(a3, cVar2));
                                } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                    StringBuilder sb3 = new StringBuilder(String.valueOf(a4).length() + 109 + String.valueOf(b2).length());
                                    sb3.append("_E was not found in the _OE list, but not clearing it as it has a new start time than the _E to be set.  [");
                                    sb3.append(a4);
                                    sb3.append(", ");
                                    sb3.append(b2);
                                    sb3.append("]");
                                }
                            }
                            str4 = str2;
                        } else {
                            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                StringBuilder sb4 = new StringBuilder(String.valueOf(a4).length() + 23 + String.valueOf(b2).length());
                                sb4.append("_E is already set. [");
                                sb4.append(a4);
                                sb4.append(", ");
                                sb4.append(b2);
                                sb4.append("]");
                            }
                            z2 = true;
                        }
                    }
                    if (z2) {
                        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                            String str5 = a3.zzpri;
                            String str6 = a3.zzprj;
                            StringBuilder sb5 = new StringBuilder(String.valueOf(str5).length() + 44 + String.valueOf(str6).length());
                            sb5.append("_E is already set. Not setting it again [");
                            sb5.append(str5);
                            sb5.append(", ");
                            sb5.append(str6);
                            sb5.append("]");
                        }
                        return;
                    }
                    a(a2, context2, str3, a3, cVar2);
                } catch (Exception unused) {
                }
            }
        }
    }
}
