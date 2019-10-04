package cab.snapp.snappnetwork;

import cab.snapp.snappnetwork.model.SnappResponseTypeAdapter;
import cab.snapp.snappnetwork.model.d;
import cab.snapp.snappnetwork.model.e;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.b.a;
import io.fabric.sdk.android.services.network.c;
import io.reactivex.ae;
import io.reactivex.ai;
import io.reactivex.e.h;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;

public final class f<E extends cab.snapp.snappnetwork.model.f> {

    /* renamed from: a  reason: collision with root package name */
    final MediaType f1527a = MediaType.parse("application/json; charset=utf-8");

    /* renamed from: b  reason: collision with root package name */
    String f1528b;
    int c = 1;
    RequestBody d = null;
    HashMap<String, String> e = null;
    HashMap<String, String> f = new HashMap<>();
    boolean g = true;
    boolean h = true;
    Class<E> i;
    a j = null;
    boolean k;
    private final String l = "SnappNetworkRequest";
    private d m;
    private ApiServiceInterface n;
    private HashMap<String, String> o = new HashMap<>();
    private boolean p;

    f(d dVar, int i2, String str) {
        this.m = dVar;
        this.c = i2;
        this.f1528b = dVar.f1521a + str;
        this.n = this.m.f1522b;
    }

    public final f<E> setPath(String str) {
        this.f1528b += str;
        return this;
    }

    public final f<E> setHttpVerb(int i2) {
        this.c = i2;
        return this;
    }

    public final f<E> GET(String str) {
        this.c = 1;
        this.f1528b += str;
        return this;
    }

    public final f<E> POST(String str) {
        this.c = 2;
        this.f1528b += str;
        return this;
    }

    public final f<E> PUT(String str) {
        this.c = 3;
        this.f1528b += str;
        return this;
    }

    public final f<E> PATCH(String str) {
        this.c = 4;
        this.f1528b += str;
        return this;
    }

    public final f<E> DELETE(String str) {
        this.c = 5;
        this.f1528b += str;
        return this;
    }

    public final f<E> setNotEncoded() {
        this.p = true;
        return this;
    }

    public final <T extends d> f<E> setPostBody(T t) {
        this.d = RequestBody.create(this.f1527a, g.provideGson().toJson((Object) t));
        return this;
    }

    public final f<E> setCustomParser(a aVar) {
        this.j = aVar;
        return this;
    }

    public final f<E> setNotToCertificatePinning() {
        this.n = this.m.c;
        return this;
    }

    @Deprecated
    public final f<E> setRequestBodyHashMap(HashMap<String, String> hashMap) {
        return addBodyParameter(hashMap);
    }

    public final f<E> addBodyParameter(HashMap<String, String> hashMap) {
        if (hashMap == null) {
            return this;
        }
        if (this.e == null) {
            this.e = new HashMap<>();
        }
        this.e.putAll(hashMap);
        return this;
    }

    public final f<E> addBodyParameter(String str, String str2) {
        if (!(str == null || str2 == null)) {
            if (this.e == null) {
                this.e = new HashMap<>();
            }
            this.e.put(str, str2);
        }
        return this;
    }

    @Deprecated
    public final f<E> setAdditionalHeader(HashMap<String, String> hashMap) {
        return addHeaders(hashMap);
    }

    public final f<E> addHeaders(HashMap<String, String> hashMap) {
        if (hashMap != null) {
            this.f.putAll(hashMap);
        }
        return this;
    }

    public final f<E> setDontParse(boolean z) {
        this.k = z;
        return this;
    }

    @Deprecated
    public final f<E> addHeaders(String str, String str2) {
        return addHeader(str, str2);
    }

    public final f<E> addHeader(String str, String str2) {
        if (!(str == null && str2 == null)) {
            this.f.put(str, str2);
        }
        return this;
    }

    @Deprecated
    public final f<E> addQueryParameter(HashMap<String, String> hashMap) {
        return addQueryParameters(hashMap);
    }

    public final f<E> addQueryParameters(HashMap<String, String> hashMap) {
        if (hashMap != null) {
            this.o.putAll(hashMap);
        }
        return this;
    }

    public final f<E> addQueryParameter(String str, String str2) {
        if (!(str == null && str2 == null)) {
            this.o.put(str, str2);
        }
        return this;
    }

