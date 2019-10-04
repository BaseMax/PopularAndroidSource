package com.google.android.gms.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.a.b;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.j;
import java.util.LinkedList;

public abstract class c<T extends b> {

    /* renamed from: a  reason: collision with root package name */
    T f2544a;

    /* renamed from: b  reason: collision with root package name */
    Bundle f2545b;
    LinkedList<k> c;
    private final n<T> d = new d(this);

    private final void a(int i) {
        while (!this.c.isEmpty() && this.c.getLast().getState() >= i) {
            this.c.removeLast();
        }
    }

    private final void a(Bundle bundle, k kVar) {
        T t = this.f2544a;
        if (t != null) {
            kVar.zzb(t);
            return;
        }
        if (this.c == null) {
            this.c = new LinkedList<>();
        }
        this.c.add(kVar);
        if (bundle != null) {
            Bundle bundle2 = this.f2545b;
            if (bundle2 == null) {
                this.f2545b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        zza(this.d);
    }

    public static void zzb(FrameLayout frameLayout) {
        com.google.android.gms.common.b instance = com.google.android.gms.common.b.getInstance();
        Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = instance.isGooglePlayServicesAvailable(context);
        String zzi = bo.zzi(context, isGooglePlayServicesAvailable);
        String zzk = bo.zzk(context, isGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(zzi);
        linearLayout.addView(textView);
        Intent zza = j.zza(context, isGooglePlayServicesAvailable, null);
        if (zza != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(zzk);
            linearLayout.addView(button);
            button.setOnClickListener(new h(context, zza));
        }
    }

    public final void onCreate(Bundle bundle) {
        a(bundle, new f(this, bundle));
    }

    public final void onDestroy() {
        T t = this.f2544a;
        if (t != null) {
            t.onDestroy();
        } else {
            a(1);
        }
    }

    public final void onDestroyView() {
        T t = this.f2544a;
        if (t != null) {
            t.onDestroyView();
        } else {
            a(2);
        }
    }

    public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
        a(bundle2, new e(this, activity, bundle, bundle2));
    }

    public final void onLowMemory() {
        T t = this.f2544a;
        if (t != null) {
            t.onLowMemory();
        }
    }

    public final void onPause() {
        T t = this.f2544a;
        if (t != null) {
            t.onPause();
        } else {
            a(5);
        }
    }

    public final void onResume() {
        a(null, new j(this));
    }

    public final void onSaveInstanceState(Bundle bundle) {
        T t = this.f2544a;
        if (t != null) {
            t.onSaveInstanceState(bundle);
            return;
        }
        Bundle bundle2 = this.f2545b;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    public final void onStart() {
        a(null, new i(this));
    }

    public final void onStop() {
        T t = this.f2544a;
        if (t != null) {
            t.onStop();
        } else {
            a(4);
        }
    }

    /* access modifiers changed from: protected */
    public abstract void zza(n<T> nVar);

    public final T zzapw() {
        return this.f2544a;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        g gVar = new g(this, frameLayout, layoutInflater, viewGroup, bundle);
        a(bundle, gVar);
        if (this.f2544a == null) {
            com.google.android.gms.common.b instance = com.google.android.gms.common.b.getInstance();
            Context context = frameLayout.getContext();
            int isGooglePlayServicesAvailable = instance.isGooglePlayServicesAvailable(context);
            String zzi = bo.zzi(context, isGooglePlayServicesAvailable);
            String zzk = bo.zzk(context, isGooglePlayServicesAvailable);
            LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
            linearLayout.setOrientation(1);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            frameLayout.addView(linearLayout);
            TextView textView = new TextView(frameLayout.getContext());
            textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            textView.setText(zzi);
            linearLayout.addView(textView);
            Intent zza = j.zza(context, isGooglePlayServicesAvailable, null);
            if (zza != null) {
                Button button = new Button(context);
                button.setId(16908313);
                button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                button.setText(zzk);
                linearLayout.addView(button);
                button.setOnClickListener(new h(context, zza));
            }
        }
        return frameLayout;
    }
}
