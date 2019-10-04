package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.appcompat.widget.ActivityChooserView;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.a.C0065a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bd;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.o;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public final class a<O extends C0065a> {

    /* renamed from: a  reason: collision with root package name */
    private final b<?, O> f2734a;

    /* renamed from: b  reason: collision with root package name */
    private final i<?, O> f2735b = null;
    private final g<?> c;
    private final j<?> d;
    private final String e;

    /* renamed from: com.google.android.gms.common.api.a$a  reason: collision with other inner class name */
    public interface C0065a {

        /* renamed from: com.google.android.gms.common.api.a$a$a  reason: collision with other inner class name */
        public interface C0066a extends c, d {
            Account getAccount();
        }

        /* renamed from: com.google.android.gms.common.api.a$a$b */
        public interface b extends c {
            GoogleSignInAccount getGoogleSignInAccount();
        }

        /* renamed from: com.google.android.gms.common.api.a$a$c */
        public interface c extends C0065a {
        }

        /* renamed from: com.google.android.gms.common.api.a$a$d */
        public interface d extends C0065a {
        }

        /* renamed from: com.google.android.gms.common.api.a$a$e */
        public interface e extends c, d {
        }
    }

    public static abstract class b<T extends f, O> extends e<T, O> {
        public abstract T zza(Context context, Looper looper, bl blVar, O o, f.b bVar, f.c cVar);
    }

    public interface c {
    }

    public static class d<C extends c> {
    }

    public static abstract class e<T extends c, O> {
        public int getPriority() {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }

        public List<Scope> zzr(O o) {
            return Collections.emptyList();
        }
    }

    public interface f extends c {
        void disconnect();

        void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        Intent getSignInIntent();

        boolean isConnected();

        boolean isConnecting();

        void zza(bd bdVar);

        void zza(bj bjVar);

        void zza(o oVar, Set<Scope> set);

        boolean zzaay();

        boolean zzabj();

        boolean zzagg();

        IBinder zzagh();

        String zzagi();
    }

    public static final class g<C extends f> extends d<C> {
    }

    public interface h<T extends IInterface> extends c {
    }

    public static abstract class i<T extends h, O> extends e<T, O> {
    }

    public static final class j<C extends h> extends d<C> {
    }

    public <C extends f> a(String str, b<C, O> bVar, g<C> gVar) {
        ap.checkNotNull(bVar, "Cannot construct an Api with a null ClientBuilder");
        ap.checkNotNull(gVar, "Cannot construct an Api with a null ClientKey");
        this.e = str;
        this.f2734a = bVar;
        this.c = gVar;
        this.d = null;
    }

    public final String getName() {
        return this.e;
    }

    public final e<?, O> zzagd() {
        return this.f2734a;
    }

    public final b<?, O> zzage() {
        ap.zza(this.f2734a != null, (Object) "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f2734a;
    }

    public final d<?> zzagf() {
        g<?> gVar = this.c;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }
}
