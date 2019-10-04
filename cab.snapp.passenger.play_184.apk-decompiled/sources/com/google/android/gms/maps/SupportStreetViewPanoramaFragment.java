package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.google.android.gms.a.c;
import com.google.android.gms.a.m;
import com.google.android.gms.a.n;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.maps.a.bm;
import com.google.android.gms.maps.a.bn;
import com.google.android.gms.maps.a.h;
import com.google.android.gms.maps.a.l;
import com.google.android.gms.maps.model.j;
import java.util.ArrayList;
import java.util.List;

public class SupportStreetViewPanoramaFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final b f3676a = new b(this);

    static class a implements l {

        /* renamed from: a  reason: collision with root package name */
        private final Fragment f3677a;

        /* renamed from: b  reason: collision with root package name */
        private final h f3678b;

        public a(Fragment fragment, h hVar) {
            this.f3678b = (h) ap.checkNotNull(hVar);
            this.f3677a = (Fragment) ap.checkNotNull(fragment);
        }

        public final void getStreetViewPanoramaAsync(g gVar) {
            try {
                this.f3678b.getStreetViewPanoramaAsync(new u(gVar));
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                Bundle arguments = this.f3677a.getArguments();
                if (arguments != null && arguments.containsKey("StreetViewPanoramaOptions")) {
                    bm.zza(bundle2, "StreetViewPanoramaOptions", arguments.getParcelable("StreetViewPanoramaOptions"));
                }
                this.f3678b.onCreate(bundle2);
                bm.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                com.google.android.gms.a.a onCreateView = this.f3678b.onCreateView(m.zzz(layoutInflater), m.zzz(viewGroup), bundle2);
                bm.zzd(bundle2, bundle);
                return (View) m.zzx(onCreateView);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onDestroy() {
            try {
                this.f3678b.onDestroy();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onDestroyView() {
            try {
                this.f3678b.onDestroyView();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            try {
                Bundle bundle3 = new Bundle();
                bm.zzd(bundle2, bundle3);
                this.f3678b.onInflate(m.zzz(activity), null, bundle3);
                bm.zzd(bundle3, bundle2);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onLowMemory() {
            try {
                this.f3678b.onLowMemory();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onPause() {
            try {
                this.f3678b.onPause();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onResume() {
            try {
                this.f3678b.onResume();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3678b.onSaveInstanceState(bundle2);
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
        private final Fragment d;
        private n<a> e;
        private Activity f;
        private final List<g> g = new ArrayList();

        b(Fragment fragment) {
            this.d = fragment;
        }

        private final void a() {
            if (!(this.f == null || this.e == null || zzapw() != null)) {
                try {
                    e.initialize(this.f);
                    this.e.zza(new a(this.d, bn.zzdt(this.f).zzab(m.zzz(this.f))));
                    for (g streetViewPanoramaAsync : this.g) {
                        ((a) zzapw()).getStreetViewPanoramaAsync(streetViewPanoramaAsync);
                    }
                    this.g.clear();
                } catch (RemoteException e2) {
                    throw new j(e2);
                } catch (com.google.android.gms.common.c unused) {
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Activity activity) {
            this.f = activity;
            a();
        }

        public final void getStreetViewPanoramaAsync(g gVar) {
            if (zzapw() != null) {
                ((a) zzapw()).getStreetViewPanoramaAsync(gVar);
            } else {
                this.g.add(gVar);
            }
        }

        public final void zza(n<a> nVar) {
            this.e = nVar;
            a();
        }
    }

    public static SupportStreetViewPanoramaFragment newInstance() {
        return new SupportStreetViewPanoramaFragment();
    }

    public static SupportStreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions streetViewPanoramaOptions) {
        SupportStreetViewPanoramaFragment supportStreetViewPanoramaFragment = new SupportStreetViewPanoramaFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("StreetViewPanoramaOptions", streetViewPanoramaOptions);
        supportStreetViewPanoramaFragment.setArguments(bundle);
        return supportStreetViewPanoramaFragment;
    }

    public void getStreetViewPanoramaAsync(g gVar) {
        ap.zzge("getStreetViewPanoramaAsync() must be called on the main thread");
        this.f3676a.getStreetViewPanoramaAsync(gVar);
    }

    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3676a.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f3676a.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onDestroy() {
        this.f3676a.onDestroy();
        super.onDestroy();
    }

    public void onDestroyView() {
        this.f3676a.onDestroyView();
        super.onDestroyView();
    }

    public void onLowMemory() {
        this.f3676a.onLowMemory();
        super.onLowMemory();
    }

    public void onPause() {
        this.f3676a.onPause();
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        this.f3676a.onResume();
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportStreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f3676a.onSaveInstanceState(bundle);
    }

    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f3676a.a(activity);
    }

    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            this.f3676a.a(activity);
            this.f3676a.onInflate(activity, new Bundle(), bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