    public final f<E> setDontNeedAuthentication() {
        this.h = false;
        return this;
    }

    @Deprecated
    public final e<E> build() {
        Call<ResponseBody> call = null;
        if (a()) {
            return null;
        }
        ApiServiceInterface apiServiceInterface = this.n;
        if (apiServiceInterface != null) {
            int i2 = this.c;
            if (i2 == 1) {
                call = apiServiceInterface.performGetRequest(this.f1528b, this.f, this.o);
            } else if (i2 == 2) {
                RequestBody requestBody = this.d;
                if (requestBody != null) {
                    call = apiServiceInterface.performPostRequest(this.f1528b, (Map<String, String>) this.f, requestBody, (Map<String, String>) this.o);
                } else {
                    HashMap<String, String> hashMap = this.e;
                    if (hashMap != null) {
                        call = this.p ? apiServiceInterface.performPostRequestNotEncoded(this.f1528b, this.f, hashMap, this.o) : apiServiceInterface.performPostRequest(this.f1528b, (Map<String, String>) this.f, (Map<String, String>) hashMap, (Map<String, String>) this.o);
                    }
                }
            } else if (i2 == 3) {
                RequestBody requestBody2 = this.d;
                if (requestBody2 != null) {
                    call = apiServiceInterface.performPutRequest(this.f1528b, (Map<String, String>) this.f, requestBody2, (Map<String, String>) this.o);
                } else {
                    HashMap<String, String> hashMap2 = this.e;
                    if (hashMap2 != null) {
                        call = this.p ? apiServiceInterface.performPutRequestNotEncoded(this.f1528b, this.f, hashMap2, this.o) : apiServiceInterface.performPutRequest(this.f1528b, (Map<String, String>) this.f, (Map<String, String>) hashMap2, (Map<String, String>) this.o);
                    }
                }
            } else if (i2 == 4) {
                RequestBody requestBody3 = this.d;
                if (requestBody3 != null) {
                    call = apiServiceInterface.performPatchRequest(this.f1528b, (Map<String, String>) this.f, requestBody3, (Map<String, String>) this.o);
                } else {
                    HashMap<String, String> hashMap3 = this.e;
                    if (hashMap3 != null) {
                        call = this.p ? apiServiceInterface.performPatchRequestNotEncoded(this.f1528b, this.f, hashMap3, this.o) : apiServiceInterface.performPatchRequest(this.f1528b, (Map<String, String>) this.f, (Map<String, String>) hashMap3, (Map<String, String>) this.o);
                    }
                }
            } else if (i2 == 5) {
                call = apiServiceInterface.performDeleteRequest(this.f1528b, this.f, this.o);
            }
        }
        return new e<>(call, this.i, this.j);
    }

    public final z<ResponseBody> buildObservableResponsebody() {
        if (a()) {
            return z.error((Callable<? extends Throwable>) new Callable<Throwable>() {
                public final Throwable call() throws Exception {
                    return new Exception("Error request parameter!");
                }
            });
        }
        return b();
    }

    public final z<ArrayList<E>> buildObservableArray() {
        z<ResponseBody> b2 = b();
        if (b2 == null) {
            return z.just(new ArrayList());
        }
        return b2.flatMap(new h<ResponseBody, ae<ArrayList<E>>>() {
            public final ae<ArrayList<E>> apply(ResponseBody responseBody) throws Exception {
                try {
                    String string = responseBody.string();
                    if (string == null || string.isEmpty()) {
                        return z.error((Throwable) new Exception("body was null!"));
                    }
                    return z.just((ArrayList) g.provideGsonBuilder().create().fromJson(string, new a<List<E>>() {
                    }.getType()));
                } catch (Exception e) {
                    return z.error((Throwable) e);
                }
            }
        });
    }

    public final ai<E> buildSingle() {
        return ai.fromObservable(buildObservable());
    }

