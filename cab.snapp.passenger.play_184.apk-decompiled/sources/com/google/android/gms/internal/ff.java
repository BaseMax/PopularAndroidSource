package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.b;
import com.google.android.gms.common.util.k;
import com.google.android.gms.common.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class ff {
    protected static <O, I> I a(zzbgo<I, O> zzbgo, Object obj) {
        return zzbgo.k != null ? zzbgo.convertBack(obj) : obj;
    }

    private static void a(StringBuilder sb, zzbgo zzbgo, Object obj) {
        String str;
        if (zzbgo.f3575a == 11) {
            str = ((ff) zzbgo.g.cast(obj)).toString();
        } else if (zzbgo.f3575a == 7) {
            str = "\"";
            sb.append(str);
            sb.append(k.zzgr((String) obj));
        } else {
            sb.append(obj);
            return;
        }
        sb.append(str);
    }

    private static void a(StringBuilder sb, zzbgo zzbgo, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                a(sb, zzbgo, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        String str;
        Map<String, zzbgo<?, ?>> zzaav = zzaav();
        StringBuilder sb = new StringBuilder(100);
        for (String next : zzaav.keySet()) {
            zzbgo zzbgo = zzaav.get(next);
            if (zza(zzbgo)) {
                Object a2 = a(zzbgo, zzb(zzbgo));
                sb.append(sb.length() == 0 ? "{" : ",");
                sb.append("\"");
                sb.append(next);
                sb.append("\":");
                if (a2 == null) {
                    sb.append("null");
                } else {
                    switch (zzbgo.c) {
                        case 8:
                            sb.append("\"");
                            str = b.zzk((byte[]) a2);
                            break;
                        case 9:
                            sb.append("\"");
                            str = b.zzl((byte[]) a2);
                            break;
                        case 10:
                            l.zza(sb, (HashMap) a2);
                            continue;
                        default:
                            if (!zzbgo.f3576b) {
                                a(sb, zzbgo, a2);
                                break;
                            } else {
                                a(sb, zzbgo, (ArrayList<Object>) (ArrayList) a2);
                                continue;
                            }
                    }
                    sb.append(str);
                    sb.append("\"");
                }
            }
        }
        sb.append(sb.length() > 0 ? "}" : "{}");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public boolean zza(zzbgo zzbgo) {
        if (zzbgo.c != 11) {
            return zzgp(zzbgo.e);
        }
        if (zzbgo.d) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    public abstract Map<String, zzbgo<?, ?>> zzaav();

    /* access modifiers changed from: protected */
    public Object zzb(zzbgo zzbgo) {
        String str = zzbgo.e;
        if (zzbgo.g == null) {
            return zzgo(zzbgo.e);
        }
        zzgo(zzbgo.e);
        ap.zza(true, "Concrete field shouldn't be value object: %s", zzbgo.e);
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
            sb.append("get");
            sb.append(upperCase);
            sb.append(substring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: protected */
    public abstract Object zzgo(String str);

    /* access modifiers changed from: protected */
    public abstract boolean zzgp(String str);
}
