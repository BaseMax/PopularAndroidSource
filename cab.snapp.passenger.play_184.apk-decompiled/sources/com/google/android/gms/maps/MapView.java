package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.a.c;
import com.google.android.gms.a.m;
import com.google.android.gms.a.n;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.a.bm;
import com.google.android.gms.maps.a.bn;
import com.google.android.gms.maps.a.e;
import com.google.android.gms.maps.a.k;
import com.google.android.gms.maps.model.j;
import java.util.ArrayList;
import java.util.List;

public class MapView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final b f3665a;

    static class a implements k {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f3666a;

        /* renamed from: b  reason: collision with root package name */
        private final e f3667b;
        private View c;

        public a(ViewGroup viewGroup, e eVar) {
            this.f3667b = (e) ap.checkNotNull(eVar);
            this.f3666a = (ViewGroup) ap.checkNotNull(viewGroup);
        }

        public final void getMapAsync(f fVar) {
            try {
                this.f3667b.getMapAsync(new m(fVar));
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3667b.onCreate(bundle2);
                bm.zzd(bundle2, bundle);
                this.c = (View) m.zzx(this.f3667b.getView());
                this.f3666a.removeAllViews();
                this.f3666a.addView(this.c);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
        }

        public final void onDestroy() {
            try {
                this.f3667b.onDestroy();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        public final void onEnterAmbient(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3667b.onEnterAmbient(bundle2);
                bm.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onExitAmbient() {
            try {
                this.f3667b.onExitAmbient();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
        }

        public final void onLowMemory() {
            try {
                this.f3667b.onLowMemory();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onPause() {
            try {
                this.f3667b.onPause();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onResume() {
            try {
                this.f3667b.onResume();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3667b.onSaveInstanceState(bundle2);
                bm.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onStart() {
            try {
                this.f3667b.onStart();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onStop() {
            try {
                this.f3667b.onStop();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }
    }

    static class b extends c<a> {
        private final ViewGroup d;
        private final Context e;
        private n<a> f;
        private final GoogleMapOptions g;
        private final List<f> h = new ArrayList();

        b(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.d = viewGroup;
            this.e = context;
            this.g = googleMapOptions;
        }

        public final void getMapAsync(f fVar) {
            if (zzapw() != null) {
                ((a) zzapw()).getMapAsync(fVar);
            } else {
                this.h.add(fVar);
            }
        }

        public final void zza(n<a> nVar) {
            this.f = nVar;
            if (this.f != null && zzapw() == null) {
                try {
                    e.initialize(this.e);
                    e zza = bn.zzdt(this.e).zza(m.zzz(this.e), this.g);
                    if (zza != null) {
                        this.f.zza(new a(this.d, zza));
                        for (f mapAsync : this.h) {
                            ((a) zzapw()).getMapAsync(mapAsync);
                        }
                        this.h.clear();
                    }
                } catch (RemoteException e2) {
                    throw new j(e2);
                } catch (com.google.android.gms.common.c unused) {
                }
            }
        }
    }

    public MapView(Context context) {
        super(context);
        this.f3665a = new b(this, context, null);
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3665a = new b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3665a = new b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.f3665a = new b(this, context, googleMapOptions);
        setClickable(true);
    }

    public void getMapAsync(f fVar) {
        ap.zzge("getMapAsync() must be called on the main thread");
        this.f3665a.getMapAsync(fVar);
    }

    public final void onCreate(Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            this.f3665a.onCreate(bundle);
            if (this.f3665a.zzapw() == null) {
                c.zzb(this);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public final void onDestroy() {
        this.f3665a.onDestroy();
    }

    public final void onEnterAmbient(Bundle bundle) {
        ap.zzge("onEnterAmbient() must be called on the main thread");
        b bVar = this.f3665a;
        if (bVar.zzapw() != null) {
            ((a) bVar.zzapw()).onEnterAmbient(bundle);
        }
    }

    public final void onExitAmbient() {
        ap.zzge("onExitAmbient() must be called on the main thread");
        b bVar = this.f3665a;
        if (bVar.zzapw() != null) {
            ((a) bVar.zzapw()).onExitAmbient();
        }
    }

    public final void onLowMemory() {
        this.f3665a.onLowMemory();
    }

    public final void onPause() {
        this.f3665a.onPause();
    }

    public final void onResume() {
        this.f3665a.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.f3665a.onSaveInstanceState(bundle);
    }

    public final void onStart() {
        this.f3665a.onStart();
    }

    public final void onStop() {
        this.f3665a.onStop();
    }
}
