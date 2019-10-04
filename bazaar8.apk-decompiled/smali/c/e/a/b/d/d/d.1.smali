.class public abstract Lc/e/a/b/d/d/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/d/d/d$i;,
        Lc/e/a/b/d/d/d$f;,
        Lc/e/a/b/d/d/d$k;,
        Lc/e/a/b/d/d/d$l;,
        Lc/e/a/b/d/d/d$d;,
        Lc/e/a/b/d/d/d$h;,
        Lc/e/a/b/d/d/d$g;,
        Lc/e/a/b/d/d/d$e;,
        Lc/e/a/b/d/d/d$c;,
        Lc/e/a/b/d/d/d$b;,
        Lc/e/a/b/d/d/d$a;,
        Lc/e/a/b/d/d/d$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:[Lcom/google/android/gms/common/Feature;

.field public static final b:[Ljava/lang/String;


# instance fields
.field public A:Z

.field public volatile B:Lcom/google/android/gms/common/internal/zzb;

.field public C:Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:I

.field public d:J

.field public e:J

.field public f:I

.field public g:J

.field public h:Lc/e/a/b/d/d/K;

.field public final i:Landroid/content/Context;

.field public final j:Landroid/os/Looper;

.field public final k:Lc/e/a/b/d/d/j;

.field public final l:Lc/e/a/b/d/d;

.field public final m:Landroid/os/Handler;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;

.field public p:Lc/e/a/b/d/d/p;

.field public q:Lc/e/a/b/d/d/d$c;

.field public r:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/b/d/d/d$h<",
            "*>;>;"
        }
    .end annotation
.end field

.field public t:Lc/e/a/b/d/d/d$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/d/d$j;"
        }
    .end annotation
.end field

.field public u:I

.field public final v:Lc/e/a/b/d/d/d$a;

.field public final w:Lc/e/a/b/d/d/d$b;

.field public final x:I

.field public final y:Ljava/lang/String;

