.class public final Lcom/adyen/threeds2/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adyen/threeds2/internal/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adyen/threeds2/internal/a/c<",
        "Lcom/adyen/threeds2/internal/a/a/b/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"

.field private static b:Lcom/adyen/threeds2/internal/f;


# instance fields
.field private c:Lcom/adyen/threeds2/internal/a/a/b;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/Timer;

.field private f:Lcom/adyen/threeds2/internal/a/a/b/i;

.field private g:Lcom/adyen/threeds2/internal/a/a/b/j;

.field private h:Lcom/adyen/threeds2/internal/a;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/adyen/threeds2/internal/f;
    .locals 2

    const-class v0, Lcom/adyen/threeds2/internal/f;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/adyen/threeds2/internal/f;->b:Lcom/adyen/threeds2/internal/f;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/adyen/threeds2/internal/f;

    invoke-direct {v1}, Lcom/adyen/threeds2/internal/f;-><init>()V

    sput-object v1, Lcom/adyen/threeds2/internal/f;->b:Lcom/adyen/threeds2/internal/f;

    .line 83
    :cond_0
    sget-object v1, Lcom/adyen/threeds2/internal/f;->b:Lcom/adyen/threeds2/internal/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/adyen/threeds2/CompletionEvent;)V
    .locals 1

    .line 322
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->h()Lcom/adyen/threeds2/internal/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/a;->completed(Lcom/adyen/threeds2/CompletionEvent;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/adyen/threeds2/ProtocolErrorEvent;)V
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->h()Lcom/adyen/threeds2/internal/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/a;->protocolError(Lcom/adyen/threeds2/ProtocolErrorEvent;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/adyen/threeds2/RuntimeErrorEvent;)V
    .locals 1

    .line 346
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->h()Lcom/adyen/threeds2/internal/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/a;->runtimeError(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/a/a/b/a;)V
    .locals 1

    .line 314
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->h()Lcom/adyen/threeds2/internal/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/a;->a(Lcom/adyen/threeds2/internal/a/a/b/a;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/a/a/b/c;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    sget-object p1, Lcom/adyen/threeds2/internal/e/b;->MESSAGE_VERSIONS_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/b;->a()Lcom/adyen/threeds2/RuntimeErrorEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/c;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 277
    sget-object p1, Lcom/adyen/threeds2/internal/e/b;->MESSAGE_INDICES_MISMATCH:Lcom/adyen/threeds2/internal/e/b;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/b;->a()Lcom/adyen/threeds2/RuntimeErrorEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    return-void

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->d()V

    goto :goto_0

    .line 285
    :cond_2
    new-instance v0, Lcom/adyen/threeds2/internal/f/a;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->g:Lcom/adyen/threeds2/internal/a/a/b/j;

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/adyen/threeds2/internal/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/CompletionEvent;)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/c;->c()Lcom/adyen/threeds2/internal/a/a/b/a;

    move-result-object p1

    .line 289
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/a;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/a/a/b/e;)V
    .locals 6

    .line 294
    new-instance v0, Lcom/adyen/threeds2/internal/f/c;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    .line 295
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adyen/threeds2/internal/f/b;

    iget-object v3, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    .line 297
    invoke-virtual {v3}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/e;->a()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/e;->b()Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/e;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/adyen/threeds2/internal/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/adyen/threeds2/internal/f/c;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/ErrorMessage;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/ProtocolErrorEvent;)V

    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/a/a/b/i;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    instance-of v0, p1, Lcom/adyen/threeds2/internal/a/a/b/b;

    if-eqz v0, :cond_1

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/b;

    .line 219
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/b;->c()Lcom/adyen/threeds2/internal/a/a/a/c;

    move-result-object v0

    .line 220
    instance-of v0, v0, Lcom/adyen/threeds2/internal/a/a/a/b;

    if-nez v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->e()V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->a(I)V

    .line 227
    iput-object p1, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    .line 229
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->c:Lcom/adyen/threeds2/internal/a/a/b;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/a/a/b;->a(Lcom/adyen/threeds2/internal/a/a/b/i;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;ILcom/adyen/threeds2/internal/a;)V
    .locals 2

    monitor-enter p0

    .line 192
    :try_start_0
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b;

    invoke-direct {v0, p1, p2, p0}, Lcom/adyen/threeds2/internal/a/a/b;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;Lcom/adyen/threeds2/internal/a/c;)V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/f;->c:Lcom/adyen/threeds2/internal/a/a/b;

    .line 193
    iput-object p4, p0, Lcom/adyen/threeds2/internal/f;->h:Lcom/adyen/threeds2/internal/a;

    .line 194
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/adyen/threeds2/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/adyen/threeds2/internal/f;->e:Ljava/util/Timer;

    .line 196
    iget-object p1, p0, Lcom/adyen/threeds2/internal/f;->e:Ljava/util/Timer;

    new-instance p2, Lcom/adyen/threeds2/internal/f$a;

    invoke-direct {p2}, Lcom/adyen/threeds2/internal/f$a;-><init>()V

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, p3

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/adyen/threeds2/internal/f;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 191
    monitor-exit p0

    throw p1
