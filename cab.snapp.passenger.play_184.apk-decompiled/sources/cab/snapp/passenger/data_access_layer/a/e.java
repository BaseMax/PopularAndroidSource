package cab.snapp.passenger.data_access_layer.a;

import cab.snapp.snappnetwork.model.b;
import com.a.a.a;
import io.fabric.sdk.android.services.settings.t;
import org.a.c;
import retrofit2.HttpException;
import retrofit2.Response;

public final class e extends Throwable {

    /* renamed from: a  reason: collision with root package name */
    private Object f477a;

    /* renamed from: b  reason: collision with root package name */
    private int f478b;
    private String c;

    public e(Object obj, int i) {
        this.c = "";
        this.f477a = obj;
        this.f478b = i;
        if (obj instanceof b) {
            this.c = ((b) obj).getMessage();
        }
    }

    public e(Object obj, int i, String str) {
        this(obj, i);
        this.c = str;
    }

    public static e fromNetworkThrowable(Throwable th) {
        e eVar;
        try {
            Response<?> response = ((HttpException) th).response();
            c cVar = new c(response.errorBody().string());
            if (cVar.has("status")) {
                eVar = new e(th, cVar.getInt("status"));
            } else {
                eVar = new e(th, response.code());
            }
            if (cVar.has("data") && cVar.getJSONObject("data").has(t.PROMPT_MESSAGE_KEY)) {
                eVar.c = cVar.getJSONObject("data").getString(t.PROMPT_MESSAGE_KEY);
            } else if (response.message() != null) {
                eVar.c = response.message();
            }
            return eVar;
        } catch (ClassCastException e) {
            a.logException(e);
            return new e(th, -1);
        } catch (NullPointerException e2) {
            a.logException(e2);
            return new e(th, -1);
        } catch (Exception e3) {
            a.logException(e3);
            return new e(th, -1);
        }
    }

    public final int getErrorCode() {
        return this.f478b;
    }

    public final String getMessage() {
        return this.c;
    }
}
