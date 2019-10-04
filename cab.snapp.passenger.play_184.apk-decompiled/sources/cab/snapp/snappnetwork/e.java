package cab.snapp.snappnetwork;

import cab.snapp.snappnetwork.a.a;
import cab.snapp.snappnetwork.model.SnappResponseTypeAdapter;
import cab.snapp.snappnetwork.model.b;
import cab.snapp.snappnetwork.model.f;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public final class e<E extends f> {

    /* renamed from: a  reason: collision with root package name */
    final a f1523a;

    /* renamed from: b  reason: collision with root package name */
    Class<E> f1524b;
    com.google.gson.e c;
    private Call<ResponseBody> d;

    e(Call<ResponseBody> call, Class<E> cls, a aVar) {
        this.d = call;
        this.f1524b = cls;
        this.f1523a = aVar;
        this.c = g.provideGsonBuilder().registerTypeAdapter(cab.snapp.snappnetwork.model.e.class, new SnappResponseTypeAdapter(cls)).create();
    }

    public final void performRequest(final a<E> aVar) {
        if (this.d == null) {
            aVar.onFailure(new b("Request class is null"), cab.snapp.snappnetwork.b.a.UNKNOWN_ERROR);
        } else if (this.c == null) {
            aVar.onFailure(new b("Response Model has to be setup"), cab.snapp.snappnetwork.b.a.PARSING_EXCEPTION);
        } else {
            aVar.onBeforeRequest();
            this.d.clone().enqueue(new Callback<ResponseBody>() {
                public final void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    try {
                        int code = response.code();
                        ResponseBody body = response.body();
                        if (200 > code || code > 300 || e.this.f1524b == null || body == null) {
                            aVar.onFailure((b) ((cab.snapp.snappnetwork.model.e) e.this.c.fromJson(response.errorBody().string(), cab.snapp.snappnetwork.model.e.class)).getSnappResponseModel(), code);
                            return;
                        }
                        String string = body.string();
                        if (string == null || string.isEmpty()) {
                            b bVar = new b();
                            bVar.setMessage("No response body!");
                            aVar.onFailure(bVar, cab.snapp.snappnetwork.b.a.RESPONSE_BODY_EXCEPTION);
                        } else if (e.this.f1523a != null) {
                            f parseData = e.this.f1523a.parseData(e.this.f1524b, string);
                            if (parseData != null) {
                                if (parseData.getRawResponse() == null) {
                                    parseData.setRawResponse(string);
                                }
                                aVar.onSuccess(parseData);
                            }
                        } else {
                            aVar.onSuccess(((cab.snapp.snappnetwork.model.e) e.this.c.fromJson(string, cab.snapp.snappnetwork.model.e.class)).getSnappResponseModel());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        b bVar2 = new b();
                        bVar2.setMessage("Cast Error!");
                        aVar.onFailure(bVar2, cab.snapp.snappnetwork.b.a.PARSING_EXCEPTION);
                    }
                }

                public final void onFailure(Call<ResponseBody> call, Throwable th) {
                    b bVar = new b();
                    bVar.setMessage(th.getMessage());
                    aVar.onFailure(bVar, cab.snapp.snappnetwork.b.a.NETWORK_FAILURE);
                }
            });
        }
    }

    public final void cancel() {
        Call<ResponseBody> call = this.d;
        if (call != null) {
            call.cancel();
        }
    }

    public final boolean isCanceled() {
        Call<ResponseBody> call = this.d;
        return call != null && call.isCanceled();
    }

    public final boolean isExecuted() {
        Call<ResponseBody> call = this.d;
        return call != null && call.isExecuted();
    }

    public final Response<ResponseBody> execute() throws IOException {
        Call<ResponseBody> call = this.d;
        if (call != null) {
            return call.clone().execute();
        }
        return null;
    }
}
