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
import com.google.android.gms.maps.a.i;
import com.google.android.gms.maps.a.l;
import com.google.android.gms.maps.model.j;
import java.util.ArrayList;
import java.util.List;

public class StreetViewPanoramaView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final b f3670a;

    static class a implements l {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f3671a;

        /* renamed from: b  reason: collision with root package name */
        private final i f3672b;
        private View c;

        public a(ViewGroup viewGroup, i iVar) {
            this.f3672b = (i) ap.checkNotNull(iVar);
            this.f3671a = (ViewGroup) ap.checkNotNull(viewGroup);
        }

        public final void getStreetViewPanoramaAsync(g gVar) {
            try {
                this.f3672b.getStreetViewPanoramaAsync(new s(gVar));
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3672b.onCreate(bundle2);
                bm.zzd(bundle2, bundle);
                this.c = (View) m.zzx(this.f3672b.getView());
                this.f3671a.removeAllViews();
                this.f3671a.addView(this.c);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
        }

        public final void onDestroy() {
            try {
                this.f3672b.onDestroy();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
        }

        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
        }

        public final void onLowMemory() {
            try {
                this.f3672b.onLowMemory();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onPause() {
            try {
                this.f3672b.onPause();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onResume() {
            try {
                this.f3672b.onResume();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3672b.onSaveInstanceState(bundle2);
                bm.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onStart() {
        }

        public final void onStop() {
        }
    }

    static class b extends c<a> {
        private final ViewGroup d;
        private final Context e;
        private n<a> f;
        private final StreetViewPanoramaOptions g;
        private final List<g> h = new ArrayList();

        b(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.d = viewGroup;
            this.e = context;
            this.g = streetViewPanoramaOptions;
        }

        public final void getStreetViewPanoramaAsync(g gVar) {
            if (zzapw() != null) {
                ((a) zzapw()).getStreetViewPanoramaAsync(gVar);
            } else {
                this.h.add(gVar);
            }
        }

        public final void zza(n<a> nVar) {
            this.f = nVar;
            if (this.f != null && zzapw() == null) {
                try {
                    e.initialize(this.e);
                    this.f.zza(new a(this.d, bn.zzdt(this.e).zza(m.zzz(this.e), this.g)));
                    for (g streetViewPanoramaAsync : this.h) {
                        ((a) zzapw()).getStreetViewPanoramaAsync(streetViewPanoramaAsync);
                    }
                    this.h.clear();
                } catch (RemoteException e2) {
                    throw new j(e2);
                } catch (com.google.android.gms.common.c unused) {
                }
            }
        }
    }

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.f3670a = new b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3670a = new b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3670a = new b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        super(context);
        this.f3670a = new b(this, context, streetViewPanoramaOptions);
    }

    public void getStreetViewPanoramaAsync(g gVar) {
        ap.zzge("getStreetViewPanoramaAsync() must be called on the main thread");
        this.f3670a.getStreetViewPanoramaAsync(gVar);
    }

    public final void onCreate(Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            this.f3670a.onCreate(bundle);
            if (this.f3670a.zzapw() == null) {
                c.zzb(this);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public final void onDestroy() {
        this.f3670a.onDestroy();
    }

    public final void onLowMemory() {
        this.f3670a.onLowMemory();
    }

    public final void onPause() {
        this.f3670a.onPause();
    }

    public final void onResume() {
        this.f3670a.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.f3670a.onSaveInstanceState(bundle);
    }
}
