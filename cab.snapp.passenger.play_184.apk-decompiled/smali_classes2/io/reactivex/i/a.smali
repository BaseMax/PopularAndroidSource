.class public final Lio/reactivex/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/i/a$b;,
        Lio/reactivex/i/a$h;,
        Lio/reactivex/i/a$f;,
        Lio/reactivex/i/a$c;,
        Lio/reactivex/i/a$e;,
        Lio/reactivex/i/a$d;,
        Lio/reactivex/i/a$a;,
        Lio/reactivex/i/a$g;
    }
.end annotation


# static fields
.field static final a:Lio/reactivex/ah;

.field static final b:Lio/reactivex/ah;

.field static final c:Lio/reactivex/ah;

.field static final d:Lio/reactivex/ah;

.field static final e:Lio/reactivex/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lio/reactivex/i/a$h;

    invoke-direct {v0}, Lio/reactivex/i/a$h;-><init>()V

    invoke-static {v0}, Lio/reactivex/g/a;->initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/ah;

    move-result-object v0

    sput-object v0, Lio/reactivex/i/a;->a:Lio/reactivex/ah;

    .line 77
    new-instance v0, Lio/reactivex/i/a$b;

    invoke-direct {v0}, Lio/reactivex/i/a$b;-><init>()V

    invoke-static {v0}, Lio/reactivex/g/a;->initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/ah;

    move-result-object v0

    sput-object v0, Lio/reactivex/i/a;->b:Lio/reactivex/ah;

    .line 79
    new-instance v0, Lio/reactivex/i/a$c;

    invoke-direct {v0}, Lio/reactivex/i/a$c;-><init>()V

    invoke-static {v0}, Lio/reactivex/g/a;->initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/ah;

    move-result-object v0

    sput-object v0, Lio/reactivex/i/a;->c:Lio/reactivex/ah;

    .line 81
    invoke-static {}, Lio/reactivex/internal/e/s;->instance()Lio/reactivex/internal/e/s;

    move-result-object v0

    sput-object v0, Lio/reactivex/i/a;->d:Lio/reactivex/ah;

    .line 83
    new-instance v0, Lio/reactivex/i/a$f;

    invoke-direct {v0}, Lio/reactivex/i/a$f;-><init>()V

    invoke-static {v0}, Lio/reactivex/g/a;->initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/ah;

    move-result-object v0

    sput-object v0, Lio/reactivex/i/a;->e:Lio/reactivex/ah;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computation()Lio/reactivex/ah;
    .locals 1

    .line 136
    sget-object v0, Lio/reactivex/i/a;->b:Lio/reactivex/ah;

    invoke-static {v0}, Lio/reactivex/g/a;->onComputationScheduler(Lio/reactivex/ah;)Lio/reactivex/ah;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lio/reactivex/ah;
    .locals 2

    .line 346
    new-instance v0, Lio/reactivex/internal/e/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/e/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;Z)Lio/reactivex/ah;
    .locals 1

    .line 406
    new-instance v0, Lio/reactivex/internal/e/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/e/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static io()Lio/reactivex/ah;
    .locals 1

    .line 181
    sget-object v0, Lio/reactivex/i/a;->c:Lio/reactivex/ah;

    invoke-static {v0}, Lio/reactivex/g/a;->onIoScheduler(Lio/reactivex/ah;)Lio/reactivex/ah;

    move-result-object v0

    return-object v0
.end method

.method public static newThread()Lio/reactivex/ah;
    .locals 1

    .line 239
    sget-object v0, Lio/reactivex/i/a;->e:Lio/reactivex/ah;

    invoke-static {v0}, Lio/reactivex/g/a;->onNewThreadScheduler(Lio/reactivex/ah;)Lio/reactivex/ah;

    move-result-object v0

    return-object v0
.end method

.method public static shutdown()V
    .locals 1

    .line 414
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->shutdown()V

    .line 415
    invoke-static {}, Lio/reactivex/i/a;->io()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->shutdown()V

    .line 416
    invoke-static {}, Lio/reactivex/i/a;->newThread()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->shutdown()V

    .line 417
    invoke-static {}, Lio/reactivex/i/a;->single()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->shutdown()V

    .line 418
    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->shutdown()V

    .line 419
    invoke-static {}, Lio/reactivex/internal/e/p;->shutdown()V

    return-void
.end method

.method public static single()Lio/reactivex/ah;
    .locals 1

    .line 289
    sget-object v0, Lio/reactivex/i/a;->a:Lio/reactivex/ah;

    invoke-static {v0}, Lio/reactivex/g/a;->onSingleScheduler(Lio/reactivex/ah;)Lio/reactivex/ah;

    move-result-object v0

    return-object v0
.end method

.method public static start()V
    .locals 1

    .line 427
    invoke-static {}, Lio/reactivex/i/a;->computation()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->start()V

    .line 428
    invoke-static {}, Lio/reactivex/i/a;->io()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->start()V

    .line 429
    invoke-static {}, Lio/reactivex/i/a;->newThread()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->start()V

    .line 430
    invoke-static {}, Lio/reactivex/i/a;->single()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->start()V

    .line 431
    invoke-static {}, Lio/reactivex/i/a;->trampoline()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/ah;->start()V

    .line 432
    invoke-static {}, Lio/reactivex/internal/e/p;->start()V

    return-void
.end method

.method public static trampoline()Lio/reactivex/ah;
    .locals 1

    .line 200
    sget-object v0, Lio/reactivex/i/a;->d:Lio/reactivex/ah;

    return-object v0
.end method