.end method

.method private b(Lcom/adyen/threeds2/internal/a/a/b/j;)V
    .locals 2

    .line 233
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 238
    iput-object p1, p0, Lcom/adyen/threeds2/internal/f;->g:Lcom/adyen/threeds2/internal/a/a/b/j;

    .line 240
    sget-object v0, Lcom/adyen/threeds2/internal/f$1;->a:[I

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/j;->f()Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 250
    sget-object p1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    .line 251
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p1, v0, v1}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/adyen/threeds2/ProtocolErrorEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/ProtocolErrorEvent;)V

    goto :goto_0

    .line 246
    :pswitch_0
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/e;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/e;)V

    goto :goto_0

    .line 242
    :pswitch_1
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/c;

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/c;)V

    goto :goto_0

    .line 256
    :cond_1
    sget-object p1, Lcom/adyen/threeds2/internal/a/a/b/a/d;->ERROR:Lcom/adyen/threeds2/internal/a/a/b/a/d;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->d()Lcom/adyen/threeds2/internal/a/a/b/a/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adyen/threeds2/internal/a/a/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 258
    new-instance p1, Lcom/adyen/threeds2/internal/f/a;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    .line 259
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/e;->Y:Lcom/adyen/threeds2/internal/a/a/b/a/e;

    .line 260
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/CompletionEvent;)V

    goto :goto_0

    .line 263
    :cond_2
    sget-object p1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    .line 264
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p1, v0, v1}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/adyen/threeds2/ProtocolErrorEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/ProtocolErrorEvent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->h()Lcom/adyen/threeds2/internal/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v0}, Lcom/adyen/threeds2/internal/a;->cancelled()V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 1

    .line 306
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->h()Lcom/adyen/threeds2/internal/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Lcom/adyen/threeds2/internal/a;->a()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 330
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->h()Lcom/adyen/threeds2/internal/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Lcom/adyen/threeds2/internal/a;->timedout()V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    instance-of v0, v0, Lcom/adyen/threeds2/internal/a/a/b/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/b;

    .line 360
    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/b;->c()Lcom/adyen/threeds2/internal/a/a/a/c;

    move-result-object v0

    instance-of v0, v0, Lcom/adyen/threeds2/internal/a/a/a/b;

    return v0
.end method

