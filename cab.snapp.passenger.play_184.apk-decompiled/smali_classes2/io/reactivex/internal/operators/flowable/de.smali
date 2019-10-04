.class public final Lio/reactivex/internal/operators/flowable/de;
.super Lio/reactivex/d/a;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/disposables/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/de$c;,
        Lio/reactivex/internal/operators/flowable/de$i;,
        Lio/reactivex/internal/operators/flowable/de$k;,
        Lio/reactivex/internal/operators/flowable/de$h;,
        Lio/reactivex/internal/operators/flowable/de$b;,
        Lio/reactivex/internal/operators/flowable/de$e;,
        Lio/reactivex/internal/operators/flowable/de$l;,
        Lio/reactivex/internal/operators/flowable/de$m;,
        Lio/reactivex/internal/operators/flowable/de$a;,
        Lio/reactivex/internal/operators/flowable/de$f;,
        Lio/reactivex/internal/operators/flowable/de$n;,
        Lio/reactivex/internal/operators/flowable/de$g;,
        Lio/reactivex/internal/operators/flowable/de$d;,
        Lio/reactivex/internal/operators/flowable/de$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/d/a<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/e;"
    }
.end annotation


# static fields
.field static final f:Ljava/util/concurrent/Callable;


# instance fields
.field final b:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/de$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/de$g<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final e:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$c;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/de$c;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/de;->f:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private constructor <init>(Lorg/b/b;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/de$j<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/de$g<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lio/reactivex/d/a;-><init>()V

    .line 149
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de;->e:Lorg/b/b;

    .line 150
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/de;->b:Lio/reactivex/j;

    .line 151
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/de;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/de;->d:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private static a(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/de$g<",
            "TT;>;>;)",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 142
    new-instance v1, Lio/reactivex/internal/operators/flowable/de$i;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/de$i;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    .line 143
    new-instance v2, Lio/reactivex/internal/operators/flowable/de;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/flowable/de;-><init>(Lorg/b/b;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    invoke-static {v2}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/d/a;)Lio/reactivex/d/a;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/j;I)Lio/reactivex/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;I)",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 98
    invoke-static {p0}, Lio/reactivex/internal/operators/flowable/de;->createFrom(Lio/reactivex/j;)Lio/reactivex/d/a;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$h;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/de$h;-><init>(I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/de;->a(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/d/a;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/d/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 114
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/de;->create(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/d/a;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;I)Lio/reactivex/d/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            "I)",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 129
    new-instance v6, Lio/reactivex/internal/operators/flowable/de$k;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/de$k;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    invoke-static {p0, v6}, Lio/reactivex/internal/operators/flowable/de;->a(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/d/a;

    move-result-object p0

    return-object p0
.end method

.method public static createFrom(Lio/reactivex/j;)Lio/reactivex/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "+TT;>;)",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 85
    sget-object v0, Lio/reactivex/internal/operators/flowable/de;->f:Ljava/util/concurrent/Callable;

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/de;->a(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/d/a;

    move-result-object p0

    return-object p0
.end method

.method public static multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)Lio/reactivex/j;
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
            "Lio/reactivex/d/a<",
            "TU;>;>;",
            "Lio/reactivex/e/h<",
            "-",
            "Lio/reactivex/j<",
            "TU;>;+",
            "Lorg/b/b<",
            "TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/de$e;-><init>(Ljava/util/concurrent/Callable;Lio/reactivex/e/h;)V

    return-object v0
.end method

.method public static observeOn(Lio/reactivex/d/a;Lio/reactivex/ah;)Lio/reactivex/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/d/a<",
            "TT;>;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lio/reactivex/d/a;->observeOn(Lio/reactivex/ah;)Lio/reactivex/j;

    move-result-object p1

    .line 74
    new-instance v0, Lio/reactivex/internal/operators/flowable/de$b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/de$b;-><init>(Lio/reactivex/d/a;Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/d/a;)Lio/reactivex/d/a;

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

    .line 178
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/de$j;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/de$j;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/de;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/de$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    new-instance v2, Lio/reactivex/internal/operators/flowable/de$j;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/flowable/de$j;-><init>(Lio/reactivex/internal/operators/flowable/de$g;)V

    .line 194
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/de;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 203
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/de$j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/de$j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 220
    :goto_0
    :try_start_1
    invoke-interface {p1, v0}, Lio/reactivex/e/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 229
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/de;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    .line 223
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/de$j;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 225
    :cond_5
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 226
    invoke-static {p1}, Lio/reactivex/internal/util/h;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_1
    move-exception p1

    .line 187
    invoke-static {p1}, Lio/reactivex/c/b;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 188
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

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de;->c:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/flowable/de$j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final source()Lorg/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de;->b:Lio/reactivex/j;

    return-object v0
.end method

.method public final subscribeActual(Lorg/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de;->e:Lorg/b/b;

    invoke-interface {v0, p1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
