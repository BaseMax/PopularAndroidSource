.class public final Li/a/c/n;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# static fields
.field public static final a:Z

.field public static final b:Li/a/Ca;

.field public static final c:Li/a/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li/a/c/n;

    invoke-direct {v0}, Li/a/c/n;-><init>()V

    sput-object v0, Li/a/c/n;->c:Li/a/c/n;

    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2}, Li/a/c/w;->a(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Li/a/c/n;->a:Z

    .line 3
    invoke-virtual {v0}, Li/a/c/n;->a()Li/a/Ca;

    move-result-object v0

    sput-object v0, Li/a/c/n;->b:Li/a/Ca;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li/a/Ca;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-boolean v2, Li/a/c/n;->a:Z

    if-eqz v2, :cond_0

    .line 2
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 3
    sget-object v3, Li/a/c/h;->a:Li/a/c/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "clz.classLoader"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Li/a/c/h;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 5
    const-class v3, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "ServiceLoader.load(\n    \u2026             ).iterator()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lh/j/k;->a(Ljava/util/Iterator;)Lh/j/d;

    move-result-object v2

    invoke-static {v2}, Lh/j/o;->c(Lh/j/d;)Ljava/util/List;

    move-result-object v2

    .line 8
    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 13
    invoke-interface {v5}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v5

    .line 14
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 15
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 16
    invoke-interface {v7}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v7

    if-ge v5, v7, :cond_4

    move-object v4, v6

    move v5, v7

    .line 17
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 18
    :goto_1
    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v4, :cond_5

    .line 19
    invoke-static {v4, v2}, Li/a/c/o;->a(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Li/a/Ca;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    new-instance v2, Li/a/c/p;

    invoke-direct {v2, v1, v1, v0, v1}, Li/a/c/p;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILh/f/b/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 21
    new-instance v3, Li/a/c/p;

    invoke-direct {v3, v2, v1, v0, v1}, Li/a/c/p;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILh/f/b/f;)V

    move-object v2, v3

    :goto_2
    return-object v2
.end method
