package b.x;

import android.content.Context;
import android.text.TextUtils;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import com.crashlytics.android.answers.RetryManager;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.x.b  reason: case insensitive filesystem */
/* compiled from: CollapsiblePreferenceGroupController */
public final class C0319b {

    /* renamed from: a  reason: collision with root package name */
    public final w f3357a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f3358b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3359c = false;

    /* renamed from: b.x.b$a */
    /* compiled from: CollapsiblePreferenceGroupController */
    static class a extends Preference {
        public long N;

        public a(Context context, List<Preference> list, long j2) {
            super(context);
            L();
            a(list);
            this.N = j2 + RetryManager.NANOSECONDS_IN_MS;
        }

        public final void L() {
            d(F.expand_button);
            c(D.ic_arrow_down_24dp);
            f(G.expand_button_title);
            e(999);
        }

        public final void a(List<Preference> list) {
            ArrayList arrayList = new ArrayList();
            CharSequence charSequence = null;
            for (Preference next : list) {
                CharSequence t = next.t();
                boolean z = next instanceof PreferenceGroup;
                if (z && !TextUtils.isEmpty(t)) {
                    arrayList.add((PreferenceGroup) next);
                }
                if (arrayList.contains(next.getParent())) {
                    if (z) {
                        arrayList.add((PreferenceGroup) next);
                    }
                } else if (!TextUtils.isEmpty(t)) {
                    if (charSequence == null) {
                        charSequence = t;
                    } else {
                        charSequence = h().getString(G.summary_collapsed_preference_list, new Object[]{charSequence, t});
                    }
                }
            }
            a(charSequence);
        }

        public long getId() {
            return this.N;
        }

        public void a(B b2) {
            super.a(b2);
            b2.b(false);
        }
    }

    public C0319b(PreferenceGroup preferenceGroup, w wVar) {
        this.f3357a = wVar;
        this.f3358b = preferenceGroup.h();
    }

    public final List<Preference> a(PreferenceGroup preferenceGroup) {
        this.f3359c = false;
        boolean z = preferenceGroup.L() != Integer.MAX_VALUE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int N = preferenceGroup.N();
        int i2 = 0;
        for (int i3 = 0; i3 < N; i3++) {
            Preference g2 = preferenceGroup.g(i3);
            if (g2.z()) {
                if (!z || i2 < preferenceGroup.L()) {
                    arrayList.add(g2);
                } else {
                    arrayList2.add(g2);
                }
                if (!(g2 instanceof PreferenceGroup)) {
                    i2++;
                } else {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) g2;
                    if (!preferenceGroup2.O()) {
                        continue;
                    } else {
                        List<Preference> a2 = a(preferenceGroup2);
                        if (!z || !this.f3359c) {
                            for (Preference next : a2) {
                                if (!z || i2 < preferenceGroup.L()) {
                                    arrayList.add(next);
                                } else {
                                    arrayList2.add(next);
                                }
                                i2++;
                            }
                        } else {
                            throw new IllegalArgumentException("Nested expand buttons are not supported!");
                        }
                    }
                }
            }
        }
        if (z && i2 > preferenceGroup.L()) {
            arrayList.add(a(preferenceGroup, arrayList2));
        }
        this.f3359c |= z;
        return arrayList;
    }

    public List<Preference> b(PreferenceGroup preferenceGroup) {
        return a(preferenceGroup);
    }

    public final a a(PreferenceGroup preferenceGroup, List<Preference> list) {
        a aVar = new a(this.f3358b, list, preferenceGroup.getId());
        aVar.a((Preference.c) new C0318a(this, preferenceGroup));
        return aVar;
    }
}
