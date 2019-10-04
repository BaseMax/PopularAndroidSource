package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.c;
import com.bumptech.glide.g.j;
import com.bumptech.glide.g.k;
import com.bumptech.glide.h;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public final class l implements Handler.Callback {
    private static final a i = new a() {
        public final h build(c cVar, h hVar, m mVar, Context context) {
            return new h(cVar, hVar, mVar, context);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final Map<FragmentManager, k> f2413a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final Map<androidx.fragment.app.FragmentManager, SupportRequestManagerFragment> f2414b = new HashMap();
    private volatile h c;
    private final Handler d;
    private final a e;
    private final ArrayMap<View, Fragment> f = new ArrayMap<>();
    private final ArrayMap<View, android.app.Fragment> g = new ArrayMap<>();
    private final Bundle h = new Bundle();

    public interface a {
        h build(c cVar, h hVar, m mVar, Context context);
    }

    public l(a aVar) {
        this.e = aVar == null ? i : aVar;
        this.d = new Handler(Looper.getMainLooper(), this);
    }

    private h a(Context context) {
        if (this.c == null) {
            synchronized (this) {
                if (this.c == null) {
                    this.c = this.e.build(c.get(context.getApplicationContext()), new b(), new g(), context.getApplicationContext());
                }
            }
        }
        return this.c;
    }

    public final h get(Context context) {
        while (context != null) {
            if (k.isOnMainThread() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return get((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return get((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            return a(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    public final h get(FragmentActivity fragmentActivity) {
        if (k.isOnBackgroundThread()) {
            return get(fragmentActivity.getApplicationContext());
        }
        b(fragmentActivity);
        return a((Context) fragmentActivity, fragmentActivity.getSupportFragmentManager(), (Fragment) null, c(fragmentActivity));
    }

    public final h get(Fragment fragment) {
        j.checkNotNull(fragment.getActivity(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (k.isOnBackgroundThread()) {
            return get(fragment.getActivity().getApplicationContext());
        }
        return a((Context) fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    public final h get(Activity activity) {
        if (k.isOnBackgroundThread()) {
            return get(activity.getApplicationContext());
        }
        b(activity);
        return a((Context) activity, activity.getFragmentManager(), (android.app.Fragment) null, c(activity));
    }

    /* JADX WARNING: type inference failed for: r2v7, types: [androidx.fragment.app.Fragment] */
    /* JADX WARNING: type inference failed for: r2v10, types: [androidx.fragment.app.Fragment] */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.bumptech.glide.h get(android.view.View r7) {
        /*
            r6 = this;
            boolean r0 = com.bumptech.glide.g.k.isOnBackgroundThread()
            if (r0 == 0) goto L_0x0013
            android.content.Context r7 = r7.getContext()
            android.content.Context r7 = r7.getApplicationContext()
            com.bumptech.glide.h r7 = r6.get((android.content.Context) r7)
            return r7
        L_0x0013:
            com.bumptech.glide.g.j.checkNotNull(r7)
            android.content.Context r0 = r7.getContext()
            java.lang.String r1 = "Unable to obtain a request manager for a view without a Context"
            com.bumptech.glide.g.j.checkNotNull(r0, r1)
            android.content.Context r0 = r7.getContext()
        L_0x0023:
            boolean r1 = r0 instanceof android.app.Activity
            r2 = 0
            if (r1 == 0) goto L_0x002b
            android.app.Activity r0 = (android.app.Activity) r0
            goto L_0x0037
        L_0x002b:
            boolean r1 = r0 instanceof android.content.ContextWrapper
            if (r1 == 0) goto L_0x0036
            android.content.ContextWrapper r0 = (android.content.ContextWrapper) r0
            android.content.Context r0 = r0.getBaseContext()
            goto L_0x0023
        L_0x0036:
            r0 = r2
        L_0x0037:
            if (r0 != 0) goto L_0x0046
            android.content.Context r7 = r7.getContext()
            android.content.Context r7 = r7.getApplicationContext()
            com.bumptech.glide.h r7 = r6.get((android.content.Context) r7)
            return r7
        L_0x0046:
            boolean r1 = r0 instanceof androidx.fragment.app.FragmentActivity
            r3 = 16908290(0x1020002, float:2.3877235E-38)
            if (r1 == 0) goto L_0x0096
            r1 = r0
            androidx.fragment.app.FragmentActivity r1 = (androidx.fragment.app.FragmentActivity) r1
            androidx.collection.ArrayMap<android.view.View, androidx.fragment.app.Fragment> r4 = r6.f
            r4.clear()
            androidx.fragment.app.FragmentManager r4 = r1.getSupportFragmentManager()
            java.util.List r4 = r4.getFragments()
            androidx.collection.ArrayMap<android.view.View, androidx.fragment.app.Fragment> r5 = r6.f
            a((java.util.Collection<androidx.fragment.app.Fragment>) r4, (java.util.Map<android.view.View, androidx.fragment.app.Fragment>) r5)
            android.view.View r1 = r1.findViewById(r3)
        L_0x0066:
            boolean r3 = r7.equals(r1)
            if (r3 != 0) goto L_0x0085
            androidx.collection.ArrayMap<android.view.View, androidx.fragment.app.Fragment> r2 = r6.f
            java.lang.Object r2 = r2.get(r7)
            androidx.fragment.app.Fragment r2 = (androidx.fragment.app.Fragment) r2
            if (r2 != 0) goto L_0x0085
            android.view.ViewParent r3 = r7.getParent()
            boolean r3 = r3 instanceof android.view.View
            if (r3 == 0) goto L_0x0085
            android.view.ViewParent r7 = r7.getParent()
            android.view.View r7 = (android.view.View) r7
            goto L_0x0066
        L_0x0085:
            androidx.collection.ArrayMap<android.view.View, androidx.fragment.app.Fragment> r7 = r6.f
            r7.clear()
            if (r2 == 0) goto L_0x0091
            com.bumptech.glide.h r7 = r6.get((androidx.fragment.app.Fragment) r2)
            return r7
        L_0x0091:
            com.bumptech.glide.h r7 = r6.get((android.app.Activity) r0)
            return r7
        L_0x0096:
            androidx.collection.ArrayMap<android.view.View, android.app.Fragment> r1 = r6.g
            r1.clear()
            android.app.FragmentManager r1 = r0.getFragmentManager()
            androidx.collection.ArrayMap<android.view.View, android.app.Fragment> r4 = r6.g
            r6.a((android.app.FragmentManager) r1, (androidx.collection.ArrayMap<android.view.View, android.app.Fragment>) r4)
            android.view.View r1 = r0.findViewById(r3)
        L_0x00a8:
            boolean r3 = r7.equals(r1)
            if (r3 != 0) goto L_0x00c7
            androidx.collection.ArrayMap<android.view.View, android.app.Fragment> r2 = r6.g
            java.lang.Object r2 = r2.get(r7)
            android.app.Fragment r2 = (android.app.Fragment) r2
            if (r2 != 0) goto L_0x00c7
            android.view.ViewParent r3 = r7.getParent()
            boolean r3 = r3 instanceof android.view.View
            if (r3 == 0) goto L_0x00c7
            android.view.ViewParent r7 = r7.getParent()
            android.view.View r7 = (android.view.View) r7
            goto L_0x00a8
        L_0x00c7:
            androidx.collection.ArrayMap<android.view.View, android.app.Fragment> r7 = r6.g
            r7.clear()
            if (r2 != 0) goto L_0x00d3
            com.bumptech.glide.h r7 = r6.get((android.app.Activity) r0)
            return r7
        L_0x00d3:
            com.bumptech.glide.h r7 = r6.get((android.app.Fragment) r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.manager.l.get(android.view.View):com.bumptech.glide.h");
    }

    private static void a(Collection<Fragment> collection, Map<View, Fragment> map) {
        if (collection != null) {
            for (Fragment next : collection) {
                if (!(next == null || next.getView() == null)) {
                    map.put(next.getView(), next);
                    a((Collection<Fragment>) next.getChildFragmentManager().getFragments(), map);
                }
            }
        }
    }

    @Deprecated
    private void a(FragmentManager fragmentManager, ArrayMap<View, android.app.Fragment> arrayMap) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (android.app.Fragment next : fragmentManager.getFragments()) {
                if (next.getView() != null) {
                    arrayMap.put(next.getView(), next);
                    a(next.getChildFragmentManager(), arrayMap);
                }
            }
            return;
        }
        b(fragmentManager, arrayMap);
    }

    @Deprecated
    private void b(FragmentManager fragmentManager, ArrayMap<View, android.app.Fragment> arrayMap) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            this.h.putInt("key", i2);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.h, "key");
            } catch (Exception unused) {
            }
            if (fragment != null) {
                if (fragment.getView() != null) {
                    arrayMap.put(fragment.getView(), fragment);
                    if (Build.VERSION.SDK_INT >= 17) {
                        a(fragment.getChildFragmentManager(), arrayMap);
                    }
                }
                i2 = i3;
            } else {
                return;
            }
        }
    }

    private static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @Deprecated
    public final h get(android.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        } else if (k.isOnBackgroundThread() || Build.VERSION.SDK_INT < 17) {
            return get(fragment.getActivity().getApplicationContext());
        } else {
            return a((Context) fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
        }
    }

    /* access modifiers changed from: package-private */
    @Deprecated
    public final k a(Activity activity) {
        return a(activity.getFragmentManager(), (android.app.Fragment) null, c(activity));
    }

    private k a(FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        k kVar = (k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (kVar == null) {
            kVar = this.f2413a.get(fragmentManager);
            if (kVar == null) {
                kVar = new k();
                kVar.a(fragment);
                if (z) {
                    kVar.f2410a.a();
                }
                this.f2413a.put(fragmentManager, kVar);
                fragmentManager.beginTransaction().add(kVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.d.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return kVar;
    }

    @Deprecated
    private h a(Context context, FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        k a2 = a(fragmentManager, fragment, z);
        h requestManager = a2.getRequestManager();
        if (requestManager != null) {
            return requestManager;
        }
        h build = this.e.build(c.get(context), a2.f2410a, a2.getRequestManagerTreeNode(), context);
        a2.setRequestManager(build);
        return build;
    }

    /* access modifiers changed from: package-private */
    public final SupportRequestManagerFragment a(FragmentActivity fragmentActivity) {
        return a(fragmentActivity.getSupportFragmentManager(), (Fragment) null, c(fragmentActivity));
    }

    private static boolean c(Activity activity) {
        return !activity.isFinishing();
    }

    private SupportRequestManagerFragment a(androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (supportRequestManagerFragment == null) {
            supportRequestManagerFragment = this.f2414b.get(fragmentManager);
            if (supportRequestManagerFragment == null) {
                supportRequestManagerFragment = new SupportRequestManagerFragment();
                supportRequestManagerFragment.a(fragment);
                if (z) {
                    supportRequestManagerFragment.f2402a.a();
                }
                this.f2414b.put(fragmentManager, supportRequestManagerFragment);
                fragmentManager.beginTransaction().add((Fragment) supportRequestManagerFragment, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.d.obtainMessage(2, fragmentManager).sendToTarget();
            }
        }
        return supportRequestManagerFragment;
    }

    private h a(Context context, androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment, boolean z) {
        SupportRequestManagerFragment a2 = a(fragmentManager, fragment, z);
        h requestManager = a2.getRequestManager();
        if (requestManager != null) {
            return requestManager;
        }
        h build = this.e.build(c.get(context), a2.f2402a, a2.getRequestManagerTreeNode(), context);
        a2.setRequestManager(build);
        return build;
    }

    public final boolean handleMessage(Message message) {
        Object obj;
        int i2 = message.what;
        Object obj2 = null;
        boolean z = true;
        if (i2 == 1) {
            obj2 = (FragmentManager) message.obj;
            obj = this.f2413a.remove(obj2);
        } else if (i2 != 2) {
            z = false;
            obj = null;
        } else {
            obj2 = (androidx.fragment.app.FragmentManager) message.obj;
            obj = this.f2414b.remove(obj2);
        }
        if (z && obj == null && Log.isLoggable("RMRetriever", 5)) {
            new StringBuilder("Failed to remove expected request manager fragment, manager: ").append(obj2);
        }
        return z;
    }
}
