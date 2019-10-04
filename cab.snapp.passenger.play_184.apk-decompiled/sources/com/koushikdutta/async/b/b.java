package com.koushikdutta.async.b;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.c;
import java.util.LinkedList;

public class b extends h implements c, a, Runnable {

    /* renamed from: a  reason: collision with root package name */
    a f4472a;

    /* renamed from: b  reason: collision with root package name */
    Runnable f4473b;
    LinkedList<c> c;
    boolean d;
    private boolean e;
    /* access modifiers changed from: private */
    public boolean f;

    public a getCallback() {
        return this.f4472a;
    }

    public void setCallback(a aVar) {
        this.f4472a = aVar;
    }

    public Runnable getCancelCallback() {
        return this.f4473b;
    }

    public void setCancelCallback(Runnable runnable) {
        this.f4473b = runnable;
    }

    public void setCancelCallback(final a aVar) {
        if (aVar == null) {
            this.f4473b = null;
        } else {
            this.f4473b = new Runnable() {
                public final void run() {
                    aVar.cancel();
                }
            };
        }
    }

    public b() {
        this(null);
    }

    public b(a aVar) {
        this(aVar, null);
    }

    public b(a aVar, Runnable runnable) {
        this.c = new LinkedList<>();
        this.f4473b = runnable;
        this.f4472a = aVar;
    }

    /* access modifiers changed from: package-private */
    public final void a(Exception exc) {
        if (setComplete()) {
            a aVar = this.f4472a;
            if (aVar != null) {
                aVar.onCompleted(exc);
            }
        }
    }

    private c a(c cVar) {
        if (cVar instanceof c) {
            ((c) cVar).setParent(this);
        }
        return cVar;
    }

    public b add(c cVar) {
        this.c.add(a(cVar));
        return this;
    }

    public b insert(c cVar) {
        this.c.add(0, a(cVar));
        return this;
    }

    public b add(final d dVar) {
        dVar.setParent(this);
        add((c) new c() {
            public final void onContinue(b bVar, a aVar) throws Exception {
                dVar.get();
                aVar.onCompleted(null);
            }
        });
        return this;
    }

    /* access modifiers changed from: private */
    public void a() {
        if (!this.e) {
            while (this.c.size() > 0 && !this.f && !isDone() && !isCancelled()) {
                c remove = this.c.remove();
                try {
                    this.e = true;
                    this.f = true;
                    remove.onContinue(this, new a() {

                        /* renamed from: b  reason: collision with root package name */
                        static final /* synthetic */ boolean f4476b = (!b.class.desiredAssertionStatus());

                        /* renamed from: a  reason: collision with root package name */
                        boolean f4477a;

                        public final void onCompleted(Exception exc) {
                            if (!this.f4477a) {
                                this.f4477a = true;
                                if (f4476b || b.this.f) {
                                    boolean unused = b.this.f = false;
                                    if (exc == null) {
                                        b.this.a();
                                    } else {
                                        b.this.a(exc);
                                    }
                                } else {
                                    throw new AssertionError();
                                }
                            }
                        }
                    });
                } catch (Exception e2) {
                    a(e2);
                } catch (Throwable th) {
                    this.e = false;
                    throw th;
                }
                this.e = false;
            }
            if (!this.f && !isDone() && !isCancelled()) {
                a((Exception) null);
            }
        }
    }

    public boolean cancel() {
        if (!super.cancel()) {
            return false;
        }
        Runnable runnable = this.f4473b;
        if (runnable != null) {
            runnable.run();
        }
        return true;
    }

    public b start() {
        if (!this.d) {
            this.d = true;
            a();
            return this;
        }
        throw new IllegalStateException("already started");
    }

    public void onContinue(b bVar, a aVar) throws Exception {
        setCallback(aVar);
        start();
    }

    public void run() {
        start();
    }
}
