package com.koushikdutta.ion;

import android.app.Fragment;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.e.c;
import com.koushikdutta.async.e.e;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.a;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.http.n;
import com.koushikdutta.ion.ContextReference;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import com.koushikdutta.ion.builder.Builders;
import com.koushikdutta.ion.builder.LoadBuilder;
import com.koushikdutta.ion.conscrypt.ConscryptMiddleware;
import com.koushikdutta.ion.cookie.CookieMiddleware;
import com.koushikdutta.ion.loader.AssetLoader;
import com.koushikdutta.ion.loader.AsyncHttpRequestFactory;
import com.koushikdutta.ion.loader.ContentLoader;
import com.koushikdutta.ion.loader.FileLoader;
import com.koushikdutta.ion.loader.HttpLoader;
import com.koushikdutta.ion.loader.PackageIconLoader;
import com.koushikdutta.ion.loader.ResourceLoader;
import com.koushikdutta.ion.loader.VideoLoader;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.SSLContext;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;

public class Ion {
    /* access modifiers changed from: private */
    public static Comparator<DeferredLoadBitmap> DEFERRED_COMPARATOR = new Comparator<DeferredLoadBitmap>() {
        public final int compare(DeferredLoadBitmap deferredLoadBitmap, DeferredLoadBitmap deferredLoadBitmap2) {
            if (deferredLoadBitmap.priority == deferredLoadBitmap2.priority) {
                return 0;
            }
            return deferredLoadBitmap.priority < deferredLoadBitmap2.priority ? 1 : -1;
        }
    };
    static int availableProcessors = Runtime.getRuntime().availableProcessors();
    static ExecutorService bitmapExecutorService;
    static HashMap<String, Ion> instances = new HashMap<>();
    static ExecutorService ioExecutorService = Executors.newFixedThreadPool(4);
    static final Handler mainHandler = new Handler(Looper.getMainLooper());
    AssetLoader assetLoader;
    IonImageViewRequestBuilder bitmapBuilder = new IonImageViewRequestBuilder(this);
    IonBitmapCache bitmapCache;
    e<f<BitmapInfo>> bitmapsPending = new e<>();
    Config config = new Config();
    ConscryptMiddleware conscryptMiddleware;
    ContentLoader contentLoader;
    Context context;
    CookieMiddleware cookieMiddleware;
    FileLoader fileLoader;
    com.google.gson.e gson;
    a httpClient;
    HttpLoader httpLoader;
    WeakHashMap<Object, FutureSet> inFlight = new WeakHashMap<>();
    ArrayList<Loader> loaders = new ArrayList<>();
    int logLevel;
    String logtag;
    String name;
    PackageIconLoader packageIconLoader;
    private Runnable processDeferred = new Runnable() {
        public void run() {
            if (!BitmapFetcher.shouldDeferImageView(Ion.this)) {
                ArrayList arrayList = null;
                for (String tag : Ion.this.bitmapsPending.keySet()) {
                    Object tag2 = Ion.this.bitmapsPending.tag(tag);
                    if (tag2 instanceof DeferredLoadBitmap) {
                        DeferredLoadBitmap deferredLoadBitmap = (DeferredLoadBitmap) tag2;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(deferredLoadBitmap);
                    }
                }
                if (arrayList != null) {
                    int i = 0;
                    Collections.sort(arrayList, Ion.DEFERRED_COMPARATOR);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        DeferredLoadBitmap deferredLoadBitmap2 = (DeferredLoadBitmap) it.next();
                        Ion.this.bitmapsPending.tag(deferredLoadBitmap2.key, null);
                        Ion.this.bitmapsPending.tag(deferredLoadBitmap2.fetcher.bitmapKey, null);
                        deferredLoadBitmap2.fetcher.execute();
                        i++;
                        if (i > 5) {
                            break;
                        }
                    }
                }
            }
        }
    };
    ResourceLoader resourceLoader;
    com.koushikdutta.async.http.b.e responseCache;
    c storeCache;
    String userAgent;
    VideoLoader videoLoader;

    public class Config {
        AsyncHttpRequestFactory asyncHttpRequestFactory = new AsyncHttpRequestFactory() {
            public d createAsyncHttpRequest(Uri uri, String str, n nVar) {
                d dVar = new d(uri, str, nVar);
                if (!TextUtils.isEmpty(Ion.this.userAgent)) {
                    dVar.getHeaders().set("User-Agent", Ion.this.userAgent);
                }
                return dVar;
            }
        };

        public Config() {
        }

        public HttpLoader getHttpLoader() {
            return Ion.this.httpLoader;
        }

        public VideoLoader getVideoLoader() {
            return Ion.this.videoLoader;
        }

        public PackageIconLoader getPackageIconLoader() {
            return Ion.this.packageIconLoader;
        }

        public ContentLoader getContentLoader() {
            return Ion.this.contentLoader;
        }

        public FileLoader getFileLoader() {
            return Ion.this.fileLoader;
        }

        public com.koushikdutta.async.http.b.e getResponseCache() {
            return Ion.this.responseCache;
        }

        public SSLContext createSSLContext(String str) throws NoSuchAlgorithmException {
            Ion.this.conscryptMiddleware.initialize();
            return SSLContext.getInstance(str);
        }

        public synchronized com.google.gson.e getGson() {
            if (Ion.this.gson == null) {
                Ion.this.gson = new com.google.gson.e();
            }
            return Ion.this.gson;
        }

        public Config setLogging(String str, int i) {
            Ion ion = Ion.this;
            ion.logtag = str;
            ion.logLevel = i;
            return this;
        }

        public void proxy(String str, int i) {
            Ion.this.httpClient.getSocketMiddleware().enableProxy(str, i);
        }

        public void proxySecure(String str, int i) {
            Ion.this.httpClient.getSSLSocketMiddleware().enableProxy(str, i);
        }

        public void disableProxy() {
            Ion.this.httpClient.getSocketMiddleware().disableProxy();
        }

        public void disableSecureProxy() {
            Ion.this.httpClient.getSSLSocketMiddleware().disableProxy();
        }

        public void setGson(com.google.gson.e eVar) {
            Ion.this.gson = eVar;
        }

        public AsyncHttpRequestFactory getAsyncHttpRequestFactory() {
            return this.asyncHttpRequestFactory;
        }

        public Config setAsyncHttpRequestFactory(AsyncHttpRequestFactory asyncHttpRequestFactory2) {
            this.asyncHttpRequestFactory = asyncHttpRequestFactory2;
            return this;
        }

        public String userAgent() {
            return Ion.this.userAgent;
        }

        public Config userAgent(String str) {
            Ion.this.userAgent = str;
            return this;
        }

        public Config addLoader(int i, Loader loader) {
            Ion.this.loaders.add(i, loader);
            return this;
        }

        public Config insertLoader(Loader loader) {
            Ion.this.loaders.add(0, loader);
            return this;
        }

        public Config addLoader(Loader loader) {
            Ion.this.loaders.add(loader);
            return this;
        }

        public List<Loader> getLoaders() {
            return Ion.this.loaders;
        }
    }

    static class FutureSet extends WeakHashMap<com.koushikdutta.async.b.e, Boolean> {
        FutureSet() {
        }
    }

    static {
        int i = availableProcessors;
        bitmapExecutorService = i > 2 ? Executors.newFixedThreadPool(i - 1) : Executors.newFixedThreadPool(1);
    }

    public static LoadBuilder<Builders.Any.B> with(Context context2) {
        return getDefault(context2).build(context2);
    }

    public static LoadBuilder<Builders.Any.B> with(Fragment fragment) {
        return getDefault(fragment.getActivity()).build(fragment);
    }

    public static LoadBuilder<Builders.Any.B> with(androidx.fragment.app.Fragment fragment) {
        return getDefault(fragment.getActivity()).build(fragment);
    }

    public static Ion getDefault(Context context2) {
        return getInstance(context2, "ion");
    }

    public static Ion getInstance(Context context2, String str) {
        if (context2 != null) {
            Ion ion = instances.get(str);
            if (ion != null) {
                return ion;
            }
            HashMap<String, Ion> hashMap = instances;
            Ion ion2 = new Ion(context2, str);
            hashMap.put(str, ion2);
            return ion2;
        }
        throw new NullPointerException("Can not pass null context in to retrieve ion instance");
    }

    public static Builders.IV.F<? extends Builders.IV.F<?>> with(ImageView imageView) {
        return getDefault(imageView.getContext()).build(imageView);
    }

    private Ion(Context context2, String str) {
        Context applicationContext = context2.getApplicationContext();
        this.context = applicationContext;
        this.name = str;
        this.httpClient = new a(new h("ion-".concat(String.valueOf(str))));
        this.httpClient.getSSLSocketMiddleware().setHostnameVerifier(new BrowserCompatHostnameVerifier());
        this.httpClient.getSSLSocketMiddleware().setSpdyEnabled(false);
        a aVar = this.httpClient;
        ConscryptMiddleware conscryptMiddleware2 = new ConscryptMiddleware(applicationContext, aVar.getSSLSocketMiddleware());
        this.conscryptMiddleware = conscryptMiddleware2;
        aVar.insertMiddleware(conscryptMiddleware2);
        File file = new File(applicationContext.getCacheDir(), str);
        try {
            this.responseCache = com.koushikdutta.async.http.b.e.addCache(this.httpClient, file, 10485760);
        } catch (IOException e) {
            IonLog.w("unable to set up response cache, clearing", e);
            com.koushikdutta.async.e.d.deleteDirectory(file);
            try {
                this.responseCache = com.koushikdutta.async.http.b.e.addCache(this.httpClient, file, 10485760);
            } catch (IOException unused) {
                IonLog.w("unable to set up response cache, failing", e);
            }
        }
        this.storeCache = new c(new File(applicationContext.getFilesDir(), str), Long.MAX_VALUE, false);
        if (Build.VERSION.SDK_INT >= 9) {
            addCookieMiddleware();
        }
        this.httpClient.getSocketMiddleware().setConnectAllAddresses(true);
        this.httpClient.getSSLSocketMiddleware().setConnectAllAddresses(true);
        this.bitmapCache = new IonBitmapCache(this);
        Config configure = configure();
        VideoLoader videoLoader2 = new VideoLoader();
        this.videoLoader = videoLoader2;
        Config addLoader = configure.addLoader(videoLoader2);
        PackageIconLoader packageIconLoader2 = new PackageIconLoader();
        this.packageIconLoader = packageIconLoader2;
        Config addLoader2 = addLoader.addLoader(packageIconLoader2);
        HttpLoader httpLoader2 = new HttpLoader();
        this.httpLoader = httpLoader2;
        Config addLoader3 = addLoader2.addLoader(httpLoader2);
        ContentLoader contentLoader2 = new ContentLoader();
        this.contentLoader = contentLoader2;
        Config addLoader4 = addLoader3.addLoader(contentLoader2);
        ResourceLoader resourceLoader2 = new ResourceLoader();
        this.resourceLoader = resourceLoader2;
        Config addLoader5 = addLoader4.addLoader(resourceLoader2);
        AssetLoader assetLoader2 = new AssetLoader();
        this.assetLoader = assetLoader2;
        Config addLoader6 = addLoader5.addLoader(assetLoader2);
        FileLoader fileLoader2 = new FileLoader();
        this.fileLoader = fileLoader2;
        addLoader6.addLoader(fileLoader2);
    }

    public static ExecutorService getBitmapLoadExecutorService() {
        return bitmapExecutorService;
    }

    public static ExecutorService getIoExecutorService() {
        return ioExecutorService;
    }

    public LoadBuilder<Builders.Any.B> build(Context context2) {
        return new IonRequestBuilder(ContextReference.fromContext(context2), this);
    }

    public LoadBuilder<Builders.Any.B> build(Fragment fragment) {
        return new IonRequestBuilder(new ContextReference.FragmentContextReference(fragment), this);
    }

    public LoadBuilder<Builders.Any.B> build(androidx.fragment.app.Fragment fragment) {
        return new IonRequestBuilder(new ContextReference.SupportFragmentContextReference(fragment), this);
    }

    public Builders.IV.F<? extends Builders.IV.F<?>> build(ImageView imageView) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            this.bitmapBuilder.reset();
            IonImageViewRequestBuilder ionImageViewRequestBuilder = this.bitmapBuilder;
            ionImageViewRequestBuilder.ion = this;
            return ionImageViewRequestBuilder.withImageView(imageView);
        }
        throw new IllegalStateException("must be called from UI thread");
    }

    /* access modifiers changed from: package-private */
    public int groupCount(Object obj) {
        FutureSet futureSet;
        synchronized (this) {
            futureSet = this.inFlight.get(obj);
        }
        if (futureSet == null) {
            return 0;
        }
        return futureSet.size();
    }

    /* access modifiers changed from: package-private */
    public void processDeferred() {
        mainHandler.removeCallbacks(this.processDeferred);
        mainHandler.post(this.processDeferred);
    }

    public void cancelAll(Object obj) {
        FutureSet remove;
        synchronized (this) {
            remove = this.inFlight.remove(obj);
        }
        if (remove != null) {
            for (com.koushikdutta.async.b.e eVar : remove.keySet()) {
                if (eVar != null) {
                    eVar.cancel();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void addFutureInFlight(com.koushikdutta.async.b.e eVar, Object obj) {
        FutureSet futureSet;
        if (obj != null && eVar != null && !eVar.isDone() && !eVar.isCancelled()) {
            synchronized (this) {
                futureSet = this.inFlight.get(obj);
                if (futureSet == null) {
                    futureSet = new FutureSet();
                    this.inFlight.put(obj, futureSet);
                }
            }
            futureSet.put(eVar, Boolean.TRUE);
        }
    }

    public void cancelAll() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.inFlight.keySet());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cancelAll(it.next());
        }
    }

    public void cancelAll(Context context2) {
        cancelAll((Object) context2);
    }

    public int getPendingRequestCount(Object obj) {
        synchronized (this) {
            FutureSet futureSet = this.inFlight.get(obj);
            int i = 0;
            if (futureSet == null) {
                return 0;
            }
            for (com.koushikdutta.async.b.e eVar : futureSet.keySet()) {
                if (!eVar.isCancelled() && !eVar.isDone()) {
                    i++;
                }
            }
            return i;
        }
    }

    public void dump() {
        this.bitmapCache.dump();
        new StringBuilder("Pending bitmaps: ").append(this.bitmapsPending.size());
        new StringBuilder("Groups: ").append(this.inFlight.size());
        for (FutureSet size : this.inFlight.values()) {
            new StringBuilder("Group size: ").append(size.size());
        }
    }

    public Context getContext() {
        return this.context;
    }

    private void addCookieMiddleware() {
        a aVar = this.httpClient;
        CookieMiddleware cookieMiddleware2 = new CookieMiddleware(this);
        this.cookieMiddleware = cookieMiddleware2;
        aVar.insertMiddleware(cookieMiddleware2);
    }

    public FileCacheStore cache(String str) {
        return new FileCacheStore(this, this.responseCache.getFileCache(), str);
    }

    public c getCache() {
        return this.responseCache.getFileCache();
    }

    public FileCacheStore store(String str) {
        return new FileCacheStore(this, this.storeCache, str);
    }

    public c getStore() {
        return this.storeCache;
    }

    public String getName() {
        return this.name;
    }

    public CookieMiddleware getCookieMiddleware() {
        return this.cookieMiddleware;
    }

    public ConscryptMiddleware getConscryptMiddleware() {
        return this.conscryptMiddleware;
    }

    public a getHttpClient() {
        return this.httpClient;
    }

    public h getServer() {
        return this.httpClient.getServer();
    }

    public Config configure() {
        return this.config;
    }

    public IonBitmapCache getBitmapCache() {
        return this.bitmapCache;
    }
}
