package j.a.a;

import java.io.IOException;
import k.g;
import k.j;
import k.y;

/* compiled from: FaultHidingSink */
public class i extends j {

    /* renamed from: b  reason: collision with root package name */
    public boolean f15309b;

    public i(y yVar) {
        super(yVar);
    }

    public void a(IOException iOException) {
        throw null;
    }

    public void a(g gVar, long j2) {
        if (this.f15309b) {
            gVar.skip(j2);
            return;
        }
        try {
            super.a(gVar, j2);
        } catch (IOException e2) {
            this.f15309b = true;
            a(e2);
        }
    }

    public void close() {
        if (!this.f15309b) {
            try {
                super.close();
            } catch (IOException e2) {
                this.f15309b = true;
                a(e2);
            }
        }
    }

    public void flush() {
        if (!this.f15309b) {
            try {
                super.flush();
            } catch (IOException e2) {
                this.f15309b = true;
                a(e2);
            }
        }
    }
}
