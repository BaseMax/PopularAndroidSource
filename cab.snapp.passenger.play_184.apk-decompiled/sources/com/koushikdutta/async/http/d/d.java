package com.koushikdutta.async.http.d;

import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.v;
import org.eclipse.paho.a.a.w;

public class d extends v {
    static final /* synthetic */ boolean g = (!d.class.desiredAssertionStatus());
    long d;
    long e;
    l f = new l();

    public d(long j) {
        this.d = j;
    }

    public final void report(Exception exc) {
        if (exc == null && this.e != this.d) {
            exc = new h("End of data reached before content length was read: " + this.e + w.TOPIC_LEVEL_SEPARATOR + this.d + " Paused: " + isPaused());
        }
        super.report(exc);
    }

    public void onDataAvailable(n nVar, l lVar) {
        if (g || this.e < this.d) {
            lVar.get(this.f, (int) Math.min(this.d - this.e, (long) lVar.remaining()));
            int remaining = this.f.remaining();
            super.onDataAvailable(nVar, this.f);
            this.e += (long) (remaining - this.f.remaining());
            this.f.get(lVar);
            if (this.e == this.d) {
                report(null);
                return;
            }
            return;
        }
        throw new AssertionError();
    }
}
