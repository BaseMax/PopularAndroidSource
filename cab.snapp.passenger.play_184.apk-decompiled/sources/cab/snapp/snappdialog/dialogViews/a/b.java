package cab.snapp.snappdialog.dialogViews.a;

import okhttp3.internal.http.StatusLine;

public final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    C0027b f1474a;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private b f1475a = new b((byte) 0);

        public final a setOnDateSelectedListener(C0027b bVar) {
            this.f1475a.f1474a = bVar;
            return this;
        }

        public final b build() {
            return this.f1475a;
        }
    }

    /* renamed from: cab.snapp.snappdialog.dialogViews.a.b$b  reason: collision with other inner class name */
    public interface C0027b {
        void onDateSelected(cab.snapp.snappdialog.c.a aVar);
    }

    public final int getType() {
        return StatusLine.HTTP_TEMP_REDIRECT;
    }

    /* synthetic */ b(byte b2) {
        this();
    }

    private b() {
    }

    public final C0027b getDateSelectedListener() {
        return this.f1474a;
    }
}
