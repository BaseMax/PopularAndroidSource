.class public final Lio/reactivex/internal/e/s;
.super Lio/reactivex/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/e/s$a;,
        Lio/reactivex/internal/e/s$b;,
        Lio/reactivex/internal/e/s$c;
    }
.end annotation


# static fields
.field private static final b:Lio/reactivex/internal/e/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lio/reactivex/internal/e/s;

    invoke-direct {v0}, Lio/reactivex/internal/e/s;-><init>()V

    sput-object v0, Lio/reactivex/internal/e/s;->b:Lio/reactivex/internal/e/s;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lio/reactivex/ah;-><init>()V

    return-void
.end method

.method public static instance()Lio/reactivex/internal/e/s;
    .locals 1

    .line 37
    sget-object v0, Lio/reactivex/internal/e/s;->b:Lio/reactivex/internal/e/s;

    return-object v0
.end method


# virtual methods
.method public final createWorker()Lio/reactivex/ah$c;
    .locals 1

    .line 43
    new-instance v0, Lio/reactivex/internal/e/s$c;

    invoke-direct {v0}, Lio/reactivex/internal/e/s$c;-><init>()V

    return-object v0
.end method

.method public final scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;
    .locals 0

    .line 52
    invoke-static {p1}, Lio/reactivex/g/a;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 53
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public final scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 0

    .line 60
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 61
    invoke-static {p1}, Lio/reactivex/g/a;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 64
    invoke-static {p1}, Lio/reactivex/g/a;->onError(Ljava/lang/Throwable;)V

    .line 66
    :goto_0
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1
.end method
