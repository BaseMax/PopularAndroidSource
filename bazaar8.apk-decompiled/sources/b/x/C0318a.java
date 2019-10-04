package b.x;

import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;

/* renamed from: b.x.a  reason: case insensitive filesystem */
/* compiled from: CollapsiblePreferenceGroupController */
class C0318a implements Preference.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PreferenceGroup f3355a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0319b f3356b;

    public C0318a(C0319b bVar, PreferenceGroup preferenceGroup) {
        this.f3356b = bVar;
        this.f3355a = preferenceGroup;
    }

    public boolean a(Preference preference) {
        this.f3355a.h(Integer.MAX_VALUE);
        this.f3356b.f3357a.a(preference);
        PreferenceGroup.a M = this.f3355a.M();
        if (M != null) {
            M.a();
        }
        return true;
    }
}
