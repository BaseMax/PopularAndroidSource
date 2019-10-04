package com.google.android.gms.internal;

import com.google.android.gms.internal.ps;
import com.google.android.gms.internal.ps.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class ps<MessageType extends ps<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends or<MessageType, BuilderType> {
    private static Map<Object, ps<?, ?>> d = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    protected rv f3451b = rv.zzczu();
    protected int c = -1;

    public static abstract class a<MessageType extends ps<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends os<MessageType, BuilderType> {

        /* renamed from: a  reason: collision with root package name */
        protected MessageType f3452a;

        /* renamed from: b  reason: collision with root package name */
        private final MessageType f3453b;
        private boolean c;

        private void a() {
            if (this.c) {
                MessageType messagetype = this.f3452a;
                int i = f.zzphi;
                MessageType messagetype2 = (ps) messagetype.a();
                a(messagetype2, this.f3452a);
                this.f3452a = messagetype2;
                this.c = false;
            }
        }

        private static void a(MessageType messagetype, MessageType messagetype2) {
            e eVar = e.zzphb;
            int i = f.zzphd;
            messagetype.f3451b = eVar.zza(messagetype.f3451b, messagetype2.f3451b);
        }

        private final BuilderType b() throws IOException {
            a();
            try {
                int i = f.zzphg;
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            int i = f.zzphj;
            a aVar = (a) ((ps) this.f3453b).a();
            if (!this.c) {
                MessageType messagetype = this.f3452a;
                int i2 = f.zzphh;
                messagetype.f3451b.zzbiy();
                this.c = true;
            }
            aVar.a((ps) this.f3452a);
            return aVar;
        }

        public final boolean isInitialized() {
            return ps.a(this.f3452a);
        }

        public final /* synthetic */ os zza(pd pdVar, pk pkVar) throws IOException {
            return (a) zzb(pdVar, pkVar);
        }

        /* renamed from: zza */
        public final BuilderType a(MessageType messagetype) {
            a();
            a(this.f3452a, messagetype);
            return this;
        }

        public final /* synthetic */ qs zzb(pd pdVar, pk pkVar) throws IOException {
            return b();
        }

        public final /* synthetic */ os zzcvh() {
            return (a) clone();
        }

        public final /* synthetic */ qr zzcxq() {
            return this.f3453b;
        }

        public final MessageType zzcxs() {
            if (this.c) {
                return this.f3452a;
            }
            MessageType messagetype = this.f3452a;
            int i = f.zzphh;
            messagetype.f3451b.zzbiy();
            this.c = true;
            return this.f3452a;
        }

        public final MessageType zzcxt() {
            boolean z = true;
            if (!this.c) {
                MessageType messagetype = this.f3452a;
                int i = f.zzphh;
                messagetype.f3451b.zzbiy();
                this.c = true;
            }
            MessageType messagetype2 = (ps) this.f3452a;
            int i2 = f.zzphe;
            byte byteValue = ((Byte) messagetype2.a()).byteValue();
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    int i3 = f.zzphc;
                    Boolean bool = Boolean.FALSE;
                    if (messagetype2.a() == null) {
                        z = false;
                    }
                    int i4 = f.zzphf;
                }
            }
            if (z) {
                return messagetype2;
            }
            throw new rt(messagetype2);
        }

        public final /* synthetic */ qr zzcxu() {
            if (this.c) {
                return this.f3452a;
            }
            MessageType messagetype = this.f3452a;
            int i = f.zzphh;
            messagetype.f3451b.zzbiy();
            this.c = true;
            return this.f3452a;
        }

        public final /* synthetic */ qr zzcxv() {
            boolean z = true;
            if (!this.c) {
                MessageType messagetype = this.f3452a;
                int i = f.zzphh;
                messagetype.f3451b.zzbiy();
                this.c = true;
            }
            ps psVar = (ps) this.f3452a;
            int i2 = f.zzphe;
            byte byteValue = ((Byte) psVar.a()).byteValue();
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    int i3 = f.zzphc;
                    Boolean bool = Boolean.FALSE;
                    if (psVar.a() == null) {
                        z = false;
                    }
                    int i4 = f.zzphf;
                }
            }
            if (z) {
                return psVar;
            }
            throw new rt(psVar);
        }
    }

    static class b implements g {

        /* renamed from: a  reason: collision with root package name */
        static final b f3454a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static pt f3455b = new pt();

        private b() {
        }

        public final double zza(boolean z, double d, boolean z2, double d2) {
            if (z == z2 && d == d2) {
                return d;
            }
            throw f3455b;
        }

        public final int zza(boolean z, int i, boolean z2, int i2) {
            if (z == z2 && i == i2) {
                return i;
            }
            throw f3455b;
        }

        public final long zza(boolean z, long j, boolean z2, long j2) {
            if (z == z2 && j == j2) {
                return j;
            }
            throw f3455b;
        }

        public final ou zza(boolean z, ou ouVar, boolean z2, ou ouVar2) {
            if (z == z2 && ouVar.equals(ouVar2)) {
                return ouVar;
            }
            throw f3455b;
        }

        public final pw zza(pw pwVar, pw pwVar2) {
            if (pwVar.equals(pwVar2)) {
                return pwVar;
            }
            throw f3455b;
        }

        public final <T> px<T> zza(px<T> pxVar, px<T> pxVar2) {
            if (pxVar.equals(pxVar2)) {
                return pxVar;
            }
            throw f3455b;
        }

        public final <K, V> ql<K, V> zza(ql<K, V> qlVar, ql<K, V> qlVar2) {
            if (qlVar.equals(qlVar2)) {
                return qlVar;
            }
            throw f3455b;
        }

        public final <T extends qr> T zza(T t, T t2) {
            if (t == null && t2 == null) {
                return null;
            }
            if (t == null || t2 == null) {
                throw f3455b;
            }
            T t3 = (ps) t;
            if (t3 != t2) {
                int i = f.zzphk;
                if (((ps) t3.a()).getClass().isInstance(t2)) {
                    int i2 = f.zzphd;
                    t3.f3451b = zza(t3.f3451b, ((ps) t2).f3451b);
                }
            }
            return t;
        }

        public final rv zza(rv rvVar, rv rvVar2) {
            if (rvVar.equals(rvVar2)) {
                return rvVar;
            }
            throw f3455b;
        }

        public final Object zza(boolean z, Object obj, Object obj2) {
            if (z && obj.equals(obj2)) {
                return obj;
            }
            throw f3455b;
        }

        public final String zza(boolean z, String str, boolean z2, String str2) {
            if (z == z2 && str.equals(str2)) {
                return str;
            }
            throw f3455b;
        }

        public final boolean zza(boolean z, boolean z2, boolean z3, boolean z4) {
            if (z == z3 && z2 == z4) {
                return z2;
            }
            throw f3455b;
        }

        public final Object zzb(boolean z, Object obj, Object obj2) {
            if (z && obj.equals(obj2)) {
                return obj;
            }
            throw f3455b;
        }

        public final Object zzc(boolean z, Object obj, Object obj2) {
            if (z && obj.equals(obj2)) {
                return obj;
            }
            throw f3455b;
        }

        public final Object zzd(boolean z, Object obj, Object obj2) {
            if (z && obj.equals(obj2)) {
                return obj;
            }
            throw f3455b;
        }

        public final void zzdf(boolean z) {
            if (z) {
                throw f3455b;
            }
        }

        public final Object zze(boolean z, Object obj, Object obj2) {
            if (z && obj.equals(obj2)) {
                return obj;
            }
            throw f3455b;
        }

        public final Object zzf(boolean z, Object obj, Object obj2) {
            if (z && obj.equals(obj2)) {
                return obj;
            }
            throw f3455b;
        }

        public final Object zzg(boolean z, Object obj, Object obj2) {
            if (z) {
                ps psVar = (ps) obj;
                qr qrVar = (qr) obj2;
                boolean z2 = true;
                if (psVar != qrVar) {
                    int i = f.zzphk;
                    if (!((ps) psVar.a()).getClass().isInstance(qrVar)) {
                        z2 = false;
                    } else {
                        int i2 = f.zzphd;
                        psVar.f3451b = zza(psVar.f3451b, ((ps) qrVar).f3451b);
                    }
                }
                if (z2) {
                    return obj;
                }
            }
            throw f3455b;
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends ps<MessageType, BuilderType> implements qt {
        protected po<Object> d = po.zzcxf();
    }

    static class d implements g {

        /* renamed from: a  reason: collision with root package name */
        int f3456a = 0;

        d() {
        }

        public final double zza(boolean z, double d, boolean z2, double d2) {
            this.f3456a = (this.f3456a * 53) + pu.zzde(Double.doubleToLongBits(d));
            return d;
        }

        public final int zza(boolean z, int i, boolean z2, int i2) {
            this.f3456a = (this.f3456a * 53) + i;
            return i;
        }

        public final long zza(boolean z, long j, boolean z2, long j2) {
            this.f3456a = (this.f3456a * 53) + pu.zzde(j);
            return j;
        }

        public final ou zza(boolean z, ou ouVar, boolean z2, ou ouVar2) {
            this.f3456a = (this.f3456a * 53) + ouVar.hashCode();
            return ouVar;
        }

        public final pw zza(pw pwVar, pw pwVar2) {
            this.f3456a = (this.f3456a * 53) + pwVar.hashCode();
            return pwVar;
        }

        public final <T> px<T> zza(px<T> pxVar, px<T> pxVar2) {
            this.f3456a = (this.f3456a * 53) + pxVar.hashCode();
            return pxVar;
        }

        public final <K, V> ql<K, V> zza(ql<K, V> qlVar, ql<K, V> qlVar2) {
            this.f3456a = (this.f3456a * 53) + qlVar.hashCode();
            return qlVar;
        }

        public final <T extends qr> T zza(T t, T t2) {
            int i;
            if (t == null) {
                i = 37;
            } else if (t instanceof ps) {
                ps psVar = (ps) t;
                if (psVar.f3425a == 0) {
                    int i2 = this.f3456a;
                    this.f3456a = 0;
                    int i3 = f.zzphd;
                    psVar.f3451b = zza(psVar.f3451b, psVar.f3451b);
                    psVar.f3425a = this.f3456a;
                    this.f3456a = i2;
                }
                i = psVar.f3425a;
            } else {
                i = t.hashCode();
            }
            this.f3456a = (this.f3456a * 53) + i;
            return t;
        }

        public final rv zza(rv rvVar, rv rvVar2) {
            this.f3456a = (this.f3456a * 53) + rvVar.hashCode();
            return rvVar;
        }

        public final Object zza(boolean z, Object obj, Object obj2) {
            this.f3456a = (this.f3456a * 53) + pu.zzdg(((Boolean) obj).booleanValue());
            return obj;
        }

        public final String zza(boolean z, String str, boolean z2, String str2) {
            this.f3456a = (this.f3456a * 53) + str.hashCode();
            return str;
        }

        public final boolean zza(boolean z, boolean z2, boolean z3, boolean z4) {
            this.f3456a = (this.f3456a * 53) + pu.zzdg(z2);
            return z2;
        }

        public final Object zzb(boolean z, Object obj, Object obj2) {
            this.f3456a = (this.f3456a * 53) + ((Integer) obj).intValue();
            return obj;
        }

        public final Object zzc(boolean z, Object obj, Object obj2) {
            this.f3456a = (this.f3456a * 53) + pu.zzde(Double.doubleToLongBits(((Double) obj).doubleValue()));
            return obj;
        }

        public final Object zzd(boolean z, Object obj, Object obj2) {
            this.f3456a = (this.f3456a * 53) + pu.zzde(((Long) obj).longValue());
            return obj;
        }

        public final void zzdf(boolean z) {
            if (z) {
                throw new IllegalStateException();
            }
        }

        public final Object zze(boolean z, Object obj, Object obj2) {
            this.f3456a = (this.f3456a * 53) + obj.hashCode();
            return obj;
        }

        public final Object zzf(boolean z, Object obj, Object obj2) {
            this.f3456a = (this.f3456a * 53) + obj.hashCode();
            return obj;
        }

        public final Object zzg(boolean z, Object obj, Object obj2) {
            return zza((qr) obj, (qr) obj2);
        }
    }

    public static class e implements g {
        public static final e zzphb = new e();

        private e() {
        }

        public final double zza(boolean z, double d, boolean z2, double d2) {
            return z2 ? d2 : d;
        }

        public final int zza(boolean z, int i, boolean z2, int i2) {
            return z2 ? i2 : i;
        }

        public final long zza(boolean z, long j, boolean z2, long j2) {
            return z2 ? j2 : j;
        }

        public final ou zza(boolean z, ou ouVar, boolean z2, ou ouVar2) {
            return z2 ? ouVar2 : ouVar;
        }

        public final pw zza(pw pwVar, pw pwVar2) {
            int size = pwVar.size();
            int size2 = pwVar2.size();
            if (size > 0 && size2 > 0) {
                if (!pwVar.zzcvi()) {
                    pwVar = pwVar.zzlu(size2 + size);
                }
                pwVar.addAll(pwVar2);
            }
            return size > 0 ? pwVar : pwVar2;
        }

        public final <T> px<T> zza(px<T> pxVar, px<T> pxVar2) {
            int size = pxVar.size();
            int size2 = pxVar2.size();
            if (size > 0 && size2 > 0) {
                if (!pxVar.zzcvi()) {
                    pxVar = pxVar.zzly(size2 + size);
                }
                pxVar.addAll(pxVar2);
            }
            return size > 0 ? pxVar : pxVar2;
        }

        public final <K, V> ql<K, V> zza(ql<K, V> qlVar, ql<K, V> qlVar2) {
            if (!qlVar2.isEmpty()) {
                if (!qlVar.isMutable()) {
                    qlVar = qlVar.zzcyq();
                }
                qlVar.zza(qlVar2);
            }
            return qlVar;
        }

        public final <T extends qr> T zza(T t, T t2) {
            return (t == null || t2 == null) ? t != null ? t : t2 : t.zzcxp().zzd(t2).zzcxv();
        }

        public final rv zza(rv rvVar, rv rvVar2) {
            return rvVar2 == rv.zzczu() ? rvVar : rv.a(rvVar, rvVar2);
        }

        public final Object zza(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        public final String zza(boolean z, String str, boolean z2, String str2) {
            return z2 ? str2 : str;
        }

        public final boolean zza(boolean z, boolean z2, boolean z3, boolean z4) {
            return z3 ? z4 : z2;
        }

        public final Object zzb(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        public final Object zzc(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        public final Object zzd(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        public final void zzdf(boolean z) {
        }

        public final Object zze(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        public final Object zzf(boolean z, Object obj, Object obj2) {
            return obj2;
        }

        public final Object zzg(boolean z, Object obj, Object obj2) {
            return z ? zza((qr) obj, (qr) obj2) : obj2;
        }
    }

    /* 'enum' modifier removed */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ int[] f3457a = {zzphc, zzphd, zzphe, zzphf, zzphg, zzphh, zzphi, zzphj, zzphk, zzphl};

        /* renamed from: b  reason: collision with root package name */
        private static final /* synthetic */ int[] f3458b = {zzphn, zzpho};
        public static final int zzphc = 1;
        public static final int zzphd = 2;
        public static final int zzphe = 3;
        public static final int zzphf = 4;
        public static final int zzphg = 5;
        public static final int zzphh = 6;
        public static final int zzphi = 7;
        public static final int zzphj = 8;
        public static final int zzphk = 9;
        public static final int zzphl = 10;
        public static final int zzphn = 1;
        public static final int zzpho = 2;

        public static int[] values$50KLMJ33DTMIUPRFDTJMOP9FE1P6UT3FC9QMCBQ7CLN6ASJ1EHIM8JB5EDPM2PR59HKN8P949LIN8Q3FCHA6UIBEEPNMMP9R0() {
            return (int[]) f3457a.clone();
        }
    }

    public interface g {
        double zza(boolean z, double d, boolean z2, double d2);

        int zza(boolean z, int i, boolean z2, int i2);

        long zza(boolean z, long j, boolean z2, long j2);

        ou zza(boolean z, ou ouVar, boolean z2, ou ouVar2);

        pw zza(pw pwVar, pw pwVar2);

        <T> px<T> zza(px<T> pxVar, px<T> pxVar2);

        <K, V> ql<K, V> zza(ql<K, V> qlVar, ql<K, V> qlVar2);

        <T extends qr> T zza(T t, T t2);

        rv zza(rv rvVar, rv rvVar2);

        Object zza(boolean z, Object obj, Object obj2);

        String zza(boolean z, String str, boolean z2, String str2);

        boolean zza(boolean z, boolean z2, boolean z3, boolean z4);

        Object zzb(boolean z, Object obj, Object obj2);

        Object zzc(boolean z, Object obj, Object obj2);

        Object zzd(boolean z, Object obj, Object obj2);

        void zzdf(boolean z);

        Object zze(boolean z, Object obj, Object obj2);

        Object zzf(boolean z, Object obj, Object obj2);

        Object zzg(boolean z, Object obj, Object obj2);
    }

    static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    protected static final <T extends ps<T, ?>> boolean a(T t) {
        int i = f.zzphe;
        byte byteValue = ((Byte) t.a()).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        int i2 = f.zzphc;
        Boolean bool = Boolean.FALSE;
        return t.a() != null;
    }

    static <T extends ps<T, ?>> T b(T t) throws py {
        int i = f.zzphi;
        T t2 = (ps) t.a();
        try {
            int i2 = f.zzphg;
            int i3 = f.zzphh;
            t2.f3451b.zzbiy();
            return t2;
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof py) {
                throw ((py) e2.getCause());
            }
            throw e2;
        }
    }

    /* access modifiers changed from: protected */
    public abstract Object a();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        int i = f.zzphk;
        if (!((ps) a()).getClass().isInstance(obj)) {
            return false;
        }
        try {
            b bVar = b.f3454a;
            int i2 = f.zzphd;
            this.f3451b = bVar.zza(this.f3451b, ((ps) obj).f3451b);
            return true;
        } catch (pt unused) {
            return false;
        }
    }

    public int hashCode() {
        if (this.f3425a != 0) {
            return this.f3425a;
        }
        d dVar = new d();
        int i = f.zzphd;
        rv rvVar = this.f3451b;
        this.f3451b = dVar.zza(rvVar, rvVar);
        this.f3425a = dVar.f3456a;
        return this.f3425a;
    }

    public final boolean isInitialized() {
        int i = f.zzphe;
        byte byteValue = ((Byte) a()).byteValue();
        boolean z = true;
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        int i2 = f.zzphc;
        Boolean bool = Boolean.FALSE;
        if (a() == null) {
            z = false;
        }
        int i3 = f.zzphf;
        return z;
    }

    public void zza(ph phVar) throws IOException {
        qz.zzcyz().zzl(getClass()).zza(this, pi.zzb(phVar));
    }

    public final qx<MessageType> zzcxm() {
        int i = f.zzphl;
        return (qx) a();
    }

    public final /* synthetic */ qs zzcxp() {
        int i = f.zzphj;
        a aVar = (a) a();
        aVar.a(this);
        return aVar;
    }

    public final /* synthetic */ qr zzcxq() {
        int i = f.zzphk;
        return (ps) a();
    }

    public int zzho() {
        if (this.c == -1) {
            this.c = qz.zzcyz().zzl(getClass()).zzcp(this);
        }
        return this.c;
    }

    public String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        qu.a(this, sb, 0);
        return sb.toString();
    }
}
