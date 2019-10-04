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
import com.google.android.gms.maps.a.d;
import com.google.android.gms.maps.a.k;
import com.google.android.gms.maps.model.j;
import java.util.ArrayList;
import java.util.List;

public class SupportMapFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final b f3673a = new b(this);

    static class a implements k {

        /* renamed from: a  reason: collision with root package name */
        private final Fragment f3674a;

        /* renamed from: b  reason: collision with root package name */
        private final d f3675b;

        public a(Fragment fragment, d dVar) {
            this.f3675b = (d) ap.checkNotNull(dVar);
            this.f3674a = (Fragment) ap.checkNotNull(fragment);
        }

        public final void getMapAsync(f fVar) {
            try {
                this.f3675b.getMapAsync(new t(fVar));
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                Bundle arguments = this.f3674a.getArguments();
                if (arguments != null && arguments.containsKey("MapOptions")) {
                    bm.zza(bundle2, "MapOptions", arguments.getParcelable("MapOptions"));
                }
                this.f3675b.onCreate(bundle2);
                bm.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                com.google.android.gms.a.a onCreateView = this.f3675b.onCreateView(m.zzz(layoutInflater), m.zzz(viewGroup), bundle2);
                bm.zzd(bundle2, bundle);
                return (View) m.zzx(onCreateView);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onDestroy() {
            try {
                this.f3675b.onDestroy();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onDestroyView() {
            try {
                this.f3675b.onDestroyView();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onEnterAmbient(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3675b.onEnterAmbient(bundle2);
                bm.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onExitAmbient() {
            try {
                this.f3675b.onExitAmbient();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            GoogleMapOptions googleMapOptions = (GoogleMapOptions) bundle.getParcelable("MapOptions");
            try {
                Bundle bundle3 = new Bundle();
                bm.zzd(bundle2, bundle3);
                this.f3675b.onInflate(m.zzz(activity), googleMapOptions, bundle3);
                bm.zzd(bundle3, bundle2);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onLowMemory() {
            try {
                this.f3675b.onLowMemory();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onPause() {
            try {
                this.f3675b.onPause();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onResume() {
            try {
                this.f3675b.onResume();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                bm.zzd(bundle, bundle2);
                this.f3675b.onSaveInstanceState(bundle2);
                bm.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onStart() {
            try {
                this.f3675b.onStart();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }

        public final void onStop() {
            try {
                this.f3675b.onStop();
            } catch (RemoteException e) {
                throw new j(e);
            }
        }
    }

    static class b extends c<a> {
        private final Fragment d;
        private n<a> e;
        private Activity f;
        private final List<f> g = new ArrayList();

        b(Fragment fragment) {
            this.d = fragment;
        }

        private final void a() {
            if (!(this.f == null || this.e == null || zzapw() != null)) {
                try {
                    e.initialize(this.f);
                    d zzaa = bn.zzdt(this.f).zzaa(m.zzz(this.f));
                    if (zzaa != null) {
                        this.e.zza(new a(this.d, zzaa));
                        for (f mapAsync : this.g) {
                            ((a) zzapw()).getMapAsync(mapAsync);
                        }
                        this.g.clear();
                    }
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

        public final void getMapAsync(f fVar) {
            if (zzapw() != null) {
                ((a) zzapw()).getMapAsync(fVar);
            } else {
                this.g.add(fVar);
            }
        }

        public final void zza(n<a> nVar) {
            this.e = nVar;
            a();
        }
    }

    public static SupportMapFragment newInstance() {
        return new SupportMapFragment();
    }

    public static SupportMapFragment newInstance(GoogleMapOptions googleMapOptions) {
        SupportMapFragment supportMapFragment = new SupportMapFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("MapOptions", googleMapOptions);
        supportMapFragment.setArguments(bundle);
        return supportMapFragment;
    }

    public void getMapAsync(f fVar) {
        ap.zzge("getMapAsync must be called on the main thread.");
        this.f3673a.getMapAsync(fVar);
    }

    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3673a.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = this.f3673a.onCreateView(layoutInflater, viewGroup, bundle);
        onCreateView.setClickable(true);
        return onCreateView;
    }

    public void onDestroy() {
        this.f3673a.onDestroy();
        super.onDestroy();
    }

    public void onDestroyView() {
        this.f3673a.onDestroyView();
        super.onDestroyView();
    }

    public final void onEnterAmbient(Bundle bundle) {
        ap.zzge("onEnterAmbient must be called on the main thread.");
        b bVar = this.f3673a;
        if (bVar.zzapw() != null) {
            ((a) bVar.zzapw()).onEnterAmbient(bundle);
        }
    }

    public final void onExitAmbient() {
        ap.zzge("onExitAmbient must be called on the main thread.");
        b bVar = this.f3673a;
        if (bVar.zzapw() != null) {
            ((a) bVar.zzapw()).onExitAmbient();
        }
    }

    public void onLowMemory() {
        this.f3673a.onLowMemory();
        super.onLowMemory();
    }

    public void onPause() {
        this.f3673a.onPause();
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        this.f3673a.onResume();
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f3673a.onSaveInstanceState(bundle);
    }

    public void onStart() {
        super.onStart();
        this.f3673a.onStart();
    }

    public void onStop() {
        this.f3673a.onStop();
        super.onStop();
    }

    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f3673a.a(activity);
    }

    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            this.f3673a.a(activity);
            GoogleMapOptions createFromAttributes = GoogleMapOptions.createFromAttributes(activity, attributeSet);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("MapOptions", createFromAttributes);
            this.f3673a.onInflate(activity, bundle2, bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
