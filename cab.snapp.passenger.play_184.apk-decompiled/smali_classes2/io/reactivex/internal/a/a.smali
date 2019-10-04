.class public final Lio/reactivex/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/a/a$l;,
        Lio/reactivex/internal/a/a$aa;,
        Lio/reactivex/internal/a/a$ac;,
        Lio/reactivex/internal/a/a$ag;,
        Lio/reactivex/internal/a/a$u;,
        Lio/reactivex/internal/a/a$am;,
        Lio/reactivex/internal/a/a$q;,
        Lio/reactivex/internal/a/a$ah;,
        Lio/reactivex/internal/a/a$t;,
        Lio/reactivex/internal/a/a$p;,
        Lio/reactivex/internal/a/a$o;,
        Lio/reactivex/internal/a/a$r;,
        Lio/reactivex/internal/a/a$x;,
        Lio/reactivex/internal/a/a$i;,
        Lio/reactivex/internal/a/a$h;,
        Lio/reactivex/internal/a/a$g;,
        Lio/reactivex/internal/a/a$f;,
        Lio/reactivex/internal/a/a$e;,
        Lio/reactivex/internal/a/a$d;,
        Lio/reactivex/internal/a/a$c;,
        Lio/reactivex/internal/a/a$b;,
        Lio/reactivex/internal/a/a$z;,
        Lio/reactivex/internal/a/a$ab;,
        Lio/reactivex/internal/a/a$al;,
        Lio/reactivex/internal/a/a$ak;,
        Lio/reactivex/internal/a/a$aj;,
        Lio/reactivex/internal/a/a$ai;,
        Lio/reactivex/internal/a/a$k;,
        Lio/reactivex/internal/a/a$n;,
        Lio/reactivex/internal/a/a$a;,
        Lio/reactivex/internal/a/a$ad;,
        Lio/reactivex/internal/a/a$ae;,
        Lio/reactivex/internal/a/a$af;,
        Lio/reactivex/internal/a/a$w;,
        Lio/reactivex/internal/a/a$s;,
        Lio/reactivex/internal/a/a$j;,
        Lio/reactivex/internal/a/a$m;,
        Lio/reactivex/internal/a/a$y;,
        Lio/reactivex/internal/a/a$v;
    }
.end annotation


# static fields
.field public static final EMPTY_ACTION:Lio/reactivex/e/a;

.field public static final EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

.field public static final EMPTY_RUNNABLE:Ljava/lang/Runnable;

.field public static final ERROR_CONSUMER:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_ERROR_MISSING:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_MAX:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Lio/reactivex/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/h<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lio/reactivex/internal/a/a$x;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$x;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->a:Lio/reactivex/e/h;

    .line 93
    new-instance v0, Lio/reactivex/internal/a/a$r;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$r;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lio/reactivex/internal/a/a$o;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$o;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->EMPTY_ACTION:Lio/reactivex/e/a;

    .line 97
    new-instance v0, Lio/reactivex/internal/a/a$p;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$p;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->b:Lio/reactivex/e/g;

    .line 109
    new-instance v0, Lio/reactivex/internal/a/a$t;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$t;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->ERROR_CONSUMER:Lio/reactivex/e/g;

    .line 115
    new-instance v0, Lio/reactivex/internal/a/a$ah;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$ah;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->ON_ERROR_MISSING:Lio/reactivex/e/g;

    .line 117
    new-instance v0, Lio/reactivex/internal/a/a$q;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$q;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->EMPTY_LONG_CONSUMER:Lio/reactivex/e/p;

    .line 119
    new-instance v0, Lio/reactivex/internal/a/a$am;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$am;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->c:Lio/reactivex/e/q;

    .line 121
    new-instance v0, Lio/reactivex/internal/a/a$u;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$u;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->d:Lio/reactivex/e/q;

    .line 123
    new-instance v0, Lio/reactivex/internal/a/a$ag;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$ag;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->e:Ljava/util/concurrent/Callable;

    .line 125
    new-instance v0, Lio/reactivex/internal/a/a$ac;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$ac;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->f:Ljava/util/Comparator;

    .line 514
    new-instance v0, Lio/reactivex/internal/a/a$aa;

    invoke-direct {v0}, Lio/reactivex/internal/a/a$aa;-><init>()V

    sput-object v0, Lio/reactivex/internal/a/a;->REQUEST_MAX:Lio/reactivex/e/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static actionConsumer(Lio/reactivex/e/a;)Lio/reactivex/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/a;",
            ")",
            "Lio/reactivex/e/g<",
            "TT;>;"
        }
    .end annotation

    .line 349
    new-instance v0, Lio/reactivex/internal/a/a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$a;-><init>(Lio/reactivex/e/a;)V

    return-object v0
