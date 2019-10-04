package c.c.a.n.w;

import java.util.TimerTask;

/* compiled from: SearchBoxViewModel.kt */
public final class b extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchBoxViewModel$scheduleSearchTask$2 f7033a;

    public b(SearchBoxViewModel$scheduleSearchTask$2 searchBoxViewModel$scheduleSearchTask$2) {
        this.f7033a = searchBoxViewModel$scheduleSearchTask$2;
    }

    public void run() {
        this.f7033a.$searchTask.invoke();
    }
}