.field public z:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v1, Lc/e/a/b/d/d/d;->a:[Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "service_esmobile"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v1, v0

    sput-object v1, Lc/e/a/b/d/d/d;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILc/e/a/b/d/d/d$a;Lc/e/a/b/d/d/d$b;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/j;->a(Landroid/content/Context;)Lc/e/a/b/d/d/j;

    move-result-object v3

    .line 2
    invoke-static {}, Lc/e/a/b/d/d;->a()Lc/e/a/b/d/d;

    move-result-object v4

    .line 3
    invoke-static {p4}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, p4

    check-cast v6, Lc/e/a/b/d/d/d$a;

    .line 4
    invoke-static {p5}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, p5

    check-cast v7, Lc/e/a/b/d/d/d$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Lc/e/a/b/d/d/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/j;Lc/e/a/b/d/d;ILc/e/a/b/d/d/d$a;Lc/e/a/b/d/d/d$b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/j;Lc/e/a/b/d/d;ILc/e/a/b/d/d/d$a;Lc/e/a/b/d/d/d$b;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/d/d;->n:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/d/d;->o:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d/d/d;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lc/e/a/b/d/d/d;->u:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lc/e/a/b/d/d/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lc/e/a/b/d/d/d;->A:Z

    .line 13
    iput-object v0, p0, Lc/e/a/b/d/d/d;->B:Lcom/google/android/gms/common/internal/zzb;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 15
    invoke-static {p1, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lc/e/a/b/d/d/d;->i:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 16
    invoke-static {p2, p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lc/e/a/b/d/d/d;->j:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 17
    invoke-static {p3, p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lc/e/a/b/d/d/j;

    iput-object p3, p0, Lc/e/a/b/d/d/d;->k:Lc/e/a/b/d/d/j;

    const-string p1, "API availability must not be null"

    .line 18
    invoke-static {p4, p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lc/e/a/b/d/d;

    iput-object p4, p0, Lc/e/a/b/d/d/d;->l:Lc/e/a/b/d/d;

    .line 19
    new-instance p1, Lc/e/a/b/d/d/d$g;

    invoke-direct {p1, p0, p2}, Lc/e/a/b/d/d/d$g;-><init>(Lc/e/a/b/d/d/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lc/e/a/b/d/d/d;->m:Landroid/os/Handler;

    .line 20
    iput p5, p0, Lc/e/a/b/d/d/d;->x:I

    .line 21
    iput-object p6, p0, Lc/e/a/b/d/d/d;->v:Lc/e/a/b/d/d/d$a;

    .line 22
    iput-object p7, p0, Lc/e/a/b/d/d/d;->w:Lc/e/a/b/d/d/d$b;

    .line 23
    iput-object p8, p0, Lc/e/a/b/d/d/d;->y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/d/d;Lc/e/a/b/d/d/p;)Lc/e/a/b/d/d/p;
    .locals 0

    .line 70
    iput-object p1, p0, Lc/e/a/b/d/d/d;->p:Lc/e/a/b/d/d/p;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/b/d/d/d;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 71
    iput-object p1, p0, Lc/e/a/b/d/d/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/b/d/d/d;)Ljava/lang/Object;
    .locals 0

    .line 69
    iget-object p0, p0, Lc/e/a/b/d/d/d;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/d/d/d;I)V
    .locals 0

    const/16 p1, 0x10

    .line 68
    invoke-virtual {p0, p1}, Lc/e/a/b/d/d/d;->c(I)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/d/d;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 72
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/d/d/d;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/d/d;Lcom/google/android/gms/common/internal/zzb;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lc/e/a/b/d/d/d;->a(Lcom/google/android/gms/common/internal/zzb;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/d/d;IILandroid/os/IInterface;)Z
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/b/d/d/d;->a(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lc/e/a/b/d/d/d;)Z
    .locals 0

    .line 59
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->y()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lc/e/a/b/d/d/d;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lc/e/a/b/d/d/d;->A:Z

    return p0
.end method

.method public static synthetic d(Lc/e/a/b/d/d/d;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/d/d/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method public static synthetic e(Lc/e/a/b/d/d/d;)Lc/e/a/b/d/d/d$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/e/a/b/d/d/d;->v:Lc/e/a/b/d/d/d$a;

    return-object p0
.end method

.method public static synthetic f(Lc/e/a/b/d/d/d;)Ljava/util/ArrayList;
    .locals 0

    .line 3
    iget-object p0, p0, Lc/e/a/b/d/d/d;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic g(Lc/e/a/b/d/d/d;)Lc/e/a/b/d/d/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/d/d/d;->w:Lc/e/a/b/d/d/d$b;

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 4

    .line 15
    iget-object v0, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 16
    iget-object v0, p0, Lc/e/a/b/d/d/d;->s:Ljava/util/ArrayList;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/d/d/d;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 18
    iget-object v3, p0, Lc/e/a/b/d/d/d;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/b/d/d/d$h;

    invoke-virtual {v3}, Lc/e/a/b/d/d/d$h;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lc/e/a/b/d/d/d;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    iget-object v1, p0, Lc/e/a/b/d/d/d;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 22
    :try_start_1
    iput-object v0, p0, Lc/e/a/b/d/d/d;->p:Lc/e/a/b/d/d/p;

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, v1, v0}, Lc/e/a/b/d/d/d;->b(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    .line 25
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 26
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public a(I)V
    .locals 2

    .line 3
    iput p1, p0, Lc/e/a/b/d/d/d;->c:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/d/d/d;->d:J

    return-void
.end method

.method public final a(ILandroid/os/Bundle;I)V
    .locals 2

    .line 35
    iget-object p2, p0, Lc/e/a/b/d/d/d;->m:Landroid/os/Handler;

    new-instance v0, Lc/e/a/b/d/d/d$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lc/e/a/b/d/d/d$l;-><init>(Lc/e/a/b/d/d/d;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    .line 36
    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    .line 32
    iget-object v0, p0, Lc/e/a/b/d/d/d;->m:Landroid/os/Handler;

    new-instance v1, Lc/e/a/b/d/d/d$k;

    invoke-direct {v1, p0, p1, p2, p3}, Lc/e/a/b/d/d/d$k;-><init>(Lc/e/a/b/d/d/d;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 33
    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/d/d/d;->e:J

    return-void
.end method

.method public a(Lc/e/a/b/d/d/d$c;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    .line 13
    invoke-static {p1, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/b/d/d/d$c;

    iput-object p1, p0, Lc/e/a/b/d/d/d;->q:Lc/e/a/b/d/d/d$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/d/d/d;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method public a(Lc/e/a/b/d/d/d$c;ILandroid/app/PendingIntent;)V
    .locals 2

    const-string v0, "Connection progress callbacks cannot be null."

    .line 27
    invoke-static {p1, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/b/d/d/d$c;

    iput-object p1, p0, Lc/e/a/b/d/d/d;->q:Lc/e/a/b/d/d/d$c;

    .line 28
    iget-object p1, p0, Lc/e/a/b/d/d/d;->m:Landroid/os/Handler;

    iget-object v0, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lc/e/a/b/d/d/d$e;)V
    .locals 0

    .line 67
    invoke-interface {p1}, Lc/e/a/b/d/d/d$e;->a()V

    return-void
.end method

.method public a(Lc/e/a/b/d/d/l;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/d/l;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->o()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lc/e/a/b/d/d/d;->x:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lc/e/a/b/d/d/d;->i:Landroid/content/Context;

    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 41
    iput-object v2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->d:Ljava/lang/String;

    .line 42
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->g:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 43
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 44
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 45
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->k()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->k()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    .line 47
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->e:Landroid/os/IBinder;

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->k()Landroid/accounts/Account;

    move-result-object p1

    .line 50
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;

    .line 51
    :cond_3
    :goto_1
    sget-object p1, Lc/e/a/b/d/d/d;->a:[Lcom/google/android/gms/common/Feature;

    .line 52
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->i:[Lcom/google/android/gms/common/Feature;

    .line 53
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->l()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 54
    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->j:[Lcom/google/android/gms/common/Feature;

    .line 55
    :try_start_0
    iget-object p1, p0, Lc/e/a/b/d/d/d;->o:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object p2, p0, Lc/e/a/b/d/d/d;->p:Lc/e/a/b/d/d/p;

    if-eqz p2, :cond_4

    .line 57
    iget-object p2, p0, Lc/e/a/b/d/d/d;->p:Lc/e/a/b/d/d/p;

    new-instance v0, Lc/e/a/b/d/d/d$i;

    iget-object v2, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lc/e/a/b/d/d/d$i;-><init>(Lc/e/a/b/d/d/d;I)V

    invoke-interface {p2, v0, v1}, Lc/e/a/b/d/d/p;->a(Lc/e/a/b/d/d/n;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_2

    :cond_4
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    .line 58
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 60
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    .line 61
    iget-object p2, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0, v0, p2}, Lc/e/a/b/d/d/d;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_2
    move-exception p1

    .line 64
    throw p1

    :catch_3
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 65
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lc/e/a/b/d/d/d;->b(I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result p1

    iput p1, p0, Lc/e/a/b/d/d/d;->f:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/d/d/d;->g:J

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/zzb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/d/d;->B:Lcom/google/android/gms/common/internal/zzb;

    return-void
.end method

.method public final a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lc/e/a/b/d/d/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget v1, p0, Lc/e/a/b/d/d/d;->u:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    .line 9
    monitor-exit v0

    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p2, p3}, Lc/e/a/b/d/d/d;->b(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 11
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)V
    .locals 3

    .line 55
    iget-object v0, p0, Lc/e/a/b/d/d/d;->m:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    .line 57
    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(ILandroid/os/IInterface;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 1
    :goto_2
    invoke-static {v3}, Lc/e/a/b/d/d/r;->a(Z)V

    .line 2
    iget-object v3, p0, Lc/e/a/b/d/d/d;->n:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    iput p1, p0, Lc/e/a/b/d/d/d;->u:I

    .line 4
    iput-object p2, p0, Lc/e/a/b/d/d/d;->r:Landroid/os/IInterface;

    .line 5
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/d/d/d;->a(ILandroid/os/IInterface;)V

    const/4 v4, 0x0

    if-eq p1, v2, :cond_7

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_4

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    .line 6
    :cond_3
    invoke-virtual {p0, p2}, Lc/e/a/b/d/d/d;->a(Landroid/os/IInterface;)V

    goto/16 :goto_4

    .line 7
    :cond_4
    iget-object p1, p0, Lc/e/a/b/d/d/d;->t:Lc/e/a/b/d/d/d$j;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    if-eqz p1, :cond_5

    const-string p1, "GmsClient"

    .line 8
    iget-object p2, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 9
    invoke-virtual {p2}, Lc/e/a/b/d/d/K;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 10
    invoke-virtual {v0}, Lc/e/a/b/d/d/K;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x46

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v7, p0, Lc/e/a/b/d/d/d;->k:Lc/e/a/b/d/d/j;

    iget-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 13
    invoke-virtual {p1}, Lc/e/a/b/d/d/K;->c()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 14
    invoke-virtual {p1}, Lc/e/a/b/d/d/K;->a()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 15
    invoke-virtual {p1}, Lc/e/a/b/d/d/K;->b()I

    move-result v10

    iget-object v11, p0, Lc/e/a/b/d/d/d;->t:Lc/e/a/b/d/d/d$j;

    .line 16
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->w()Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-virtual/range {v7 .. v12}, Lc/e/a/b/d/d/j;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    :cond_5
    new-instance p1, Lc/e/a/b/d/d/d$j;

    iget-object p2, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lc/e/a/b/d/d/d$j;-><init>(Lc/e/a/b/d/d/d;I)V

    iput-object p1, p0, Lc/e/a/b/d/d/d;->t:Lc/e/a/b/d/d/d$j;

    .line 20
    iget p1, p0, Lc/e/a/b/d/d/d;->u:I

    const/16 p2, 0x81

    if-ne p1, v6, :cond_6

    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 21
    new-instance p1, Lc/e/a/b/d/d/K;

    .line 22
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->p()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-direct {p1, v0, v1, v2, p2}, Lc/e/a/b/d/d/K;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_3

    .line 25
    :cond_6
    new-instance p1, Lc/e/a/b/d/d/K;

    .line 26
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->u()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->t()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-direct {p1, v0, v2, v1, p2}, Lc/e/a/b/d/d/K;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 29
    :goto_3
    iput-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 30
    iget-object p1, p0, Lc/e/a/b/d/d/d;->k:Lc/e/a/b/d/d/j;

    iget-object p2, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 31
    invoke-virtual {p2}, Lc/e/a/b/d/d/K;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 32
    invoke-virtual {v0}, Lc/e/a/b/d/d/K;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 33
    invoke-virtual {v1}, Lc/e/a/b/d/d/K;->b()I

    move-result v1

    iget-object v2, p0, Lc/e/a/b/d/d/d;->t:Lc/e/a/b/d/d/d$j;

    .line 34
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->w()Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v6, Lc/e/a/b/d/d/j$a;

    invoke-direct {v6, p2, v0, v1}, Lc/e/a/b/d/d/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v6, v2, v5}, Lc/e/a/b/d/d/j;->a(Lc/e/a/b/d/d/j$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "GmsClient"

    .line 36
    iget-object p2, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 37
    invoke-virtual {p2}, Lc/e/a/b/d/d/K;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 38
    invoke-virtual {v0}, Lc/e/a/b/d/d/K;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unable to connect to service: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 40
    iget-object p2, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 42
    invoke-virtual {p0, p1, v4, p2}, Lc/e/a/b/d/d/d;->a(ILandroid/os/Bundle;I)V

    goto :goto_4

    .line 43
    :cond_7
    iget-object p1, p0, Lc/e/a/b/d/d/d;->t:Lc/e/a/b/d/d/d$j;

    if-eqz p1, :cond_8

    .line 44
    iget-object v5, p0, Lc/e/a/b/d/d/d;->k:Lc/e/a/b/d/d/j;

    iget-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 45
    invoke-virtual {p1}, Lc/e/a/b/d/d/K;->c()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 46
    invoke-virtual {p1}, Lc/e/a/b/d/d/K;->a()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    .line 47
    invoke-virtual {p1}, Lc/e/a/b/d/d/K;->b()I

    move-result v8

    iget-object v9, p0, Lc/e/a/b/d/d/d;->t:Lc/e/a/b/d/d/d$j;

    .line 48
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->w()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual/range {v5 .. v10}, Lc/e/a/b/d/d/j;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 50
    iput-object v4, p0, Lc/e/a/b/d/d/d;->t:Lc/e/a/b/d/d/d$j;

    .line 51
    :cond_8
    :goto_4
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lc/e/a/b/d/d/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget v1, p0, Lc/e/a/b/d/d/d;->u:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lc/e/a/b/d/d/d;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/d/d/d;->h:Lc/e/a/b/d/d/K;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lc/e/a/b/d/d/K;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/b/d/d/d;->A:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    :goto_0
    iget-object v0, p0, Lc/e/a/b/d/d/d;->m:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/b/d/d/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    sget v0, Lc/e/a/b/d/d;->a:I

    return v0
.end method

.method public final f()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d;->B:Lcom/google/android/gms/common/internal/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzb;->b:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d;->l:Lc/e/a/b/d/d;

    iget-object v1, p0, Lc/e/a/b/d/d/d;->i:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/d/d;->a(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Lc/e/a/b/d/d/d;->b(ILandroid/os/IInterface;)V

    .line 4
    new-instance v1, Lc/e/a/b/d/d/d$d;

    invoke-direct {v1, p0}, Lc/e/a/b/d/d/d$d;-><init>(Lc/e/a/b/d/d/d;)V

    invoke-virtual {p0, v1, v0, v2}, Lc/e/a/b/d/d/d;->a(Lc/e/a/b/d/d/d$c;ILandroid/app/PendingIntent;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lc/e/a/b/d/d/d$d;

    invoke-direct {v0, p0}, Lc/e/a/b/d/d/d$d;-><init>(Lc/e/a/b/d/d/d;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/d/d/d;->a(Lc/e/a/b/d/d/d$c;)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lc/e/a/b/d/d/d;->u:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/d/d/d;->a:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public m()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d;->i:Landroid/content/Context;

    return-object v0
.end method

.method public o()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final r()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lc/e/a/b/d/d/d;->u:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->i()V

    .line 4
    iget-object v1, p0, Lc/e/a/b/d/d/d;->r:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lc/e/a/b/d/d/r;->b(ZLjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lc/e/a/b/d/d/d;->r:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract s()Ljava/lang/String;
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public u()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/d/d/d;->i:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final x()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lc/e/a/b/d/d/d;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/d/d/d;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/d/d/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method