.end method

.method public static alwaysFalse()Lio/reactivex/e/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/e/q<",
            "TT;>;"
        }
    .end annotation

    .line 134
    sget-object v0, Lio/reactivex/internal/a/a;->d:Lio/reactivex/e/q;

    return-object v0
.end method

.method public static alwaysTrue()Lio/reactivex/e/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/e/q<",
            "TT;>;"
        }
    .end annotation

    .line 129
    sget-object v0, Lio/reactivex/internal/a/a;->c:Lio/reactivex/e/q;

    return-object v0
.end method

.method public static boundedConsumer(I)Lio/reactivex/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/e/g<",
            "TT;>;"
        }
    .end annotation

    .line 751
    new-instance v0, Lio/reactivex/internal/a/a$l;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$l;-><init>(I)V

    return-object v0
.end method

.method public static castFunction(Ljava/lang/Class;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/e/h<",
            "TT;TU;>;"
        }
    .end annotation

    .line 234
    new-instance v0, Lio/reactivex/internal/a/a$m;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$m;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createArrayList(I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Lio/reactivex/internal/a/a$j;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$j;-><init>(I)V

    return-object v0
.end method

.method public static createHashSet()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 281
    sget-object v0, Lio/reactivex/internal/a/a$w;->INSTANCE:Lio/reactivex/internal/a/a$w;

    return-object v0
.end method

.method public static emptyConsumer()Lio/reactivex/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/e/g<",
            "TT;>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lio/reactivex/internal/a/a;->b:Lio/reactivex/e/g;

    return-object v0
.end method

.method public static equalsWith(Ljava/lang/Object;)Lio/reactivex/e/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/e/q<",
            "TT;>;"
        }
    .end annotation

    .line 268
    new-instance v0, Lio/reactivex/internal/a/a$s;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$s;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static futureAction(Ljava/util/concurrent/Future;)Lio/reactivex/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/e/a;"
        }
    .end annotation

    .line 171
    new-instance v0, Lio/reactivex/internal/a/a$v;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$v;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static identity()Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/e/h<",
            "TT;TT;>;"
        }
    .end annotation

    .line 90
    sget-object v0, Lio/reactivex/internal/a/a;->a:Lio/reactivex/e/h;

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Class;)Lio/reactivex/e/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/e/q<",
            "TT;>;"
        }
    .end annotation

    .line 366
    new-instance v0, Lio/reactivex/internal/a/a$n;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$n;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static justCallable(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Lio/reactivex/internal/a/a$y;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$y;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static justFunction(Ljava/lang/Object;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lio/reactivex/e/h<",
            "TT;TU;>;"
        }
    .end annotation

    .line 210
    new-instance v0, Lio/reactivex/internal/a/a$y;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$y;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static listSorter(Ljava/util/Comparator;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/e/h<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 511
    new-instance v0, Lio/reactivex/internal/a/a$z;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$z;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static naturalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 493
    sget-object v0, Lio/reactivex/internal/a/a$ab;->INSTANCE:Lio/reactivex/internal/a/a$ab;

    return-object v0
.end method

.method public static naturalOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 149
    sget-object v0, Lio/reactivex/internal/a/a;->f:Ljava/util/Comparator;

    return-object v0
.end method

.method public static notificationOnComplete(Lio/reactivex/e/g;)Lio/reactivex/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)",
            "Lio/reactivex/e/a;"
        }
    .end annotation

    .line 332
    new-instance v0, Lio/reactivex/internal/a/a$ad;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$ad;-><init>(Lio/reactivex/e/g;)V

    return-object v0
.end method

.method public static notificationOnError(Lio/reactivex/e/g;)Lio/reactivex/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)",
            "Lio/reactivex/e/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Lio/reactivex/internal/a/a$ae;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$ae;-><init>(Lio/reactivex/e/g;)V

    return-object v0
