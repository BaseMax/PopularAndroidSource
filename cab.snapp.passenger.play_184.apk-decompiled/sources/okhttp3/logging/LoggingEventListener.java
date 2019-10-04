package okhttp3.logging;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;

public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        public Factory() {
            this(HttpLoggingInterceptor.Logger.DEFAULT);
        }

        public Factory(HttpLoggingInterceptor.Logger logger2) {
            this.logger = logger2;
        }

        public EventListener create(Call call) {
            return new LoggingEventListener(this.logger);
        }
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger2) {
        this.logger = logger2;
    }

    public final void callStart(Call call) {
        this.startNs = System.nanoTime();
        logWithTime("callStart: " + call.request());
    }

    public final void dnsStart(Call call, String str) {
        logWithTime("dnsStart: ".concat(String.valueOf(str)));
    }

    public final void dnsEnd(Call call, String str, List<InetAddress> list) {
        logWithTime("dnsEnd: ".concat(String.valueOf(list)));
    }

    public final void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        logWithTime("connectStart: " + inetSocketAddress + " " + proxy);
    }

    public final void secureConnectStart(Call call) {
        logWithTime("secureConnectStart");
    }

    public final void secureConnectEnd(Call call, @Nullable Handshake handshake) {
        logWithTime("secureConnectEnd");
    }

    public final void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, @Nullable Protocol protocol) {
        logWithTime("connectEnd: ".concat(String.valueOf(protocol)));
    }

    public final void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, @Nullable Protocol protocol, IOException iOException) {
        logWithTime("connectFailed: " + protocol + " " + iOException);
    }

    public final void connectionAcquired(Call call, Connection connection) {
        logWithTime("connectionAcquired: ".concat(String.valueOf(connection)));
    }

    public final void connectionReleased(Call call, Connection connection) {
        logWithTime("connectionReleased");
    }

    public final void requestHeadersStart(Call call) {
        logWithTime("requestHeadersStart");
    }

    public final void requestHeadersEnd(Call call, Request request) {
        logWithTime("requestHeadersEnd");
    }

    public final void requestBodyStart(Call call) {
        logWithTime("requestBodyStart");
    }

    public final void requestBodyEnd(Call call, long j) {
        logWithTime("requestBodyEnd: byteCount=".concat(String.valueOf(j)));
    }

    public final void responseHeadersStart(Call call) {
        logWithTime("responseHeadersStart");
    }

    public final void responseHeadersEnd(Call call, Response response) {
        logWithTime("responseHeadersEnd: ".concat(String.valueOf(response)));
    }

    public final void responseBodyStart(Call call) {
        logWithTime("responseBodyStart");
    }

    public final void responseBodyEnd(Call call, long j) {
        logWithTime("responseBodyEnd: byteCount=".concat(String.valueOf(j)));
    }

    public final void callEnd(Call call) {
        logWithTime("callEnd");
    }

    public final void callFailed(Call call, IOException iOException) {
        logWithTime("callFailed: ".concat(String.valueOf(iOException)));
    }

    private void logWithTime(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        HttpLoggingInterceptor.Logger logger2 = this.logger;
        logger2.log("[" + millis + " ms] " + str);
    }
}