    public final z<E> buildObservable() {
        if (a()) {
            return z.error((Callable<? extends Throwable>) new Callable<Throwable>() {
                public final Throwable call() throws Exception {
                    return new Exception("Error request parameter!");
                }
            });
        }
        z<ResponseBody> b2 = b();
        if (b2 == null) {
            return z.just(new cab.snapp.snappnetwork.model.f());
        }
        return b2.flatMap(new h<ResponseBody, ae<E>>() {
            public final ae<E> apply(ResponseBody responseBody) throws Exception {
                try {
                    String string = responseBody.string();
                    if (string == null || string.isEmpty()) {
                        return z.error((Throwable) new Exception("There where error in response body!"));
                    }
                    if (f.this.k) {
                        return z.just((cab.snapp.snappnetwork.model.f) g.provideGsonBuilder().create().fromJson(string, new a<E>() {
                        }.getType()));
                    }
                    if (f.this.j == null) {
                        return z.just(((e) g.provideGsonBuilder().registerTypeAdapter(e.class, new SnappResponseTypeAdapter(f.this.i)).create().fromJson(string, e.class)).getSnappResponseModel());
                    }
                    cab.snapp.snappnetwork.model.f parseData = f.this.j.parseData(f.this.i, string);
                    if (parseData == null || parseData.getRawResponse() != null) {
                        return z.error((Throwable) new Exception("Custom parser returned null"));
                    }
                    parseData.setRawResponse(string);
                    return z.just(parseData);
                } catch (Exception e) {
                    return z.error((Throwable) e);
                }
            }
        });
    }

    private boolean a() {
        if (this.f1528b == null) {
            return true;
        }
        int i2 = this.c;
        if ((i2 == 4 || i2 == 2 || i2 == 3) && this.d == null && this.e == null) {
            this.d = RequestBody.create(this.f1527a, "{}");
        }
        if (this.h) {
            HashMap<String, String> hashMap = this.f;
            hashMap.put(c.HEADER_AUTHORIZATION, "Bearer " + this.m.a());
        }
        return false;
    }

    private z<ResponseBody> b() {
        ApiServiceInterface apiServiceInterface = this.n;
        z<ResponseBody> zVar = null;
        if (apiServiceInterface == null) {
            return null;
        }
        int i2 = this.c;
        if (i2 == 1) {
            zVar = apiServiceInterface.performGetRequestObservable(this.f1528b, this.f, this.o);
        } else if (i2 == 2) {
            RequestBody requestBody = this.d;
            if (requestBody != null) {
                zVar = apiServiceInterface.performPostRequestObservable(this.f1528b, (Map<String, String>) this.f, requestBody, (Map<String, String>) this.o);
            } else {
                HashMap<String, String> hashMap = this.e;
                if (hashMap != null) {
                    zVar = this.p ? apiServiceInterface.performPostRequestObservableNotEncoded(this.f1528b, this.f, hashMap, this.o) : apiServiceInterface.performPostRequestObservable(this.f1528b, (Map<String, String>) this.f, (Map<String, String>) hashMap, (Map<String, String>) this.o);
                }
            }
        } else if (i2 == 3) {
            RequestBody requestBody2 = this.d;
            if (requestBody2 != null) {
                zVar = apiServiceInterface.performPutRequestObservable(this.f1528b, (Map<String, String>) this.f, requestBody2, (Map<String, String>) this.o);
            } else {
                HashMap<String, String> hashMap2 = this.e;
                if (hashMap2 != null) {
                    zVar = this.p ? apiServiceInterface.performPutRequestObservableNotEncoded(this.f1528b, this.f, hashMap2, this.o) : apiServiceInterface.performPutRequestObservable(this.f1528b, (Map<String, String>) this.f, (Map<String, String>) hashMap2, (Map<String, String>) this.o);
                }
            }
        } else if (i2 == 4) {
            RequestBody requestBody3 = this.d;
            if (requestBody3 != null) {
                zVar = apiServiceInterface.performPatchRequestObservable(this.f1528b, (Map<String, String>) this.f, requestBody3, (Map<String, String>) this.o);
            } else {
                HashMap<String, String> hashMap3 = this.e;
                if (hashMap3 != null) {
                    if (this.p) {
                        apiServiceInterface.performPatchRequestObservableNotEncoded(this.f1528b, this.f, hashMap3, this.o);
                    }
                    zVar = this.n.performPatchRequestObservable(this.f1528b, (Map<String, String>) this.f, (Map<String, String>) this.e, (Map<String, String>) this.o);
                }
            }
        } else if (i2 == 5) {
            zVar = apiServiceInterface.performDeleteRequestObservable(this.f1528b, this.f, this.o);
        }
        return zVar;
    }
}
