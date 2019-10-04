package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import com.bumptech.glide.c;
import com.bumptech.glide.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Deprecated
public final class k extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    final a f2410a;

    /* renamed from: b  reason: collision with root package name */
    private final m f2411b;
    private final Set<k> c;
    private h d;
    private k e;
    private Fragment f;

    class a implements m {
        a() {
        }

        public final Set<h> getDescendants() {
            Set<k> a2 = k.this.a();
            HashSet hashSet = new HashSet(a2.size());
            for (k next : a2) {
                if (next.getRequestManager() != null) {
                    hashSet.add(next.getRequestManager());
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + k.this + "}";
        }
    }

    public k() {
        this(new a());
    }

    private k(a aVar) {
        this.f2411b = new a();
        this.c = new HashSet();
        this.f2410a = aVar;
    }

    public final void setRequestManager(h hVar) {
        this.d = hVar;
    }

    public final h getRequestManager() {
        return this.d;
    }

    public final m getRequestManagerTreeNode() {
        return this.f2411b;
    }

    private void a(k kVar) {
        this.c.add(kVar);
    }

    private void b(k kVar) {
        this.c.remove(kVar);
    }

    /* access modifiers changed from: package-private */
    public final Set<k> a() {
        if (equals(this.e)) {
            return Collections.unmodifiableSet(this.c);
        }
        if (this.e == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (k next : this.e.a()) {
            if (b(next.getParentFragment())) {
                hashSet.add(next);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* access modifiers changed from: package-private */
    public final void a(Fragment fragment) {
        this.f = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            a(fragment.getActivity());
        }
    }

    private boolean b(Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void a(Activity activity) {
        b();
        this.e = c.get(activity).getRequestManagerRetriever().a(activity);
        if (!equals(this.e)) {
            this.e.a(this);
        }
    }

    private void b() {
        k kVar = this.e;
        if (kVar != null) {
            kVar.b(this);
            this.e = null;
        }
    }

    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException unused) {
        }
    }

    public final void onDetach() {
        super.onDetach();
        b();
    }

    public final void onStart() {
        super.onStart();
        this.f2410a.a();
    }

    public final void onStop() {
        super.onStop();
        this.f2410a.b();
    }

    public final void onDestroy() {
        super.onDestroy();
        this.f2410a.c();
        b();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        if (parentFragment == null) {
            parentFragment = this.f;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
