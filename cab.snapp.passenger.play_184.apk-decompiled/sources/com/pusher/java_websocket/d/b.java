package com.pusher.java_websocket.d;

import com.pusher.java_websocket.WebSocket;
import com.pusher.java_websocket.c;
import com.pusher.java_websocket.c.f;
import com.pusher.java_websocket.c.i;
import com.pusher.java_websocket.d;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.framing.Framedata;
import java.io.IOException;
import java.lang.Thread;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class b extends com.pusher.java_websocket.b implements Runnable {
    public static int DECODERS = Runtime.getRuntime().availableProcessors();

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f5071a = (!b.class.desiredAssertionStatus());

    /* renamed from: b  reason: collision with root package name */
    private final Collection<WebSocket> f5072b;
    private final InetSocketAddress c;
    private ServerSocketChannel d;
    private Selector e;
    private List<Draft> f;
    private Thread g;
    private final AtomicBoolean h;
    private List<C0098b> i;
    private List<d> j;
    private BlockingQueue<ByteBuffer> k;
    private int l;
    private final AtomicInteger m;
    private a n;

    public interface a extends c {
        d createWebSocket(com.pusher.java_websocket.b bVar, Draft draft, Socket socket);

        d createWebSocket(com.pusher.java_websocket.b bVar, List<Draft> list, Socket socket);

        ByteChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) throws IOException;
    }

    /* renamed from: com.pusher.java_websocket.d.b$b  reason: collision with other inner class name */
    public class C0098b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f5073a = (!b.class.desiredAssertionStatus());
        private BlockingQueue<d> c = new LinkedBlockingQueue();

        public C0098b() {
            setName("WebSocketWorker-" + getId());
            setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(b.this) {
                public final void uncaughtException(Thread thread, Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(thread, th);
                }
            });
        }

        public final void put(d dVar) throws InterruptedException {
            this.c.put(dVar);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0046, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x0047, code lost:
            r5 = r1;
            r1 = r0;
            r0 = r5;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Removed duplicated region for block: B:28:? A[ExcHandler: InterruptedException (unused java.lang.InterruptedException), SYNTHETIC, Splitter:B:1:0x0001] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
                r6 = this;
                r0 = 0
            L_0x0001:
                java.util.concurrent.BlockingQueue<com.pusher.java_websocket.d> r1 = r6.c     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0046 }
                java.lang.Object r1 = r1.take()     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0046 }
                com.pusher.java_websocket.d r1 = (com.pusher.java_websocket.d) r1     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0046 }
                java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r1.inQueue     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                java.lang.Object r0 = r0.poll()     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                boolean r2 = f5073a     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                if (r2 != 0) goto L_0x001e
                if (r0 == 0) goto L_0x0018
                goto L_0x001e
            L_0x0018:
                java.lang.AssertionError r0 = new java.lang.AssertionError     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                r0.<init>()     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                throw r0     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
            L_0x001e:
                r1.decode(r0)     // Catch:{ Exception -> 0x0029 }
                com.pusher.java_websocket.d.b r2 = com.pusher.java_websocket.d.b.this     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
            L_0x0023:
                r2.a((java.nio.ByteBuffer) r0)     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                goto L_0x003c
            L_0x0027:
                r2 = move-exception
                goto L_0x003e
            L_0x0029:
                r2 = move-exception
                java.io.PrintStream r3 = java.lang.System.err     // Catch:{ all -> 0x0027 }
                java.lang.String r4 = "Error while reading from remote connection: "
                java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch:{ all -> 0x0027 }
                java.lang.String r2 = r4.concat(r2)     // Catch:{ all -> 0x0027 }
                r3.println(r2)     // Catch:{ all -> 0x0027 }
                com.pusher.java_websocket.d.b r2 = com.pusher.java_websocket.d.b.this     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                goto L_0x0023
            L_0x003c:
                r0 = r1
                goto L_0x0001
            L_0x003e:
                com.pusher.java_websocket.d.b r3 = com.pusher.java_websocket.d.b.this     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                r3.a((java.nio.ByteBuffer) r0)     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
                throw r2     // Catch:{ InterruptedException -> 0x004f, RuntimeException -> 0x0044 }
            L_0x0044:
                r0 = move-exception
                goto L_0x004a
            L_0x0046:
                r1 = move-exception
                r5 = r1
                r1 = r0
                r0 = r5
            L_0x004a:
                com.pusher.java_websocket.d.b r2 = com.pusher.java_websocket.d.b.this
                r2.a((com.pusher.java_websocket.WebSocket) r1, (java.lang.Exception) r0)
            L_0x004f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.d.b.C0098b.run():void");
        }
    }

    public abstract void onClose(WebSocket webSocket, int i2, String str, boolean z);

    public void onCloseInitiated(WebSocket webSocket, int i2, String str) {
    }

    public void onClosing(WebSocket webSocket, int i2, String str, boolean z) {
    }

    public abstract void onError(WebSocket webSocket, Exception exc);

    public void onFragment(WebSocket webSocket, Framedata framedata) {
    }

    public abstract void onMessage(WebSocket webSocket, String str);

    public void onMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
    }

    public abstract void onOpen(WebSocket webSocket, com.pusher.java_websocket.c.a aVar);

    public b() throws UnknownHostException {
        this(new InetSocketAddress(80), DECODERS, null);
    }

    public b(InetSocketAddress inetSocketAddress) {
        this(inetSocketAddress, DECODERS, null);
    }

    public b(InetSocketAddress inetSocketAddress, int i2) {
        this(inetSocketAddress, i2, null);
    }

    public b(InetSocketAddress inetSocketAddress, List<Draft> list) {
        this(inetSocketAddress, DECODERS, list);
    }

    public b(InetSocketAddress inetSocketAddress, int i2, List<Draft> list) {
        this(inetSocketAddress, i2, list, new HashSet());
    }

    public b(InetSocketAddress inetSocketAddress, int i2, List<Draft> list, Collection<WebSocket> collection) {
        this.h = new AtomicBoolean(false);
        this.l = 0;
        this.m = new AtomicInteger(0);
        this.n = new a();
        if (inetSocketAddress == null || i2 <= 0 || collection == null) {
            throw new IllegalArgumentException("address and connectionscontainer must not be null and you need at least 1 decoder");
        }
        if (list == null) {
            this.f = Collections.emptyList();
        } else {
            this.f = list;
        }
        this.c = inetSocketAddress;
        this.f5072b = collection;
        this.j = new LinkedList();
        this.i = new ArrayList(i2);
        this.k = new LinkedBlockingQueue();
        for (int i3 = 0; i3 < i2; i3++) {
            C0098b bVar = new C0098b();
            this.i.add(bVar);
            bVar.start();
        }
    }

    public void start() {
        if (this.g == null) {
            new Thread(this).start();
            return;
        }
        throw new IllegalStateException(getClass().getName() + " can only be started once.");
    }

    public void stop(int i2) throws InterruptedException {
        ArrayList<WebSocket> arrayList;
        if (this.h.compareAndSet(false, true)) {
            synchronized (this.f5072b) {
                arrayList = new ArrayList<>(this.f5072b);
            }
            for (WebSocket close : arrayList) {
                close.close(1001);
            }
            synchronized (this) {
                if (!(this.g == null || this.g == Thread.currentThread())) {
                    this.e.wakeup();
                    this.g.interrupt();
                    this.g.join((long) i2);
                }
            }
        }
    }

    public void stop() throws IOException, InterruptedException {
        stop(0);
    }

    public Collection<WebSocket> connections() {
        return this.f5072b;
    }

    public InetSocketAddress getAddress() {
        return this.c;
    }

    public int getPort() {
        int port = getAddress().getPort();
        if (port != 0) {
            return port;
        }
        ServerSocketChannel serverSocketChannel = this.d;
        return serverSocketChannel != null ? serverSocketChannel.socket().getLocalPort() : port;
    }

    public List<Draft> getDraft() {
        return Collections.unmodifiableList(this.f);
    }

    /*  JADX ERROR: StackOverflow in pass: MarkFinallyVisitor
        jadx.core.utils.exceptions.JadxOverflowException: 
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    public void run() {
        /*
            r11 = this;
            monitor-enter(r11)
            java.lang.Thread r0 = r11.g     // Catch:{ all -> 0x02b6 }
            if (r0 != 0) goto L_0x0297
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x02b6 }
            r11.g = r0     // Catch:{ all -> 0x02b6 }
            java.util.concurrent.atomic.AtomicBoolean r0 = r11.h     // Catch:{ all -> 0x02b6 }
            boolean r0 = r0.get()     // Catch:{ all -> 0x02b6 }
            if (r0 == 0) goto L_0x0015
            monitor-exit(r11)     // Catch:{ all -> 0x02b6 }
            return
        L_0x0015:
            monitor-exit(r11)     // Catch:{ all -> 0x02b6 }
            java.lang.Thread r0 = r11.g
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "WebsocketSelector"
            r1.<init>(r2)
            java.lang.Thread r2 = r11.g
            long r2 = r2.getId()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.setName(r1)
            r0 = 0
            java.nio.channels.ServerSocketChannel r1 = java.nio.channels.ServerSocketChannel.open()     // Catch:{ IOException -> 0x0292 }
            r11.d = r1     // Catch:{ IOException -> 0x0292 }
            java.nio.channels.ServerSocketChannel r1 = r11.d     // Catch:{ IOException -> 0x0292 }
            r2 = 0
            r1.configureBlocking(r2)     // Catch:{ IOException -> 0x0292 }
            java.nio.channels.ServerSocketChannel r1 = r11.d     // Catch:{ IOException -> 0x0292 }
            java.net.ServerSocket r1 = r1.socket()     // Catch:{ IOException -> 0x0292 }
            int r3 = com.pusher.java_websocket.d.RCVBUF     // Catch:{ IOException -> 0x0292 }
            r1.setReceiveBufferSize(r3)     // Catch:{ IOException -> 0x0292 }
            java.net.InetSocketAddress r3 = r11.c     // Catch:{ IOException -> 0x0292 }
            r1.bind(r3)     // Catch:{ IOException -> 0x0292 }
            java.nio.channels.Selector r1 = java.nio.channels.Selector.open()     // Catch:{ IOException -> 0x0292 }
            r11.e = r1     // Catch:{ IOException -> 0x0292 }
            java.nio.channels.ServerSocketChannel r1 = r11.d     // Catch:{ IOException -> 0x0292 }
            java.nio.channels.Selector r3 = r11.e     // Catch:{ IOException -> 0x0292 }
            java.nio.channels.ServerSocketChannel r4 = r11.d     // Catch:{ IOException -> 0x0292 }
            int r4 = r4.validOps()     // Catch:{ IOException -> 0x0292 }
            r1.register(r3, r4)     // Catch:{ IOException -> 0x0292 }
        L_0x005f:
            java.lang.Thread r1 = r11.g     // Catch:{ RuntimeException -> 0x0244 }
            boolean r1 = r1.isInterrupted()     // Catch:{ RuntimeException -> 0x0244 }
            if (r1 != 0) goto L_0x021d
            java.nio.channels.Selector r1 = r11.e     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x01bc, InterruptedException -> 0x0196 }
            r1.select()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x01bc, InterruptedException -> 0x0196 }
            java.nio.channels.Selector r1 = r11.e     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x01bc, InterruptedException -> 0x0196 }
            java.util.Set r1 = r1.selectedKeys()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x01bc, InterruptedException -> 0x0196 }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x01bc, InterruptedException -> 0x0196 }
            r3 = r0
            r4 = r3
        L_0x0078:
            boolean r5 = r1.hasNext()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            if (r5 == 0) goto L_0x0151
            java.lang.Object r5 = r1.next()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            java.nio.channels.SelectionKey r5 = (java.nio.channels.SelectionKey) r5     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            boolean r3 = r5.isValid()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            if (r3 == 0) goto L_0x014b
            boolean r3 = r5.isAcceptable()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            r6 = 1
            if (r3 == 0) goto L_0x00dc
            java.nio.channels.ServerSocketChannel r3 = r11.d     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.channels.SocketChannel r3 = r3.accept()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            r3.configureBlocking(r2)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.d.b$a r7 = r11.n     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.util.List<com.pusher.java_websocket.drafts.Draft> r8 = r11.f     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.net.Socket r9 = r3.socket()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.d r7 = r7.createWebSocket((com.pusher.java_websocket.b) r11, (java.util.List<com.pusher.java_websocket.drafts.Draft>) r8, (java.net.Socket) r9)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.channels.Selector r8 = r11.e     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.channels.SelectionKey r8 = r3.register(r8, r6, r7)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            r7.key = r8     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.d.b$a r8 = r11.n     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.channels.SelectionKey r9 = r7.key     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.channels.ByteChannel r3 = r8.wrapChannel(r3, r9)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            r7.channel = r3     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            r1.remove()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.util.concurrent.atomic.AtomicInteger r3 = r11.m     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            int r3 = r3.get()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.util.List<com.pusher.java_websocket.d.b$b> r7 = r11.i     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            int r7 = r7.size()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            int r7 = r7 * 2
            int r7 = r7 + r6
            if (r3 >= r7) goto L_0x014b
            java.util.concurrent.atomic.AtomicInteger r3 = r11.m     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            r3.incrementAndGet()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r3 = r11.k     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.ByteBuffer r6 = r11.createBuffer()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            r3.put(r6)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            goto L_0x014b
        L_0x00dc:
            boolean r3 = r5.isReadable()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            if (r3 == 0) goto L_0x012d
            java.lang.Object r3 = r5.attachment()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.d r3 = (com.pusher.java_websocket.d) r3     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.ByteBuffer r4 = r11.a()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0129, InterruptedException -> 0x0196 }
            java.nio.channels.ByteChannel r7 = r3.channel     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            boolean r7 = com.pusher.java_websocket.a.read(r4, r3, r7)     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            if (r7 == 0) goto L_0x011f
            boolean r7 = r4.hasRemaining()     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            if (r7 == 0) goto L_0x011b
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r7 = r3.inQueue     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            r7.put(r4)     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            r11.a((com.pusher.java_websocket.d) r3)     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            r1.remove()     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            java.nio.channels.ByteChannel r7 = r3.channel     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            boolean r7 = r7 instanceof com.pusher.java_websocket.f     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            if (r7 == 0) goto L_0x0122
            java.nio.channels.ByteChannel r7 = r3.channel     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.f r7 = (com.pusher.java_websocket.f) r7     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            boolean r7 = r7.isNeedRead()     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            if (r7 == 0) goto L_0x0122
            java.util.List<com.pusher.java_websocket.d> r7 = r11.j     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            r7.add(r3)     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            goto L_0x0122
        L_0x011b:
            r11.a((java.nio.ByteBuffer) r4)     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            goto L_0x0122
        L_0x011f:
            r11.a((java.nio.ByteBuffer) r4)     // Catch:{ IOException -> 0x0124, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
        L_0x0122:
            r4 = r3
            goto L_0x012d
        L_0x0124:
            r1 = move-exception
            r11.a((java.nio.ByteBuffer) r4)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0129, InterruptedException -> 0x0196 }
            throw r1     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0129, InterruptedException -> 0x0196 }
        L_0x0129:
            r1 = move-exception
            r4 = r3
            goto L_0x01bf
        L_0x012d:
            boolean r3 = r5.isWritable()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            if (r3 == 0) goto L_0x014b
            java.lang.Object r3 = r5.attachment()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.d r3 = (com.pusher.java_websocket.d) r3     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x014e, InterruptedException -> 0x0196 }
            java.nio.channels.ByteChannel r4 = r3.channel     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0129, InterruptedException -> 0x0196 }
            boolean r4 = com.pusher.java_websocket.a.batch(r3, r4)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0129, InterruptedException -> 0x0196 }
            if (r4 == 0) goto L_0x014a
            boolean r4 = r5.isValid()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0129, InterruptedException -> 0x0196 }
            if (r4 == 0) goto L_0x014a
            r5.interestOps(r6)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0129, InterruptedException -> 0x0196 }
        L_0x014a:
            r4 = r3
        L_0x014b:
            r3 = r5
            goto L_0x0078
        L_0x014e:
            r1 = move-exception
            goto L_0x01bf
        L_0x0151:
            java.util.List<com.pusher.java_websocket.d> r1 = r11.j     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            boolean r1 = r1.isEmpty()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            if (r1 != 0) goto L_0x005f
            java.util.List<com.pusher.java_websocket.d> r1 = r11.j     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            java.lang.Object r1 = r1.remove(r2)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.d r1 = (com.pusher.java_websocket.d) r1     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x0193, InterruptedException -> 0x0196 }
            java.nio.channels.ByteChannel r4 = r1.channel     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x018d, InterruptedException -> 0x0196 }
            com.pusher.java_websocket.f r4 = (com.pusher.java_websocket.f) r4     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x018d, InterruptedException -> 0x0196 }
            java.nio.ByteBuffer r5 = r11.a()     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x018d, InterruptedException -> 0x0196 }
            boolean r4 = com.pusher.java_websocket.a.readMore(r5, r1, r4)     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            if (r4 == 0) goto L_0x0174
            java.util.List<com.pusher.java_websocket.d> r4 = r11.j     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            r4.add(r1)     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
        L_0x0174:
            boolean r4 = r5.hasRemaining()     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            if (r4 == 0) goto L_0x0183
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r4 = r1.inQueue     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            r4.put(r5)     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            r11.a((com.pusher.java_websocket.d) r1)     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
            goto L_0x0186
        L_0x0183:
            r11.a((java.nio.ByteBuffer) r5)     // Catch:{ IOException -> 0x0188, CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, InterruptedException -> 0x0196 }
        L_0x0186:
            r4 = r1
            goto L_0x0151
        L_0x0188:
            r4 = move-exception
            r11.a((java.nio.ByteBuffer) r5)     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x018d, InterruptedException -> 0x0196 }
            throw r4     // Catch:{ CancelledKeyException -> 0x005f, ClosedByInterruptException -> 0x01f7, IOException -> 0x018d, InterruptedException -> 0x0196 }
        L_0x018d:
            r4 = move-exception
            r5 = r3
            r10 = r4
            r4 = r1
            r1 = r10
            goto L_0x01bf
        L_0x0193:
            r1 = move-exception
            r5 = r3
            goto L_0x01bf
        L_0x0196:
            java.util.List<com.pusher.java_websocket.d.b$b> r1 = r11.i
            if (r1 == 0) goto L_0x01af
            java.util.Iterator r1 = r1.iterator()
        L_0x019f:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x01af
            java.lang.Object r2 = r1.next()
            com.pusher.java_websocket.d.b$b r2 = (com.pusher.java_websocket.d.b.C0098b) r2
            r2.interrupt()
            goto L_0x019f
        L_0x01af:
            java.nio.channels.ServerSocketChannel r1 = r11.d
            if (r1 == 0) goto L_0x01bb
            r1.close()     // Catch:{ IOException -> 0x01b7 }
            return
        L_0x01b7:
            r1 = move-exception
            r11.onError(r0, r1)
        L_0x01bb:
            return
        L_0x01bc:
            r1 = move-exception
            r4 = r0
            r5 = r4
        L_0x01bf:
            if (r5 == 0) goto L_0x01c4
            r5.cancel()     // Catch:{ RuntimeException -> 0x0244 }
        L_0x01c4:
            if (r4 == 0) goto L_0x01d1
            r3 = 1006(0x3ee, float:1.41E-42)
            java.lang.String r1 = r1.getMessage()     // Catch:{ RuntimeException -> 0x0244 }
            r4.closeConnection(r3, r1)     // Catch:{ RuntimeException -> 0x0244 }
            goto L_0x005f
        L_0x01d1:
            if (r5 == 0) goto L_0x005f
            java.nio.channels.SelectableChannel r3 = r5.channel()     // Catch:{ RuntimeException -> 0x0244 }
            if (r3 == 0) goto L_0x005f
            boolean r4 = r3.isOpen()     // Catch:{ RuntimeException -> 0x0244 }
            if (r4 == 0) goto L_0x005f
            r3.close()     // Catch:{ IOException -> 0x01e2 }
        L_0x01e2:
            boolean r3 = com.pusher.java_websocket.d.DEBUG     // Catch:{ RuntimeException -> 0x0244 }
            if (r3 == 0) goto L_0x005f
            java.io.PrintStream r3 = java.lang.System.out     // Catch:{ RuntimeException -> 0x0244 }
            java.lang.String r4 = "Connection closed because of"
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch:{ RuntimeException -> 0x0244 }
            java.lang.String r1 = r4.concat(r1)     // Catch:{ RuntimeException -> 0x0244 }
            r3.println(r1)     // Catch:{ RuntimeException -> 0x0244 }
            goto L_0x005f
        L_0x01f7:
            java.util.List<com.pusher.java_websocket.d.b$b> r1 = r11.i
            if (r1 == 0) goto L_0x0210
            java.util.Iterator r1 = r1.iterator()
        L_0x0200:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0210
            java.lang.Object r2 = r1.next()
            com.pusher.java_websocket.d.b$b r2 = (com.pusher.java_websocket.d.b.C0098b) r2
            r2.interrupt()
            goto L_0x0200
        L_0x0210:
            java.nio.channels.ServerSocketChannel r1 = r11.d
            if (r1 == 0) goto L_0x021c
            r1.close()     // Catch:{ IOException -> 0x0218 }
            return
        L_0x0218:
            r1 = move-exception
            r11.onError(r0, r1)
        L_0x021c:
            return
        L_0x021d:
            java.util.List<com.pusher.java_websocket.d.b$b> r1 = r11.i
            if (r1 == 0) goto L_0x0235
            java.util.Iterator r1 = r1.iterator()
        L_0x0225:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0235
            java.lang.Object r2 = r1.next()
            com.pusher.java_websocket.d.b$b r2 = (com.pusher.java_websocket.d.b.C0098b) r2
            r2.interrupt()
            goto L_0x0225
        L_0x0235:
            java.nio.channels.ServerSocketChannel r1 = r11.d
            if (r1 == 0) goto L_0x026c
            r1.close()     // Catch:{ IOException -> 0x023d }
            return
        L_0x023d:
            r1 = move-exception
            r11.onError(r0, r1)
            return
        L_0x0242:
            r1 = move-exception
            goto L_0x026d
        L_0x0244:
            r1 = move-exception
            r11.a((com.pusher.java_websocket.WebSocket) r0, (java.lang.Exception) r1)     // Catch:{ all -> 0x0242 }
            java.util.List<com.pusher.java_websocket.d.b$b> r1 = r11.i
            if (r1 == 0) goto L_0x0260
            java.util.Iterator r1 = r1.iterator()
        L_0x0250:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0260
            java.lang.Object r2 = r1.next()
            com.pusher.java_websocket.d.b$b r2 = (com.pusher.java_websocket.d.b.C0098b) r2
            r2.interrupt()
            goto L_0x0250
        L_0x0260:
            java.nio.channels.ServerSocketChannel r1 = r11.d
            if (r1 == 0) goto L_0x026c
            r1.close()     // Catch:{ IOException -> 0x0268 }
            return
        L_0x0268:
            r1 = move-exception
            r11.onError(r0, r1)
        L_0x026c:
            return
        L_0x026d:
            java.util.List<com.pusher.java_websocket.d.b$b> r2 = r11.i
            if (r2 == 0) goto L_0x0285
            java.util.Iterator r2 = r2.iterator()
        L_0x0275:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0285
            java.lang.Object r3 = r2.next()
            com.pusher.java_websocket.d.b$b r3 = (com.pusher.java_websocket.d.b.C0098b) r3
            r3.interrupt()
            goto L_0x0275
        L_0x0285:
            java.nio.channels.ServerSocketChannel r2 = r11.d
            if (r2 == 0) goto L_0x0291
            r2.close()     // Catch:{ IOException -> 0x028d }
            goto L_0x0291
        L_0x028d:
            r2 = move-exception
            r11.onError(r0, r2)
        L_0x0291:
            throw r1
        L_0x0292:
            r1 = move-exception
            r11.a((com.pusher.java_websocket.WebSocket) r0, (java.lang.Exception) r1)
            return
        L_0x0297:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x02b6 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x02b6 }
            r1.<init>()     // Catch:{ all -> 0x02b6 }
            java.lang.Class r2 = r11.getClass()     // Catch:{ all -> 0x02b6 }
            java.lang.String r2 = r2.getName()     // Catch:{ all -> 0x02b6 }
            r1.append(r2)     // Catch:{ all -> 0x02b6 }
            java.lang.String r2 = " can only be started once."
            r1.append(r2)     // Catch:{ all -> 0x02b6 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x02b6 }
            r0.<init>(r1)     // Catch:{ all -> 0x02b6 }
            throw r0     // Catch:{ all -> 0x02b6 }
        L_0x02b6:
            r0 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x02b6 }
            goto L_0x02ba
        L_0x02b9:
            throw r0
        L_0x02ba:
            goto L_0x02b9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.d.b.run():void");
    }

    public ByteBuffer createBuffer() {
        return ByteBuffer.allocate(d.RCVBUF);
    }

    private void a(d dVar) throws InterruptedException {
        if (dVar.workerThread == null) {
            List<C0098b> list = this.i;
            dVar.workerThread = list.get(this.l % list.size());
            this.l++;
        }
        dVar.workerThread.put(dVar);
    }

    private ByteBuffer a() throws InterruptedException {
        return this.k.take();
    }

    /* access modifiers changed from: private */
    public void a(ByteBuffer byteBuffer) throws InterruptedException {
        if (this.k.size() <= this.m.intValue()) {
            this.k.put(byteBuffer);
        }
    }

    /* access modifiers changed from: private */
    public void a(WebSocket webSocket, Exception exc) {
        onError(webSocket, exc);
        try {
            stop();
        } catch (IOException e2) {
            onError(null, e2);
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
            onError(null, e3);
        }
    }

    public final void onWebsocketMessage(WebSocket webSocket, String str) {
        onMessage(webSocket, str);
    }

    @Deprecated
    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
        onFragment(webSocket, framedata);
    }

    public final void onWebsocketMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
        onMessage(webSocket, byteBuffer);
    }

    public final void onWebsocketOpen(WebSocket webSocket, f fVar) {
        if (b(webSocket)) {
            onOpen(webSocket, (com.pusher.java_websocket.c.a) fVar);
        }
    }

    public final void onWebsocketClose(WebSocket webSocket, int i2, String str, boolean z) {
        this.e.wakeup();
        if (a(webSocket)) {
            onClose(webSocket, i2, str, z);
        }
    }

    private boolean a(WebSocket webSocket) {
        boolean remove;
        synchronized (this.f5072b) {
            remove = this.f5072b.remove(webSocket);
            if (!f5071a) {
                if (!remove) {
                    throw new AssertionError();
                }
            }
        }
        if (this.h.get() && this.f5072b.size() == 0) {
            this.g.interrupt();
        }
        return remove;
    }

    public i onWebsocketHandshakeReceivedAsServer(WebSocket webSocket, Draft draft, com.pusher.java_websocket.c.a aVar) throws com.pusher.java_websocket.b.b {
        return super.onWebsocketHandshakeReceivedAsServer(webSocket, draft, aVar);
    }

    private boolean b(WebSocket webSocket) {
        boolean add;
        if (!this.h.get()) {
            synchronized (this.f5072b) {
                add = this.f5072b.add(webSocket);
                if (!f5071a) {
                    if (!add) {
                        throw new AssertionError();
                    }
                }
            }
            return add;
        }
        webSocket.close(1001);
        return true;
    }

    public final void onWebsocketError(WebSocket webSocket, Exception exc) {
        onError(webSocket, exc);
    }

    public final void onWriteDemand(WebSocket webSocket) {
        d dVar = (d) webSocket;
        try {
            dVar.key.interestOps(5);
        } catch (CancelledKeyException unused) {
            dVar.outQueue.clear();
        }
        this.e.wakeup();
    }

    public void onWebsocketCloseInitiated(WebSocket webSocket, int i2, String str) {
        onCloseInitiated(webSocket, i2, str);
    }

    public void onWebsocketClosing(WebSocket webSocket, int i2, String str, boolean z) {
        onClosing(webSocket, i2, str, z);
    }

    public final void setWebSocketFactory(a aVar) {
        this.n = aVar;
    }

    public final c getWebSocketFactory() {
        return this.n;
    }

    private static Socket c(WebSocket webSocket) {
        return ((SocketChannel) ((d) webSocket).key.channel()).socket();
    }

    public InetSocketAddress getLocalSocketAddress(WebSocket webSocket) {
        return (InetSocketAddress) c(webSocket).getLocalSocketAddress();
    }

    public InetSocketAddress getRemoteSocketAddress(WebSocket webSocket) {
        return (InetSocketAddress) c(webSocket).getRemoteSocketAddress();
    }
}
