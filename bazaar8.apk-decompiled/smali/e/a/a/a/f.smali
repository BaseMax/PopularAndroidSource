.class public Le/a/a/a/f;
.super Ljava/lang/Object;
.source "Fabric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/f$a;
    }
.end annotation


# static fields
.field public static volatile a:Le/a/a/a/f;

.field public static final b:Le/a/a/a/o;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Le/a/a/a/l;",
            ">;",
            "Le/a/a/a/l;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Landroid/os/Handler;

.field public final g:Le/a/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a/a/j<",
            "Le/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a/a/j<",
            "*>;"
        }
    .end annotation
.end field

.field public final i:Lio/fabric/sdk/android/services/common/IdManager;

.field public j:Le/a/a/a/b;

.field public k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Le/a/a/a/o;

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a/a/c;

    invoke-direct {v0}, Le/a/a/a/c;-><init>()V

    sput-object v0, Le/a/a/a/f;->b:Le/a/a/a/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Le/a/a/a/a/c/o;Landroid/os/Handler;Le/a/a/a/o;ZLe/a/a/a/j;Lio/fabric/sdk/android/services/common/IdManager;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Le/a/a/a/l;",
            ">;",
            "Le/a/a/a/l;",
            ">;",
            "Le/a/a/a/a/c/o;",
            "Landroid/os/Handler;",
            "Le/a/a/a/o;",
            "Z",
            "Le/a/a/a/j;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/a/f;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/a/a/f;->d:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Le/a/a/a/f;->e:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p4, p0, Le/a/a/a/f;->f:Landroid/os/Handler;

    .line 6
    iput-object p5, p0, Le/a/a/a/f;->m:Le/a/a/a/o;

    .line 7
    iput-boolean p6, p0, Le/a/a/a/f;->n:Z

    .line 8
    iput-object p7, p0, Le/a/a/a/f;->g:Le/a/a/a/j;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/a/a/a/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Le/a/a/a/f;->a(I)Le/a/a/a/j;

    move-result-object p1

    iput-object p1, p0, Le/a/a/a/f;->h:Le/a/a/a/j;

    .line 11
    iput-object p8, p0, Le/a/a/a/f;->i:Lio/fabric/sdk/android/services/common/IdManager;

    .line 12
    invoke-virtual {p0, p9}, Le/a/a/a/f;->a(Landroid/app/Activity;)Le/a/a/a/f;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 0

    .line 2
    invoke-static {p0}, Le/a/a/a/f;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Landroid/content/Context;[Le/a/a/a/l;)Le/a/a/a/f;
    .locals 2

    .line 4
    sget-object v0, Le/a/a/a/f;->a:Le/a/a/a/f;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Le/a/a/a/f;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Le/a/a/a/f;->a:Le/a/a/a/f;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Le/a/a/a/f$a;

    invoke-direct {v1, p0}, Le/a/a/a/f$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Le/a/a/a/f$a;->a([Le/a/a/a/l;)Le/a/a/a/f$a;

    invoke-virtual {v1}, Le/a/a/a/f$a;->a()Le/a/a/a/f;

    move-result-object p0

    invoke-static {p0}, Le/a/a/a/f;->c(Le/a/a/a/f;)V

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Le/a/a/a/f;->a:Le/a/a/a/f;

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Le/a/a/a/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/a/a/a/l;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23
    invoke-static {}, Le/a/a/a/f;->i()Le/a/a/a/f;

    move-result-object v0

    iget-object v0, v0, Le/a/a/a/f;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/a/a/l;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/a/a/f;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Le/a/a/a/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 3
    iget-object p0, p0, Le/a/a/a/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Le/a/a/a/l;",
            ">;",
            "Le/a/a/a/l;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Le/a/a/a/l;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/a/l;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    instance-of v1, v0, Le/a/a/a/m;

    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Le/a/a/a/m;

    invoke-interface {v0}, Le/a/a/a/m;->getKits()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Le/a/a/a/f;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Le/a/a/a/f;)Le/a/a/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/a/a/f;->g:Le/a/a/a/j;

    return-object p0
.end method

.method public static b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/a/a/a/l;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Le/a/a/a/l;",
            ">;",
            "Le/a/a/a/l;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    invoke-static {v0, p0}, Le/a/a/a/f;->a(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static c(Le/a/a/a/f;)V
    .locals 0

    .line 1
    sput-object p0, Le/a/a/a/f;->a:Le/a/a/a/f;

    .line 2
    invoke-virtual {p0}, Le/a/a/a/f;->g()V

    return-void
.end method

.method public static e()Le/a/a/a/o;
    .locals 1

    .line 1
    sget-object v0, Le/a/a/a/f;->a:Le/a/a/a/f;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/a/a/a/f;->b:Le/a/a/a/o;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Le/a/a/a/f;->a:Le/a/a/a/f;

    iget-object v0, v0, Le/a/a/a/f;->m:Le/a/a/a/o;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-object v0, Le/a/a/a/f;->a:Le/a/a/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget-object v0, Le/a/a/a/f;->a:Le/a/a/a/f;

    iget-boolean v0, v0, Le/a/a/a/f;->n:Z

    return v0
.end method

