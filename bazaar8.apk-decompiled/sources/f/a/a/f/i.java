package f.a.a.f;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;

/* compiled from: PicassoImageGetter */
class i extends AsyncTask<Void, Void, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f14331a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b f14332b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ j f14333c;

    public i(j jVar, String str, b bVar) {
        this.f14333c = jVar;
        this.f14331a = str;
        this.f14332b = bVar;
    }

    /* renamed from: a */
    public Bitmap doInBackground(Void... voidArr) {
        try {
            return this.f14333c.f14335b.a(this.f14331a).d();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: a */
    public void onPostExecute(Bitmap bitmap) {
        try {
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f14333c.f14334a, bitmap);
            int intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
            int min = Math.min(bitmapDrawable.getIntrinsicHeight(), ((int) this.f14333c.f14336c.getTextSize()) * 3);
            bitmapDrawable.setBounds(0, 0, intrinsicWidth, min);
            this.f14332b.a(bitmapDrawable);
            this.f14332b.setBounds(0, 0, intrinsicWidth, min);
            this.f14333c.f14336c.setText(this.f14333c.f14336c.getText());
        } catch (Exception unused) {
        }
    }
}
