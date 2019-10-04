package cab.snapp.d.b;

import android.os.Build;
import cab.snapp.a.b;
import cab.snapp.c;
import cab.snapp.d;
import cab.snapp.snappnetwork.e;
import cab.snapp.snappnetwork.model.f;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class a implements d {
    public int ACK = 4;
    public String TAG = "POLING";

    /* renamed from: a  reason: collision with root package name */
    final String f220a;

    /* renamed from: b  reason: collision with root package name */
    HashMap<String, Integer> f221b = new HashMap<>();
    boolean c = false;
    boolean d = false;
    private c e;
    private final cab.snapp.a f;
    private int g = 15;
    private e<b> h;
    private e<f> i;
    private Runnable j;
    private ScheduledExecutorService k;
    private ScheduledFuture<?> l;
    private boolean m;
    private cab.snapp.snappnetwork.a.a<b> n = new cab.snapp.snappnetwork.a.a<b>() {
        public final void onSuccess(b bVar) {
            super.onSuccess(bVar);
            a.this.d = false;
            if (bVar != null && bVar.getRideEventModels() != null && bVar.getRideEventModels().size() > 0) {
                long serverTime = bVar.getServerTime();
                List<cab.snapp.a.a> rideEventModels = bVar.getRideEventModels();
                Collections.sort(rideEventModels, new Comparator<cab.snapp.a.a>() {
                    public final int compare(cab.snapp.a.a aVar, cab.snapp.a.a aVar2) {
                        int intValue = a.this.f221b.containsKey(aVar.getEventType().toLowerCase().trim()) ? a.this.f221b.get(aVar.getEventType().toLowerCase().trim()).intValue() : -1;
                        int intValue2 = a.this.f221b.containsKey(aVar2.getEventType().toLowerCase().trim()) ? a.this.f221b.get(aVar2.getEventType().toLowerCase().trim()).intValue() : -1;
                        if (Build.VERSION.SDK_INT >= 19) {
                            return Integer.compare(intValue, intValue2);
                        }
                        if (intValue < intValue2) {
                            return -1;
                        }
                        return intValue == intValue2 ? 0 : 1;
                    }
                });
                cab.snapp.a.a aVar = rideEventModels.get(rideEventModels.size() - 1);
                if (serverTime <= aVar.getExpiresIn()) {
                    aVar.setAckId(a.this.ACK);
                    a.this.onEvent(aVar);
                }
            }
        }

        public final void onFailure(cab.snapp.snappnetwork.model.b bVar, int i) {
            super.onFailure(bVar, i);
            a.this.d = false;
        }
    };

    public final boolean publish(String str) {
        return false;
    }

    public a(String str, c cVar, cab.snapp.a aVar) {
        this.f = aVar;
        this.f220a = str;
        if (cVar != null) {
            this.e = cVar;
            this.f221b = cVar.getEvents();
            if (str.equals("POLING")) {
                if (cVar.getIntervalPeriod() != 0) {
                    this.g = cVar.getIntervalPeriod();
                } else {
                    this.g = 15;
                }
            } else if (str.equals("POLUNG_SIDE_REQUEST")) {
                this.TAG = "POLUNG_SIDE_REQUEST";
                this.ACK = -1;
                if (cVar.getIntervalPeriod() != 0) {
                    this.g = cVar.getSideRequestIntervalPeriod();
                } else {
                    this.g = 15;
                }
            }
        }
        cab.snapp.b.log(this.TAG, "Init succeed");
    }

    public final void setup() {
        c();
        this.j = new Runnable() {
            public final void run() {
                if (a.this.f220a.equals("POLING")) {
                    new StringBuilder("run: Call Polling Network. ->").append(a.this.d);
                    a.this.b();
                    return;
                }
                if (a.this.f220a.equals("POLUNG_SIDE_REQUEST")) {
                    new StringBuilder("run: Call Polling Side  request Network. ->").append(a.this.d);
                    a.this.a();
                }
            }
        };
        cab.snapp.b.log(this.TAG, "Setup succeed");
    }

    private void c() {
        this.k = Executors.newScheduledThreadPool(1);
    }

    public final void start() {
        if (!isStarted()) {
            ScheduledExecutorService scheduledExecutorService = this.k;
            if (scheduledExecutorService != null && scheduledExecutorService.isShutdown()) {
                c();
            }
            this.m = true;
            ScheduledExecutorService scheduledExecutorService2 = this.k;
            if (scheduledExecutorService2 != null) {
                this.l = scheduledExecutorService2.scheduleAtFixedRate(this.j, 0, (long) this.g, TimeUnit.SECONDS);
            }
            cab.snapp.b.log(this.TAG, "Start succeed");
        }
    }

    public final boolean isStarted() {
        ScheduledFuture<?> scheduledFuture = this.l;
        return scheduledFuture != null && !scheduledFuture.isCancelled() && this.m;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0026, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void a() {
        /*
            r2 = this;
            monitor-enter(r2)
            cab.snapp.c r0 = r2.e     // Catch:{ all -> 0x0027 }
            cab.snapp.snappnetwork.e r0 = r0.getPollingSideRequest()     // Catch:{ all -> 0x0027 }
            r2.i = r0     // Catch:{ all -> 0x0027 }
            boolean r0 = r2.c     // Catch:{ all -> 0x0027 }
            if (r0 != 0) goto L_0x0025
            cab.snapp.c r0 = r2.e     // Catch:{ all -> 0x0027 }
            if (r0 == 0) goto L_0x0025
            cab.snapp.snappnetwork.e<cab.snapp.snappnetwork.model.f> r0 = r2.i     // Catch:{ all -> 0x0027 }
            if (r0 != 0) goto L_0x0016
            goto L_0x0025
        L_0x0016:
            r0 = 1
            r2.c = r0     // Catch:{ all -> 0x0027 }
            cab.snapp.snappnetwork.e<cab.snapp.snappnetwork.model.f> r0 = r2.i     // Catch:{ all -> 0x0027 }
            cab.snapp.d.b.a$3 r1 = new cab.snapp.d.b.a$3     // Catch:{ all -> 0x0027 }
            r1.<init>()     // Catch:{ all -> 0x0027 }
            r0.performRequest(r1)     // Catch:{ all -> 0x0027 }
            monitor-exit(r2)
            return
        L_0x0025:
            monitor-exit(r2)
            return
        L_0x0027:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.d.b.a.a():void");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001f, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void b() {
        /*
            r2 = this;
            monitor-enter(r2)
            cab.snapp.c r0 = r2.e     // Catch:{ all -> 0x0020 }
            cab.snapp.snappnetwork.e r0 = r0.getPollingRequest()     // Catch:{ all -> 0x0020 }
            r2.h = r0     // Catch:{ all -> 0x0020 }
            boolean r0 = r2.d     // Catch:{ all -> 0x0020 }
            if (r0 != 0) goto L_0x001e
            cab.snapp.snappnetwork.e<cab.snapp.a.b> r0 = r2.h     // Catch:{ all -> 0x0020 }
            if (r0 != 0) goto L_0x0012
            goto L_0x001e
        L_0x0012:
            r0 = 1
            r2.d = r0     // Catch:{ all -> 0x0020 }
            cab.snapp.snappnetwork.e<cab.snapp.a.b> r0 = r2.h     // Catch:{ all -> 0x0020 }
            cab.snapp.snappnetwork.a.a<cab.snapp.a.b> r1 = r2.n     // Catch:{ all -> 0x0020 }
            r0.performRequest(r1)     // Catch:{ all -> 0x0020 }
            monitor-exit(r2)
            return
        L_0x001e:
            monitor-exit(r2)
            return
        L_0x0020:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.d.b.a.b():void");
    }

    public final void stop() {
        try {
            this.m = false;
            if (this.h != null) {
                this.h.cancel();
            }
            if (this.i != null) {
                this.i.cancel();
            }
            if (this.l != null) {
                this.l.cancel(true);
            }
            if (this.k != null) {
                this.k.shutdown();
            }
            cab.snapp.b.log(this.TAG, "Stop succeed");
        } catch (Exception e2) {
            e2.printStackTrace();
            String str = this.TAG;
            cab.snapp.b.log(str, "Stop Error " + e2.getMessage());
        }
    }

    public final void destroy() {
        stop();
        this.h = null;
        this.i = null;
        this.l = null;
        this.k = null;
        cab.snapp.b.log(this.TAG, "Destroy succeed");
    }

    public final void onEvent(cab.snapp.a.a aVar) {
        cab.snapp.b.log(this.TAG, "onEvent");
        this.f.onEvent(aVar);
    }
}
