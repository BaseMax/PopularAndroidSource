.class public final Li/a/da;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# direct methods
.method public static final a()Li/a/aa;
    .locals 3

    .line 1
    new-instance v0, Li/a/d;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Li/a/d;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
