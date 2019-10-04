.class public final Lio/reactivex/internal/operators/c/ct;
.super Lio/reactivex/f/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/disposables/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/ct$g;,
        Lio/reactivex/internal/operators/c/ct$e;,
        Lio/reactivex/internal/operators/c/ct$k;,
        Lio/reactivex/internal/operators/c/ct$l;,
        Lio/reactivex/internal/operators/c/ct$i;,
        Lio/reactivex/internal/operators/c/ct$c;,
        Lio/reactivex/internal/operators/c/ct$o;,
        Lio/reactivex/internal/operators/c/ct$m;,
        Lio/reactivex/internal/operators/c/ct$n;,
        Lio/reactivex/internal/operators/c/ct$a;,
        Lio/reactivex/internal/operators/c/ct$f;,
        Lio/reactivex/internal/operators/c/ct$p;,
        Lio/reactivex/internal/operators/c/ct$h;,
        Lio/reactivex/internal/operators/c/ct$d;,
        Lio/reactivex/internal/operators/c/ct$j;,
        Lio/reactivex/internal/operators/c/ct$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/f/a<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/e;"
    }
.end annotation


# static fields
.field static final e:Lio/reactivex/internal/operators/c/ct$b;


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ct$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/c/ct$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/ct$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lio/reactivex/internal/operators/c/ct$o;

    invoke-direct {v0}, Lio/reactivex/internal/operators/c/ct$o;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/c/ct;->e:Lio/reactivex/internal/operators/c/ct$b;

    return-void
.end method

.method private constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/c/ct$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/c/ct$j<",
            "TT;>;>;",
            "Lio/reactivex/internal/operators/c/ct$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lio/reactivex/f/a;-><init>()V

    .line 151
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ct;->d:Lio/reactivex/ae;

    .line 152
    iput-object p2, p0, Lio/reactivex/internal/operators/c/ct;->a:Lio/reactivex/ae;

    .line 153
    iput-object p3, p0, Lio/reactivex/internal/operators/c/ct;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 154
    iput-object p4, p0, Lio/reactivex/internal/operators/c/ct;->c:Lio/reactivex/internal/operators/c/ct$b;

    return-void
.end method

.method private static a(Lio/reactivex/ae;Lio/reactivex/internal/operators/c/ct$b;)Lio/reactivex/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/internal/operators/c/ct$b<",
            "TT;>;)",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 144
    new-instance v1, Lio/reactivex/internal/operators/c/ct$k;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/c/ct$k;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/c/ct$b;)V

    .line 145
    new-instance v2, Lio/reactivex/internal/operators/c/ct;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/c/ct;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/c/ct$b;)V

    invoke-static {v2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/f/a;)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/ae;I)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;I)",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 100
    invoke-static {p0}, Lio/reactivex/internal/operators/c/ct;->createFrom(Lio/reactivex/ae;)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/c/ct$i;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/c/ct$i;-><init>(I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/c/ct;->a(Lio/reactivex/ae;Lio/reactivex/internal/operators/c/ct$b;)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 116
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/c/ct;->create(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/ae;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/f/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "I)",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 131
    new-instance v6, Lio/reactivex/internal/operators/c/ct$l;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/ct$l;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {p0, v6}, Lio/reactivex/internal/operators/c/ct;->a(Lio/reactivex/ae;Lio/reactivex/internal/operators/c/ct$b;)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static createFrom(Lio/reactivex/ae;)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/ae<",
            "+TT;>;)",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 87
    sget-object v0, Lio/reactivex/internal/operators/c/ct;->e:Lio/reactivex/internal/operators/c/ct$b;

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/c/ct;->a(Lio/reactivex/ae;Lio/reactivex/internal/operators/c/ct$b;)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0
.end method

.method public static multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/f/a<",
            "TU;>;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/z<",
            "TU;>;+",
            "Lio/reactivex/ae<",
            "TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lio/reactivex/internal/operators/c/ct$e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ct$e;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static observeOn(Lio/reactivex/f/a;Lio/reactivex/ah;)Lio/reactivex/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/f/a<",
            "TT;>;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lio/reactivex/f/a;->observeOn(Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    .line 76
    new-instance v0, Lio/reactivex/internal/operators/c/ct$g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/c/ct$g;-><init>(Lio/reactivex/f/a;Lio/reactivex/z;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/f/a;)Lio/reactivex/f/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final connect(Lio/reactivex/e/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/b/c;",
            ">;)V"
        }
    .end annotation

    .line 180
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/c/ct$j;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/ct$j;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ct;->c:Lio/reactivex/internal/operators/c/ct$b;

    invoke-interface {v1}, Lio/reactivex/internal/operators/c/ct$b;->call()Lio/reactivex/internal/operators/c/ct$h;

    move-result-object v1

    .line 186
    new-instance v2, Lio/reactivex/internal/operators/c/ct$j;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/c/ct$j;-><init>(Lio/reactivex/internal/operators/c/ct$h;)V

    .line 188
    iget-object v1, p0, Lio/reactivex/internal/operators/c/ct;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 197
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/c/ct$j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/c/ct$j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 215
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 224
    iget-object p1, p0, Lio/reactivex/internal/operators/c/ct;->a:Lio/reactivex/ae;

    invoke-interface {p1, v0}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    .line 218
    iget-object v0, v0, Lio/reactivex/internal/operators/c/ct$j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 220
    :cond_5
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 221
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final resetIf(Lio/reactivex/b/c;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct;->b:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/c/ct$j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final source()Lio/reactivex/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct;->a:Lio/reactivex/ae;

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-TT;>;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ct;->d:Lio/reactivex/ae;

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
