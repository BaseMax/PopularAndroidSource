package com.koushikdutta.ion;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.koushikdutta.async.af;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.c.b;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.a.a;
import com.koushikdutta.async.http.a.f;
import com.koushikdutta.async.http.a.g;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.s;
import com.koushikdutta.async.http.t;
import com.koushikdutta.async.l;
import com.koushikdutta.async.q;
import com.koushikdutta.async.r;
import com.koushikdutta.async.v;
import com.koushikdutta.ion.Loader;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.LocallyCachedStatus;
import com.koushikdutta.ion.builder.Builders;
import com.koushikdutta.ion.builder.FutureBuilder;
import com.koushikdutta.ion.builder.LoadBuilder;
import com.koushikdutta.ion.future.ImageViewFuture;
import com.koushikdutta.ion.future.ResponseFuture;
import com.koushikdutta.ion.gson.GsonArrayParser;
import com.koushikdutta.ion.gson.GsonBody;
import com.koushikdutta.ion.gson.GsonObjectParser;
import com.koushikdutta.ion.gson.GsonSerializer;
import com.koushikdutta.ion.gson.PojoBody;
import io.fabric.sdk.android.services.network.c;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.paho.a.a.w;
import org.w3c.dom.Document;

class IonRequestBuilder implements Builders.Any.B, Builders.Any.F, Builders.Any.M, Builders.Any.U, LoadBuilder<Builders.Any.B> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    a body;
    s bodyParameters;
    ContextReference contextReference;
    boolean followRedirect = true;
    ArrayList<WeakReference<Object>> groups;
    Handler handler = Ion.mainHandler;
    n headers;
    HeadersCallback headersCallback;
    Ion ion;
    LoadRequestCallback loadRequestCallback;
    int logLevel;
    String logTag;
    String method = "GET";
    boolean methodWasSet;
    f multipartBody;
    boolean noCache;
    ProgressCallback progress;
    WeakReference<ProgressBar> progressBar;
    WeakReference<ProgressDialog> progressDialog;
    ProgressCallback progressHandler;
    String proxyHost;
    int proxyPort;
    s query;
    int timeoutMilliseconds = d.DEFAULT_TIMEOUT;
    ProgressCallback uploadProgress;
    ProgressBar uploadProgressBar;
    ProgressDialog uploadProgressDialog;
    ProgressCallback uploadProgressHandler;
    String uri;

    class EmitterTransform<T> extends j<T, Loader.LoaderEmitter> implements ResponseFuture<T> {
        Runnable cancelCallback;
        com.koushikdutta.async.n emitter;
        d finalRequest;
        HeadersResponse headers;
        d initialRequest;
        ResponseServedFrom servedFrom;

        public Response<T> getResponse(Exception exc, T t) {
            Response response = new Response(this.finalRequest, this.servedFrom, this.headers, exc, t);
            return response;
        }

        public e<Response<T>> withResponse() {
            final i iVar = new i();
            setCallback((com.koushikdutta.async.b.f) new com.koushikdutta.async.b.f<T>() {
                public void onCompleted(Exception exc, T t) {
                    if (EmitterTransform.this.emitter != null) {
                        iVar.setComplete(EmitterTransform.this.getResponse(exc, t));
                    } else {
                        iVar.setComplete(exc, null);
                    }
                }
            });
            iVar.setParent((com.koushikdutta.async.b.a) this);
            return iVar;
        }

        public EmitterTransform(Runnable runnable) {
            this.cancelCallback = runnable;
            IonRequestBuilder.this.ion.addFutureInFlight(this, IonRequestBuilder.this.contextReference.getContext());
            if (IonRequestBuilder.this.groups != null) {
                Iterator<WeakReference<Object>> it = IonRequestBuilder.this.groups.iterator();
                while (it.hasNext()) {
                    Object obj = it.next().get();
                    if (obj != null) {
                        IonRequestBuilder.this.ion.addFutureInFlight(this, obj);
                    }
                }
            }
        }

        public void cancelCleanup() {
            super.cancelCleanup();
            com.koushikdutta.async.n nVar = this.emitter;
            if (nVar != null) {
                nVar.close();
            }
            Runnable runnable = this.cancelCallback;
            if (runnable != null) {
                runnable.run();
            }
        }

        public void error(Exception exc) {
            IonRequestBuilder.this.postExecute(this, exc, null);
        }

        /* access modifiers changed from: protected */
        public void transform(Loader.LoaderEmitter loaderEmitter) throws Exception {
            r rVar;
            this.emitter = loaderEmitter.getDataEmitter();
            this.servedFrom = loaderEmitter.getServedFrom();
            this.headers = loaderEmitter.getHeaders();
            this.finalRequest = loaderEmitter.getRequest();
            if (IonRequestBuilder.this.headersCallback != null) {
                final HeadersResponse headers2 = loaderEmitter.getHeaders();
                h.post(IonRequestBuilder.this.handler, (Runnable) new Runnable() {
                    public void run() {
                        IonRequestBuilder.this.headersCallback.onHeaders(headers2);
                    }
                });
            }
            final long length = loaderEmitter.length();
            com.koushikdutta.async.n nVar = this.emitter;
            if (!(nVar instanceof r)) {
                rVar = new v();
                rVar.setDataEmitter(this.emitter);
            } else {
                rVar = (r) nVar;
            }
            this.emitter = rVar;
            rVar.setDataTracker(new r.a() {
                static final /* synthetic */ boolean $assertionsDisabled = false;
                int lastPercent;

                static {
                    Class<IonRequestBuilder> cls = IonRequestBuilder.class;
                }

                public void onData(final int i) {
                    if (IonRequestBuilder.this.contextReference.isAlive() != null) {
                        EmitterTransform.this.initialRequest.logd("context has died, cancelling");
                        EmitterTransform.this.cancelSilently();
                        return;
                    }
                    final int i2 = (int) ((((float) i) / ((float) length)) * 100.0f);
                    if (!((IonRequestBuilder.this.progressBar == null && IonRequestBuilder.this.progressDialog == null) || i2 == this.lastPercent)) {
                        h.post(Ion.mainHandler, (Runnable) new Runnable() {
                            public void run() {
                                if (!EmitterTransform.this.isCancelled() && !EmitterTransform.this.isDone()) {
                                    if (IonRequestBuilder.this.progressBar != null) {
                                        ProgressBar progressBar = (ProgressBar) IonRequestBuilder.this.progressBar.get();
                                        if (progressBar != null) {
                                            progressBar.setProgress(i2);
                                        }
                                    }
                                    if (IonRequestBuilder.this.progressDialog != null) {
                                        ProgressDialog progressDialog = (ProgressDialog) IonRequestBuilder.this.progressDialog.get();
                                        if (progressDialog != null) {
                                            progressDialog.setProgress(i2);
                                        }
                                    }
                                }
                            }
                        });
                    }
                    this.lastPercent = i2;
                    if (IonRequestBuilder.this.progress != null) {
                        IonRequestBuilder.this.progress.onProgress((long) i, length);
                    }
                    if (IonRequestBuilder.this.progressHandler != null) {
                        h.post(Ion.mainHandler, (Runnable) new Runnable() {
                            public void run() {
                                if (!EmitterTransform.this.isCancelled() && !EmitterTransform.this.isDone()) {
                                    IonRequestBuilder.this.progressHandler.onProgress((long) i, length);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    interface LoadRequestCallback {
        boolean loadRequest(d dVar);
    }

    public IonRequestBuilder(ContextReference contextReference2, Ion ion2) {
        contextReference2.isAlive();
        this.ion = ion2;
        this.contextReference = contextReference2;
    }

    public IonRequestBuilder load(String str) {
        return loadInternal("GET", str);
    }

    private IonRequestBuilder loadInternal(String str, String str2) {
        this.method = str;
        if (!TextUtils.isEmpty(str2) && str2.startsWith(w.TOPIC_LEVEL_SEPARATOR)) {
            str2 = new File(str2).toURI().toString();
        }
        this.uri = str2;
        return this;
    }

    public IonRequestBuilder load(String str, String str2) {
        this.methodWasSet = true;
        return loadInternal(str, str2);
    }

    private n getHeaders() {
        if (this.headers == null) {
            this.headers = new n();
            n nVar = this.headers;
            String str = this.uri;
            d.setDefaultHeaders(nVar, str == null ? null : Uri.parse(str));
        }
        return this.headers;
    }

    public IonRequestBuilder userAgent(String str) {
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        return setHeader("User-Agent", str);
    }

    public IonRequestBuilder setHeader(String str, String str2) {
        if (str2 == null) {
            getHeaders().removeAll(str);
        } else {
            getHeaders().set(str, str2);
        }
        return this;
    }

    public IonRequestBuilder addHeader(String str, String str2) {
        if (str2 != null) {
            getHeaders().add(str, str2);
        }
        return this;
    }

    public IonRequestBuilder addHeaders(Map<String, List<String>> map) {
        if (map == null) {
            return this;
        }
        n headers2 = getHeaders();
        for (Map.Entry next : map.entrySet()) {
            headers2.addAll((String) next.getKey(), (List) next.getValue());
        }
        return this;
    }

    public Builders.Any.B noCache() {
        this.noCache = true;
        return setHeader(c.HEADER_CACHE_CONTROL, "no-cache");
    }

    public IonRequestBuilder addQuery(String str, String str2) {
        if (str2 == null) {
            return this;
        }
        if (this.query == null) {
            this.query = new s();
        }
        this.query.add(str, str2);
        return this;
    }

    public IonRequestBuilder addQueries(Map<String, List<String>> map) {
        if (this.query == null) {
            this.query = new s();
        }
        this.query.putAll(map);
        return this;
    }

    public IonRequestBuilder setTimeout(int i) {
        this.timeoutMilliseconds = i;
        return this;
    }

    public IonRequestBuilder setHandler(Handler handler2) {
        this.handler = handler2;
        return this;
    }

    private <T> IonRequestBuilder setBody(a<T> aVar) {
        if (!this.methodWasSet) {
            this.method = c.METHOD_POST;
        }
        this.body = aVar;
        return this;
    }

    public IonRequestBuilder setJsonObjectBody(JsonObject jsonObject) {
        return setBody(new GsonBody(this.ion.configure().getGson(), jsonObject));
    }

    public IonRequestBuilder setJsonArrayBody(JsonArray jsonArray) {
        return setBody(new GsonBody(this.ion.configure().getGson(), jsonArray));
    }

    public IonRequestBuilder setStringBody(String str) {
        return setBody(new com.koushikdutta.async.http.a.j(str));
    }

    public IonRequestBuilder followRedirect(boolean z) {
        this.followRedirect = z;
        return this;
    }

    /* access modifiers changed from: private */
    public <T> void postExecute(final EmitterTransform<T> emitterTransform, final Exception exc, final T t) {
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                String isAlive = IonRequestBuilder.this.contextReference.isAlive();
                if (isAlive != null) {
                    emitterTransform.initialRequest.logd("context has died: ".concat(String.valueOf(isAlive)));
                    emitterTransform.cancelSilently();
                    return;
                }
                Exception exc = exc;
                if (exc != null) {
                    emitterTransform.setComplete(exc);
                } else {
                    emitterTransform.setComplete(t);
                }
            }
        };
        Handler handler2 = this.handler;
        if (handler2 == null) {
            this.ion.httpClient.getServer().post(r0);
        } else {
            h.post(handler2, (Runnable) r0);
        }
    }

    private Uri prepareURI() {
        Uri uri2;
        try {
            if (this.query != null) {
                Uri.Builder buildUpon = Uri.parse(this.uri).buildUpon();
                for (String str : this.query.keySet()) {
                    for (String appendQueryParameter : (List) this.query.get(str)) {
                        buildUpon = buildUpon.appendQueryParameter(str, appendQueryParameter);
                    }
                }
                uri2 = buildUpon.build();
            } else {
                uri2 = Uri.parse(this.uri);
            }
        } catch (Exception unused) {
            uri2 = null;
        }
        if (uri2 == null || uri2.getScheme() == null) {
            return null;
        }
        return uri2;
    }

    private d prepareRequest(Uri uri2) {
        d createAsyncHttpRequest = this.ion.configure().getAsyncHttpRequestFactory().createAsyncHttpRequest(uri2, this.method, this.headers);
        createAsyncHttpRequest.setFollowRedirect(this.followRedirect);
        createAsyncHttpRequest.setBody(this.body);
        createAsyncHttpRequest.setLogging(this.ion.logtag, this.ion.logLevel);
        String str = this.logTag;
        if (str != null) {
            createAsyncHttpRequest.setLogging(str, this.logLevel);
        }
        createAsyncHttpRequest.enableProxy(this.proxyHost, this.proxyPort);
        createAsyncHttpRequest.setTimeout(this.timeoutMilliseconds);
        createAsyncHttpRequest.logd("preparing request");
        return createAsyncHttpRequest;
    }

    private <T> void getLoaderEmitter(EmitterTransform<T> emitterTransform) {
        Uri prepareURI = prepareURI();
        if (prepareURI == null) {
            emitterTransform.setComplete(new Exception("Invalid URI"));
            return;
        }
        d prepareRequest = prepareRequest(prepareURI);
        emitterTransform.initialRequest = prepareRequest;
        getLoaderEmitter(emitterTransform, prepareRequest);
    }

    private <T> void getLoaderEmitter(final EmitterTransform<T> emitterTransform, d dVar) {
        if (!(this.body == null || (this.uploadProgressHandler == null && this.uploadProgressBar == null && this.uploadProgress == null && this.uploadProgressDialog == null))) {
            dVar.setBody(new RequestBodyUploadObserver(this.body, new ProgressCallback() {
                static final /* synthetic */ boolean $assertionsDisabled = false;

                static {
                    Class<IonRequestBuilder> cls = IonRequestBuilder.class;
                }

                public void onProgress(long j, long j2) {
                    int i = (int) ((((float) j) / ((float) j2)) * 100.0f);
                    if (IonRequestBuilder.this.uploadProgressBar != null) {
                        IonRequestBuilder.this.uploadProgressBar.setProgress(i);
                    }
                    if (IonRequestBuilder.this.uploadProgressDialog != null) {
                        IonRequestBuilder.this.uploadProgressDialog.setProgress(i);
                    }
                    if (IonRequestBuilder.this.uploadProgress != null) {
                        IonRequestBuilder.this.uploadProgress.onProgress(j, j2);
                    }
                    if (IonRequestBuilder.this.uploadProgressHandler != null) {
                        Handler handler = Ion.mainHandler;
                        final long j3 = j;
                        final long j4 = j2;
                        AnonymousClass1 r1 = new Runnable() {
                            public void run() {
                                if (!emitterTransform.isCancelled() && !emitterTransform.isDone()) {
                                    IonRequestBuilder.this.uploadProgressHandler.onProgress(j3, j4);
                                }
                            }
                        };
                        h.post(handler, (Runnable) r1);
                    }
                }
            }));
        }
        resolveAndLoadRequest(dVar, emitterTransform);
    }

    /* access modifiers changed from: package-private */
    public e<d> recursiveResolveRequest(final d dVar) {
        final i iVar = new i();
        new Runnable() {
            d inRequest = dVar;
            Runnable runner = this;

            public void run() {
                e<d> resolveRequest = IonRequestBuilder.this.resolveRequest(this.inRequest);
                if (resolveRequest == null) {
                    iVar.setComplete(this.inRequest);
                } else {
                    resolveRequest.setCallback(new com.koushikdutta.async.b.f<d>() {
                        public void onCompleted(Exception exc, d dVar) {
                            if (exc != null) {
                                iVar.setComplete(exc);
                                return;
                            }
                            AnonymousClass3 r1 = AnonymousClass3.this;
                            r1.inRequest = dVar;
                            r1.runner.run();
                        }
                    });
                }
            }
        }.run();
        return iVar;
    }

    /* access modifiers changed from: package-private */
    public <T> void resolveAndLoadRequest(final d dVar, final EmitterTransform<T> emitterTransform) {
        recursiveResolveRequest(dVar).setCallback(new com.koushikdutta.async.b.f<d>() {
            public void onCompleted(Exception exc, d dVar) {
                if (exc != null) {
                    emitterTransform.setComplete(exc);
                    return;
                }
                emitterTransform.finalRequest = dVar;
                if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                    h.post(Ion.mainHandler, (Runnable) new Runnable() {
                        public void run() {
                            IonRequestBuilder.this.invokeLoadRequest(dVar, emitterTransform);
                        }
                    });
                } else {
                    IonRequestBuilder.this.invokeLoadRequest(dVar, emitterTransform);
                }
            }
        });
    }

    /* access modifiers changed from: package-private */
    public <T> void invokeLoadRequest(d dVar, EmitterTransform<T> emitterTransform) {
        LoadRequestCallback loadRequestCallback2 = this.loadRequestCallback;
        if (loadRequestCallback2 == null || loadRequestCallback2.loadRequest(dVar)) {
            loadRequest(dVar, emitterTransform);
        }
    }

    /* access modifiers changed from: package-private */
    public <T> void loadRequest(d dVar, EmitterTransform<T> emitterTransform) {
        Iterator<Loader> it = this.ion.loaders.iterator();
        while (it.hasNext()) {
            Loader next = it.next();
            e<com.koushikdutta.async.n> load = next.load(this.ion, dVar, (com.koushikdutta.async.b.f<Loader.LoaderEmitter>) emitterTransform);
            if (load != null) {
                dVar.logi("Using loader: ".concat(String.valueOf(next)));
                emitterTransform.setParent((com.koushikdutta.async.b.a) load);
                return;
            }
        }
        emitterTransform.setComplete(new Exception("Unknown uri scheme"));
    }

    /* access modifiers changed from: package-private */
    public <T> e<d> resolveRequest(d dVar) {
        Iterator<Loader> it = this.ion.loaders.iterator();
        while (it.hasNext()) {
            e<d> resolve = it.next().resolve(this.contextReference.getContext(), this.ion, dVar);
            if (resolve != null) {
                return resolve;
            }
        }
        return null;
    }

    public IonRequestBuilder progressBar(ProgressBar progressBar2) {
        this.progressBar = new WeakReference<>(progressBar2);
        return this;
    }

    public IonRequestBuilder progressDialog(ProgressDialog progressDialog2) {
        this.progressDialog = new WeakReference<>(progressDialog2);
        return this;
    }

    public IonRequestBuilder progress(ProgressCallback progressCallback) {
        this.progress = progressCallback;
        return this;
    }

    public IonRequestBuilder progressHandler(ProgressCallback progressCallback) {
        this.progressHandler = progressCallback;
        return this;
    }

    /* access modifiers changed from: package-private */
    public <T> EmitterTransform<T> execute(q qVar, boolean z, T t) {
        return execute(qVar, z, t, null);
    }

    /* access modifiers changed from: package-private */
    public <T> EmitterTransform<T> execute(q qVar, boolean z, T t, Runnable runnable) {
        final boolean z2 = z;
        final q qVar2 = qVar;
        final T t2 = t;
        AnonymousClass5 r0 = new EmitterTransform<T>(runnable) {
            EmitterTransform<T> self = this;

            public void cleanup() {
                super.cleanup();
                if (z2) {
                    qVar2.end();
                }
            }

            /* access modifiers changed from: protected */
            public void transform(Loader.LoaderEmitter loaderEmitter) throws Exception {
                super.transform(loaderEmitter);
                af.pump(this.emitter, qVar2, (com.koushikdutta.async.a.a) new com.koushikdutta.async.a.a() {
                    public void onCompleted(Exception exc) {
                        IonRequestBuilder.this.postExecute(AnonymousClass5.this.self, exc, t2);
                    }
                });
            }
        };
        getLoaderEmitter(r0);
        return r0;
    }

    /* access modifiers changed from: package-private */
    public <T> ResponseFuture<T> execute(com.koushikdutta.async.c.a<T> aVar) {
        return execute(aVar, null);
    }

    /* access modifiers changed from: package-private */
    public <T> ResponseFuture<T> execute(final com.koushikdutta.async.c.a<T> aVar, Runnable runnable) {
        Uri prepareURI = prepareURI();
        d dVar = null;
        if (prepareURI != null) {
            dVar = prepareRequest(prepareURI);
            Type type = aVar.getType();
            Iterator<Loader> it = this.ion.loaders.iterator();
            while (it.hasNext()) {
                ResponseFuture<T> load = it.next().load(this.ion, dVar, type);
                if (load != null) {
                    return load;
                }
            }
        }
        AnonymousClass6 r2 = new EmitterTransform<T>(runnable) {
            EmitterTransform<T> self = this;

            /* access modifiers changed from: protected */
            public void transform(Loader.LoaderEmitter loaderEmitter) throws Exception {
                super.transform(loaderEmitter);
                aVar.parse(this.emitter).setCallback(new com.koushikdutta.async.b.f<T>() {
                    public void onCompleted(Exception exc, T t) {
                        IonRequestBuilder.this.postExecute(AnonymousClass6.this.self, exc, t);
                    }
                });
            }
        };
        if (prepareURI == null) {
            r2.setComplete(new Exception("Invalid URI"));
            return r2;
        }
        r2.initialRequest = dVar;
        getLoaderEmitter(r2);
        return r2;
    }

    public ResponseFuture<JsonObject> asJsonObject() {
        return execute(new GsonObjectParser());
    }

    public ResponseFuture<JsonArray> asJsonArray() {
        return execute(new GsonArrayParser());
    }

    public ResponseFuture<JsonObject> asJsonObject(Charset charset) {
        return execute(new GsonObjectParser(charset));
    }

    public ResponseFuture<JsonArray> asJsonArray(Charset charset) {
        return execute(new GsonArrayParser(charset));
    }

    public ResponseFuture<String> asString() {
        return execute(new com.koushikdutta.async.c.f());
    }

    public ResponseFuture<String> asString(Charset charset) {
        return execute(new com.koushikdutta.async.c.f(charset));
    }

    public ResponseFuture<byte[]> asByteArray() {
        return execute(new com.koushikdutta.async.c.a<byte[]>() {
            public e<byte[]> parse(com.koushikdutta.async.n nVar) {
                return (e) new b().parse(nVar).then(new j<byte[], l>() {
                    /* access modifiers changed from: protected */
                    public void transform(l lVar) throws Exception {
                        setComplete(lVar.getAllByteArray());
                    }
                });
            }

            public void write(q qVar, byte[] bArr, com.koushikdutta.async.a.a aVar) {
                new b().write(qVar, new l(bArr), aVar);
            }

            public Type getType() {
                return byte[].class;
            }
        });
    }

    public ResponseFuture<InputStream> asInputStream() {
        return execute(new InputStreamParser());
    }

    public ResponseFuture<com.koushikdutta.async.n> asDataEmitter() {
        return execute(new DataEmitterParser());
    }

    public <T> ResponseFuture<T> as(com.koushikdutta.async.c.a<T> aVar) {
        return execute(aVar);
    }

    public <F extends OutputStream> ResponseFuture<F> write(F f, boolean z) {
        return execute(new com.koushikdutta.async.d.e(this.ion.getServer(), f), z, f);
    }

    public <F extends OutputStream> ResponseFuture<F> write(F f) {
        return execute(new com.koushikdutta.async.d.e(this.ion.getServer(), f), true, f);
    }

    public EmitterTransform<File> write(final File file) {
        return execute(new com.koushikdutta.async.d.b(this.ion.getServer(), file), true, file, new Runnable() {
            public void run() {
                file.delete();
            }
        });
    }

    public IonRequestBuilder setBodyParameter(String str, String str2) {
        if (this.bodyParameters == null) {
            this.bodyParameters = new s();
            setBody(new com.koushikdutta.async.http.a.l(this.bodyParameters));
        }
        if (str2 != null) {
            this.bodyParameters.add(str, str2);
        }
        return this;
    }

    public IonRequestBuilder setBodyParameters(Map<String, List<String>> map) {
        if (this.bodyParameters == null) {
            this.bodyParameters = new s();
            setBody(new com.koushikdutta.async.http.a.l(this.bodyParameters));
        }
        this.bodyParameters.putAll(map);
        return this;
    }

    public IonRequestBuilder setMultipartFile(String str, File file) {
        return setMultipartFile(str, (String) null, file);
    }

    public IonRequestBuilder setMultipartFile(String str, String str2, File file) {
        if (this.multipartBody == null) {
            this.multipartBody = new f();
            setBody(this.multipartBody);
        }
        com.koushikdutta.async.http.a.d dVar = new com.koushikdutta.async.http.a.d(str, file);
        if (str2 == null) {
            str2 = com.koushikdutta.async.http.e.a.tryGetContentType(file.getAbsolutePath());
        }
        if (str2 != null) {
            dVar.setContentType(str2);
        }
        this.multipartBody.addPart(dVar);
        return this;
    }

    public IonRequestBuilder setMultipartParameter(String str, String str2) {
        if (this.multipartBody == null) {
            this.multipartBody = new f();
            setBody(this.multipartBody);
        }
        if (str2 != null) {
            this.multipartBody.addStringPart(str, str2);
        }
        return this;
    }

    public IonRequestBuilder setMultipartParameters(Map<String, List<String>> map) {
        for (String next : map.keySet()) {
            for (String str : map.get(next)) {
                if (str != null) {
                    setMultipartParameter(next, str);
                }
            }
        }
        return this;
    }

    public IonRequestBuilder addMultipartParts(Iterable<g> iterable) {
        if (this.multipartBody == null) {
            this.multipartBody = new f();
            setBody(this.multipartBody);
        }
        for (g addPart : iterable) {
            this.multipartBody.addPart(addPart);
        }
        return this;
    }

    public Builders.Any.M addMultipartParts(g... gVarArr) {
        if (this.multipartBody == null) {
            this.multipartBody = new f();
            setBody(this.multipartBody);
        }
        for (g addPart : gVarArr) {
            this.multipartBody.addPart(addPart);
        }
        return this;
    }

    public IonRequestBuilder setMultipartContentType(String str) {
        if (this.multipartBody == null) {
            this.multipartBody = new f();
            setBody(this.multipartBody);
        }
        this.multipartBody.setContentType(str);
        return this;
    }

    public IonImageViewRequestBuilder withBitmap() {
        return new IonImageViewRequestBuilder(this);
    }

    public ImageViewFuture intoImageView(ImageView imageView) {
        return new IonImageViewRequestBuilder(this).withImageView(imageView).intoImageView(imageView);
    }

    public IonRequestBuilder load(File file) {
        loadInternal(null, file.toURI().toString());
        return this;
    }

    public BitmapInfo asCachedBitmap() {
        return new IonImageViewRequestBuilder(this).asCachedBitmap();
    }

    public void removeCachedBitmap() {
        new IonImageViewRequestBuilder(this).removeCachedBitmap();
    }

    public LocallyCachedStatus isLocallyCached() {
        return new IonImageViewRequestBuilder(this).isLocallyCached();
    }

    public e<Bitmap> asBitmap() {
        return new IonImageViewRequestBuilder(this).asBitmap();
    }

    public IonRequestBuilder setLogging(String str, int i) {
        this.logTag = str;
        this.logLevel = i;
        return this;
    }

    public <T> ResponseFuture<T> as(Class<T> cls) {
        return execute(new GsonSerializer(this.ion.configure().getGson(), cls));
    }

    public <T> ResponseFuture<T> as(com.google.gson.b.a<T> aVar) {
        return execute(new GsonSerializer(this.ion.configure().getGson(), aVar));
    }

    public FutureBuilder group(Object obj) {
        if (this.groups == null) {
            this.groups = new ArrayList<>();
        }
        this.groups.add(new WeakReference(obj));
        return this;
    }

    public IonRequestBuilder proxy(String str, int i) {
        this.proxyHost = str;
        this.proxyPort = i;
        return this;
    }

    public IonRequestBuilder setJsonPojoBody(Object obj, com.google.gson.b.a aVar) {
        setBody(new PojoBody(this.ion.configure().getGson(), obj, aVar));
        return this;
    }

    public IonRequestBuilder setJsonPojoBody(Object obj) {
        setBody(new PojoBody(this.ion.configure().getGson(), obj, null));
        return this;
    }

    public IonRequestBuilder basicAuthentication(String str, String str2) {
        return setHeader(c.HEADER_AUTHORIZATION, "Basic " + Base64.encodeToString(String.format("%s:%s", new Object[]{str, str2}).getBytes(), 2));
    }

    public Builders.Any.B uploadProgress(ProgressCallback progressCallback) {
        this.uploadProgress = progressCallback;
        return this;
    }

    public Builders.Any.B uploadProgressBar(ProgressBar progressBar2) {
        this.uploadProgressBar = progressBar2;
        return this;
    }

    public Builders.Any.B uploadProgressDialog(ProgressDialog progressDialog2) {
        this.uploadProgressDialog = progressDialog2;
        return this;
    }

    public Builders.Any.B uploadProgressHandler(ProgressCallback progressCallback) {
        this.uploadProgressHandler = progressCallback;
        return this;
    }

    public Builders.Any.B onHeaders(HeadersCallback headersCallback2) {
        this.headersCallback = headersCallback2;
        return this;
    }

    public Builders.Any.F setDocumentBody(Document document) {
        setBody(new com.koushikdutta.async.http.a.b(document));
        return this;
    }

    public ResponseFuture<Document> asDocument() {
        return execute(new com.koushikdutta.async.c.c());
    }

    public Builders.Any.F setFileBody(File file) {
        setBody(new com.koushikdutta.async.http.a.c(file));
        return this;
    }

    public Builders.Any.F setByteArrayBody(byte[] bArr) {
        if (bArr != null) {
            setBody(new com.koushikdutta.async.http.a.h(new ByteArrayInputStream(bArr), bArr.length));
        }
        return this;
    }

    public Builders.Any.F setStreamBody(InputStream inputStream) {
        setBody(new com.koushikdutta.async.http.a.h(inputStream, -1));
        return this;
    }

    public Builders.Any.F setStreamBody(InputStream inputStream, int i) {
        setBody(new com.koushikdutta.async.http.a.h(inputStream, i));
        return this;
    }

    public Builders.Any.B setHeader(t... tVarArr) {
        n headers2 = getHeaders();
        for (t tVar : tVarArr) {
            headers2.set(tVar.getName(), tVar.getValue());
        }
        return this;
    }
}