.end method

.method public static notificationOnNext(Lio/reactivex/e/g;)Lio/reactivex/e/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/g<",
            "-",
            "Lio/reactivex/y<",
            "TT;>;>;)",
            "Lio/reactivex/e/g<",
            "TT;>;"
        }
    .end annotation

    .line 324
    new-instance v0, Lio/reactivex/internal/a/a$af;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$af;-><init>(Lio/reactivex/e/g;)V

    return-object v0
.end method

.method public static nullSupplier()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 139
    sget-object v0, Lio/reactivex/internal/a/a;->e:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method public static predicateReverseFor(Lio/reactivex/e/e;)Lio/reactivex/e/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/e;",
            ")",
            "Lio/reactivex/e/q<",
            "TT;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Lio/reactivex/internal/a/a$k;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$k;-><init>(Lio/reactivex/e/e;)V

    return-object v0
.end method

.method public static timestampWith(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")",
            "Lio/reactivex/e/h<",
            "TT;",
            "Lio/reactivex/i/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 403
    new-instance v0, Lio/reactivex/internal/a/a$ai;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/a/a$ai;-><init>(Ljava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/c;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 37
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lio/reactivex/internal/a/a$b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$b;-><init>(Lio/reactivex/e/c;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/i;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/i<",
            "TT1;TT2;TT3;TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 42
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lio/reactivex/internal/a/a$c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$c;-><init>(Lio/reactivex/e/i;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/j;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/j<",
            "TT1;TT2;TT3;TT4;TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 47
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    new-instance v0, Lio/reactivex/internal/a/a$d;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$d;-><init>(Lio/reactivex/e/j;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/k;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/k<",
            "TT1;TT2;TT3;TT4;TT5;TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 52
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lio/reactivex/internal/a/a$e;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$e;-><init>(Lio/reactivex/e/k;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/l;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/l<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 58
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lio/reactivex/internal/a/a$f;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$f;-><init>(Lio/reactivex/e/l;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/m;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/m<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 64
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lio/reactivex/internal/a/a$g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$g;-><init>(Lio/reactivex/e/m;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/n;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/n<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 70
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lio/reactivex/internal/a/a$h;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$h;-><init>(Lio/reactivex/e/n;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/e/o;)Lio/reactivex/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/o<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;)",
            "Lio/reactivex/e/h<",
            "[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 76
    invoke-static {p0, v0}, Lio/reactivex/internal/a/b;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lio/reactivex/internal/a/a$i;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$i;-><init>(Lio/reactivex/e/o;)V

    return-object v0
.end method

.method public static toMapKeySelector(Lio/reactivex/e/h;)Lio/reactivex/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;)",
            "Lio/reactivex/e/b<",
            "Ljava/util/Map<",
            "TK;TT;>;TT;>;"
        }
    .end annotation

    .line 421
    new-instance v0, Lio/reactivex/internal/a/a$aj;

    invoke-direct {v0, p0}, Lio/reactivex/internal/a/a$aj;-><init>(Lio/reactivex/e/h;)V

    return-object v0
.end method

.method public static toMapKeyValueSelector(Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;)",
            "Lio/reactivex/e/b<",
            "Ljava/util/Map<",
            "TK;TV;>;TT;>;"
        }
    .end annotation

    .line 443
    new-instance v0, Lio/reactivex/internal/a/a$ak;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/a/a$ak;-><init>(Lio/reactivex/e/h;Lio/reactivex/e/h;)V

    return-object v0
.end method

.method public static toMultimapKeyValueSelector(Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/h;)Lio/reactivex/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e/h<",
            "-TT;+TK;>;",
            "Lio/reactivex/e/h<",
            "-TT;+TV;>;",
            "Lio/reactivex/e/h<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "Lio/reactivex/e/b<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;TT;>;"
        }
    .end annotation

    .line 478
    new-instance v0, Lio/reactivex/internal/a/a$al;

    invoke-direct {v0, p2, p1, p0}, Lio/reactivex/internal/a/a$al;-><init>(Lio/reactivex/e/h;Lio/reactivex/e/h;Lio/reactivex/e/h;)V

    return-object v0
.end method