.method private h()Lcom/adyen/threeds2/internal/a;
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/f;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->h:Lcom/adyen/threeds2/internal/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private i()Z
    .locals 2

    .line 377
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/f;->i:Z

    if-nez v0, :cond_0

    .line 378
    sget-object v0, Lcom/adyen/threeds2/internal/f;->a:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adyen/threeds2/internal/l/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/a/a/a/c;)V
    .locals 7

    .line 119
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/b;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->g:Lcom/adyen/threeds2/internal/a/a/b/j;

    .line 124
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/j;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->g:Lcom/adyen/threeds2/internal/a/a/b/j;

    .line 125
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/j;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->g:Lcom/adyen/threeds2/internal/a/a/b/j;

    .line 126
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/j;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->g:Lcom/adyen/threeds2/internal/a/a/b/j;

    .line 127
    invoke-virtual {v1}, Lcom/adyen/threeds2/internal/a/a/b/j;->j()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/adyen/threeds2/internal/a/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/a/c;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/i;)V

    return-void
.end method

.method public a(Lcom/adyen/threeds2/internal/a/a/b/j;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->b(Lcom/adyen/threeds2/internal/a/a/b/j;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/j;

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/j;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;Lcom/adyen/threeds2/internal/a/a/b/b;ILcom/adyen/threeds2/internal/a;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/adyen/threeds2/internal/f;->a(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;ILcom/adyen/threeds2/internal/a;)V

    .line 147
    invoke-direct {p0, p3}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/i;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 97
    instance-of v0, p1, Lcom/adyen/threeds2/internal/g/a;

    if-eqz v0, :cond_3

    .line 98
    check-cast p1, Lcom/adyen/threeds2/internal/g/a;

    .line 99
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/g/a;->a()Lcom/adyen/threeds2/internal/a/a/b/a/c;

    move-result-object p2

    .line 100
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/g/a;->b()Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->SYSTEM_CONNECTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-virtual {v0, p2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-virtual {p2, v0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->a(Lcom/adyen/threeds2/internal/a/a/b/i;Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/i;)V

    .line 106
    :cond_0
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_TIMED_OUT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-virtual {v0, p2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->SYSTEM_CONNECTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 107
    invoke-virtual {v0, p2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/adyen/threeds2/ProtocolErrorEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/ProtocolErrorEvent;)V

    goto :goto_1

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->a(Ljava/lang/String;)Lcom/adyen/threeds2/RuntimeErrorEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    goto :goto_1

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x8

    invoke-static {p2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    sget-object p2, Lcom/adyen/threeds2/internal/e/b;->UNKNOWN:Lcom/adyen/threeds2/internal/e/b;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/e/b;->a(Ljava/lang/String;)Lcom/adyen/threeds2/RuntimeErrorEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/RuntimeErrorEvent;)V

    :goto_1
    return-void
.end method

.method b()V
    .locals 3

    .line 151
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_TIMED_OUT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    const/16 v2, 0x9

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adyen/threeds2/internal/a/a/b/a/c;->a(Lcom/adyen/threeds2/internal/a/a/b/i;Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/b/i;)V

    .line 159
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->f()V

    return-void
.end method

.method declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/f;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 164
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 167
    :try_start_1
    iput-object v0, p0, Lcom/adyen/threeds2/internal/f;->c:Lcom/adyen/threeds2/internal/a/a/b;

    .line 169
    iput-object v0, p0, Lcom/adyen/threeds2/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->e:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 173
    iput-object v0, p0, Lcom/adyen/threeds2/internal/f;->e:Ljava/util/Timer;

    .line 176
    :cond_1
    iput-object v0, p0, Lcom/adyen/threeds2/internal/f;->f:Lcom/adyen/threeds2/internal/a/a/b/i;

    .line 177
    iput-object v0, p0, Lcom/adyen/threeds2/internal/f;->g:Lcom/adyen/threeds2/internal/a/a/b/j;

    .line 179
    iget-object v1, p0, Lcom/adyen/threeds2/internal/f;->h:Lcom/adyen/threeds2/internal/a;

    if-eqz v1, :cond_2

    .line 180
    iput-object v0, p0, Lcom/adyen/threeds2/internal/f;->h:Lcom/adyen/threeds2/internal/a;

    :cond_2
    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/adyen/threeds2/internal/f;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 162
    monitor-exit p0

    throw v0
.end method
