package com.bumptech.glide.manager;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.c;
import com.bumptech.glide.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class SupportRequestManagerFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    final a f2402a;

    /* renamed from: b  reason: collision with root package name */
    private final m f2403b;
    private final Set<SupportRequestManagerFragment> c;
    private SupportRequestManagerFragment d;
    private h e;
    private Fragment f;

    class a implements m {
        a() {
        }

        public final Set<h> getDescendants() {
            Set<SupportRequestManagerFragment> a2 = SupportRequestManagerFragment.this.a();
            HashSet hashSet = new HashSet(a2.size());
            for (SupportRequestManagerFragment next : a2) {
                if (next.getRequestManager() != null) {
                    hashSet.add(next.getRequestManager());
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        this(new a());
    }

    public SupportRequestManagerFragment(a aVar) {
        this.f2403b = new a();
        this.c = new HashSet();
        this.f2402a = aVar;
    }

    public void setRequestManager(h hVar) {
        this.e = hVar;
    }

    public h getRequestManager() {
        return this.e;
    }

    public m getRequestManagerTreeNode() {
        return this.f2403b;
    }

    private void a(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.c.add(supportRequestManagerFragment);
    }

    private void b(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.c.remove(supportRequestManagerFragment);
    }

    /* access modifiers changed from: package-private */
    public final Set<SupportRequestManagerFragment> a() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.d;
        if (supportRequestManagerFragment == null) {
            return Collections.emptySet();
        }
        if (equals(supportRequestManagerFragment)) {
            return Collections.unmodifiableSet(this.c);
        }
        HashSet hashSet = new HashSet();
        for (SupportRequestManagerFragment next : this.d.a()) {
            if (b(next.b())) {
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

    private Fragment b() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        return this.f;
    }

    private boolean b(Fragment fragment) {
        Fragment b2 = b();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(b2)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void a(FragmentActivity fragmentActivity) {
        c();
        this.d = c.get(fragmentActivity).getRequestManagerRetriever().a(fragmentActivity);
        if (!equals(this.d)) {
            this.d.a(this);
        }
    }

    private void c() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.d;
        if (supportRequestManagerFragment != null) {
            supportRequestManagerFragment.b(this);
            this.d = null;
        }
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            a(getActivity());
        } catch (IllegalStateException unused) {
        }
    }

    public void onDetach() {
        super.onDetach();
        this.f = null;
        c();
    }

    public void onStart() {
        super.onStart();
        this.f2402a.a();
    }

    public void onStop() {
        super.onStop();
        this.f2402a.b();
    }

    public void onDestroy() {
        super.onDestroy();
        this.f2402a.c();
        c();
    }

    public String toString() {
        return super.toString() + "{parent=" + b() + "}";
    }
}
