package cab.snapp.passenger.units.referral.c;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import com.koushikdutta.async.http.a.j;
import java.util.List;

public final class a extends AsyncTask<String, Void, List<ResolveInfo>> {

    /* renamed from: a  reason: collision with root package name */
    private PackageManager f1057a;

    /* renamed from: b  reason: collision with root package name */
    private String f1058b;
    private C0024a c;

    /* renamed from: cab.snapp.passenger.units.referral.c.a$a  reason: collision with other inner class name */
    public interface C0024a {
        void onTaskFinished(List<ResolveInfo> list);

        void onTaskStarted();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        List list = (List) obj;
        super.onPostExecute(list);
        C0024a aVar = this.c;
        if (aVar != null) {
            aVar.onTaskFinished(list);
        }
    }

    public a(PackageManager packageManager, String str, C0024a aVar) {
        this.f1057a = packageManager;
        this.f1058b = str;
        this.c = aVar;
    }

    /* access modifiers changed from: protected */
    public final void onPreExecute() {
        super.onPreExecute();
        C0024a aVar = this.c;
        if (aVar != null) {
            aVar.onTaskStarted();
        }
    }

    private List<ResolveInfo> a() {
        try {
            Intent intent = new Intent("android.intent.action.SEND", null);
            intent.setType(j.CONTENT_TYPE);
            intent.putExtra("android.intent.extra.TEXT", this.f1058b);
            return this.f1057a.queryIntentActivities(intent, 0);
        } catch (Exception e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
            return null;
        }
    }
}