.method public static i()Le/a/a/a/f;
    .locals 2

    .line 1
    sget-object v0, Le/a/a/a/f;->a:Le/a/a/a/f;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Le/a/a/a/f;->a:Le/a/a/a/f;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 11
    iget-object v0, p0, Le/a/a/a/f;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)Le/a/a/a/f;
    .locals 1

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/a/a/a/f;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public a(I)Le/a/a/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/a/a/j<",
            "*>;"
        }
    .end annotation

    .line 28
    new-instance v0, Le/a/a/a/e;

    invoke-direct {v0, p0, p1}, Le/a/a/a/e;-><init>(Le/a/a/a/f;I)V

    return-object v0
.end method

.method public a(Ljava/util/Map;Le/a/a/a/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Le/a/a/a/l;",
            ">;",
            "Le/a/a/a/l;",
            ">;",
            "Le/a/a/a/l;",
            ")V"
        }
    .end annotation

    .line 13
    iget-object v0, p2, Le/a/a/a/l;->dependsOnAnnotation:Le/a/a/a/a/c/h;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Le/a/a/a/a/c/h;->value()[Ljava/lang/Class;

    move-result-object v0

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/a/l;

    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 19
    iget-object v6, p2, Le/a/a/a/l;->initializationTask:Le/a/a/a/k;

    iget-object v5, v5, Le/a/a/a/l;->initializationTask:Le/a/a/a/k;

    invoke-virtual {v6, v5}, Le/a/a/a/a/c/j;->a(Le/a/a/a/a/c/p;)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/a/l;

    if-eqz v4, :cond_3

    .line 21
    iget-object v4, p2, Le/a/a/a/l;->initializationTask:Le/a/a/a/k;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/a/l;

    iget-object v3, v3, Le/a/a/a/l;->initializationTask:Le/a/a/a/k;

    invoke-virtual {v4, v3}, Le/a/a/a/a/c/j;->a(Le/a/a/a/a/c/p;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_3
    new-instance p1, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string p2, "Referenced Kit was null, does the kit exist?"

    invoke-direct {p1, p2}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 4
    iget-object v0, p0, Le/a/a/a/f;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a/a/n;",
            ">;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Le/a/a/a/h;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/a/a/h;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Le/a/a/a/f;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 6
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Le/a/a/a/l;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Le/a/a/a/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/a/f;->c(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/a/a/a/f;->d()Ljava/util/Collection;

    move-result-object v1

    .line 3
    new-instance v2, Le/a/a/a/p;

    invoke-direct {v2, v0, v1}, Le/a/a/a/p;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6
    sget-object v1, Le/a/a/a/j;->a:Le/a/a/a/j;

    iget-object v3, p0, Le/a/a/a/f;->i:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2, p1, p0, v1, v3}, Le/a/a/a/l;->injectParameters(Landroid/content/Context;Le/a/a/a/f;Le/a/a/a/j;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/a/l;

    .line 8
    iget-object v4, p0, Le/a/a/a/f;->h:Le/a/a/a/j;

    iget-object v5, p0, Le/a/a/a/f;->i:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v3, p1, p0, v4, v5}, Le/a/a/a/l;->injectParameters(Landroid/content/Context;Le/a/a/a/f;Le/a/a/a/j;Lio/fabric/sdk/android/services/common/IdManager;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Le/a/a/a/l;->initialize()V

    .line 10
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object p1

    const/4 v1, 0x3

    const-string v3, "Fabric"

    invoke-interface {p1, v3, v1}, Le/a/a/a/o;->a(Ljava/lang/String;I)Z

    move-result p1

    const-string v1, " [Version: "

    if-eqz p1, :cond_1

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Initializing "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Le/a/a/a/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Le/a/a/a/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], with the following kits:\n"

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/a/l;

    .line 17
    iget-object v5, v4, Le/a/a/a/l;->initializationTask:Le/a/a/a/k;

    iget-object v6, v2, Le/a/a/a/l;->initializationTask:Le/a/a/a/k;

    invoke-virtual {v5, v6}, Le/a/a/a/a/c/j;->a(Le/a/a/a/a/c/p;)V

    .line 18
    iget-object v5, p0, Le/a/a/a/f;->d:Ljava/util/Map;

    invoke-virtual {p0, v5, v4}, Le/a/a/a/f;->a(Ljava/util/Map;Le/a/a/a/l;)V

    .line 19
    invoke-virtual {v4}, Le/a/a/a/l;->initialize()V

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {v4}, Le/a/a/a/l;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v4}, Le/a/a/a/l;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 24
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.8.32"

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    new-instance v0, Le/a/a/a/b;

    iget-object v1, p0, Le/a/a/a/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/a/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/a/a/f;->j:Le/a/a/a/b;

    .line 2
    iget-object v0, p0, Le/a/a/a/f;->j:Le/a/a/a/b;

    new-instance v1, Le/a/a/a/d;

    invoke-direct {v1, p0}, Le/a/a/a/d;-><init>(Le/a/a/a/f;)V

    invoke-virtual {v0, v1}, Le/a/a/a/b;->a(Le/a/a/a/b$b;)Z

    .line 3
    iget-object v0, p0, Le/a/a/a/f;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Le/a/a/a/f;->d(Landroid/content/Context;)V

    return-void
.end method
