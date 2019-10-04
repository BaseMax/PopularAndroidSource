package b.x;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: PreferenceFragmentCompat */
class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f3365a;

    public q(r rVar) {
        this.f3365a = rVar;
    }

    public void run() {
        RecyclerView recyclerView = this.f3365a.Z;
        recyclerView.focusableViewAvailable(recyclerView);
    }
}
