package retrofit2;

import b.c;
import b.e;
import b.i;
import b.n;
import b.v;
import java.io.IOException;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

final class OkHttpCall<T> implements Call<T> {
    private final Object[] args;
    private final Call.Factory callFactory;
    private volatile boolean canceled;
    @Nullable
    private Throwable creationFailure;
    private boolean executed;
    @Nullable
    private Call rawCall;
    private final RequestFactory requestFactory;
    private final Converter<ResponseBody, T> responseConverter;

    static final class ExceptionCatchingResponseBody extends ResponseBody {
        private final ResponseBody delegate;
        @Nullable
        IOException thrownException;

        ExceptionCatchingResponseBody(ResponseBody responseBody) {
            this.delegate = responseBody;
        }

        public final MediaType contentType() {
            return this.delegate.contentType();
        }

        public final long contentLength() {
            return this.delegate.contentLength();
        }

        public final e source() {
            return n.buffer((v) new i(this.delegate.source()) {
                public long read(c cVar, long j) throws IOException {
                    try {
                        return super.read(cVar, j);
                    } catch (IOException e) {
                        ExceptionCatchingResponseBody.this.thrownException = e;
                        throw e;
                    }
                }
            });
        }

        public final void close() {
            this.delegate.close();
        }

        /* access modifiers changed from: package-private */
        public final void throwIfCaught() throws IOException {
            IOException iOException = this.thrownException;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    static final class NoContentResponseBody extends ResponseBody {
        private final long contentLength;
        @Nullable
        private final MediaType contentType;

        NoContentResponseBody(@Nullable MediaType mediaType, long j) {
            this.contentType = mediaType;
            this.contentLength = j;
        }

        public final MediaType contentType() {
            return this.contentType;
        }

        public final long contentLength() {
            return this.contentLength;
        }

        public final e source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    OkHttpCall(RequestFactory requestFactory2, Object[] objArr, Call.Factory factory, Converter<ResponseBody, T> converter) {
        this.requestFactory = requestFactory2;
        this.args = objArr;
        this.callFactory = factory;
        this.responseConverter = converter;
    }

    public final OkHttpCall<T> clone() {
        return new OkHttpCall<>(this.requestFactory, this.args, this.callFactory, this.responseConverter);
    }

    public final synchronized Request request() {
        Call call = this.rawCall;
        if (call != null) {
            return call.request();
        } else if (this.creationFailure == null) {
            try {
                Call createRawCall = createRawCall();
                this.rawCall = createRawCall;
                return createRawCall.request();
            } catch (RuntimeException e) {
                e = e;
                Utils.throwIfFatal(e);
                this.creationFailure = e;
                throw e;
            } catch (Error e2) {
                e = e2;
                Utils.throwIfFatal(e);
                this.creationFailure = e;
                throw e;
            } catch (IOException e3) {
                this.creationFailure = e3;
                throw new RuntimeException("Unable to create request.", e3);
            }
        } else if (this.creationFailure instanceof IOException) {
            throw new RuntimeException("Unable to create request.", this.creationFailure);
        } else if (this.creationFailure instanceof RuntimeException) {
            throw ((RuntimeException) this.creationFailure);
        } else {
            throw ((Error) this.creationFailure);
        }
    }

    public final void enqueue(final Callback<T> callback) {
        Call call;
        Throwable th;
        Utils.checkNotNull(callback, "callback == null");
        synchronized (this) {
            if (!this.executed) {
                this.executed = true;
                call = this.rawCall;
                th = this.creationFailure;
                if (call == null && th == null) {
                    try {
                        Call createRawCall = createRawCall();
                        this.rawCall = createRawCall;
                        call = createRawCall;
                    } catch (Throwable th2) {
                        th = th2;
                        Utils.throwIfFatal(th);
                        this.creationFailure = th;
                    }
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.enqueue(new Callback() {
            public void onResponse(Call call, Response response) {
                try {
                    try {
                        callback.onResponse(OkHttpCall.this, OkHttpCall.this.parseResponse(response));
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } catch (Throwable th2) {
                    Utils.throwIfFatal(th2);
                    callFailure(th2);
                }
            }

            public void onFailure(Call call, IOException iOException) {
                callFailure(iOException);
            }

            private void callFailure(Throwable th) {
                try {
                    callback.onFailure(OkHttpCall.this, th);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        });
    }

    public final synchronized boolean isExecuted() {
        return this.executed;
    }

    public final Response<T> execute() throws IOException {
        Call call;
        synchronized (this) {
            if (!this.executed) {
                this.executed = true;
                if (this.creationFailure == null) {
                    call = this.rawCall;
                    if (call == null) {
                        try {
                            call = createRawCall();
                            this.rawCall = call;
                        } catch (IOException | Error | RuntimeException e) {
                            Utils.throwIfFatal(e);
                            this.creationFailure = e;
                            throw e;
                        }
                    }
                } else if (this.creationFailure instanceof IOException) {
                    throw ((IOException) this.creationFailure);
                } else if (this.creationFailure instanceof RuntimeException) {
                    throw ((RuntimeException) this.creationFailure);
                } else {
                    throw ((Error) this.creationFailure);
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(call.execute());
    }

    private Call createRawCall() throws IOException {
        Call newCall = this.callFactory.newCall(this.requestFactory.create(this.args));
        if (newCall != null) {
            return newCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    /* access modifiers changed from: package-private */
    public final Response<T> parseResponse(Response response) throws IOException {
        ResponseBody body = response.body();
        Response build = response.newBuilder().body(new NoContentResponseBody(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                return Response.error(Utils.buffer(body), build);
            } finally {
                body.close();
            }
        } else if (code == 204 || code == 205) {
            body.close();
            return Response.success(null, build);
        } else {
            ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(body);
            try {
                return Response.success(this.responseConverter.convert(exceptionCatchingResponseBody), build);
            } catch (RuntimeException e) {
                exceptionCatchingResponseBody.throwIfCaught();
                throw e;
            }
        }
    }

    public final void cancel() {
        Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
        }
        if (call != null) {
            call.cancel();
        }
    }

    public final boolean isCanceled() {
        boolean z = true;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            if (this.rawCall == null || !this.rawCall.isCanceled()) {
                z = false;
            }
        }
        return z;
    }
}
