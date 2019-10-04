package b.x;

import androidx.preference.PreferenceGroup;

/* compiled from: PreferenceGroup */
class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PreferenceGroup f3370a;

    public s(PreferenceGroup preferenceGroup) {
        this.f3370a = preferenceGroup;
    }

    public void run() {
        synchronized (this) {
            this.f3370a.T.clear();
        }
    }
}
