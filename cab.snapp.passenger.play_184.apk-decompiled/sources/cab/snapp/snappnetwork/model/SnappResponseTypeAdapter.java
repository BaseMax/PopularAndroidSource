package cab.snapp.snappnetwork.model;

import cab.snapp.snappnetwork.g;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.h;
import com.google.gson.i;
import com.google.gson.l;
import java.lang.reflect.Type;

public class SnappResponseTypeAdapter implements i<e> {

    /* renamed from: a  reason: collision with root package name */
    private Class<? extends f> f1536a;

    public SnappResponseTypeAdapter(Class<? extends f> cls) {
        this.f1536a = cls;
    }

    public e deserialize(JsonElement jsonElement, Type type, h hVar) throws l {
        f fVar;
        e eVar = new e();
        JsonObject asJsonObject = jsonElement.getAsJsonObject();
        int i = 200;
        if (asJsonObject.get("data") != null) {
            int asInt = asJsonObject.get("status") != null ? asJsonObject.get("status").getAsInt() : 200;
            JsonElement jsonElement2 = asJsonObject.get("data");
            if (jsonElement2 != null) {
                if (asInt < 200 || asInt > 300) {
                    fVar = (f) g.provideGson().fromJson(jsonElement2, b.class);
                } else {
                    fVar = (f) g.provideGson().fromJson(jsonElement2, this.f1536a);
                }
                fVar.setRawResponse(jsonElement2.toString());
            } else {
                fVar = null;
            }
            i = asInt;
        } else if (asJsonObject.get("error_description") != null) {
            i = 401;
            b bVar = new b(((a) g.provideGson().fromJson((JsonElement) asJsonObject, a.class)).getErrorDescription());
            bVar.setRawResponse(asJsonObject.toString());
            fVar = bVar;
        } else {
            fVar = (f) g.provideGson().fromJson((JsonElement) asJsonObject, this.f1536a);
            fVar.setRawResponse(asJsonObject.toString());
        }
        eVar.setSnappApiStatus(i);
        eVar.setSnappResponseModel(fVar);
        return eVar;
    }
}
