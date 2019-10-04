.class public final Lcom/adyen/threeds2/internal/c/a/c/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/c/a/c/f$h;,
        Lcom/adyen/threeds2/internal/c/a/c/f$g;,
        Lcom/adyen/threeds2/internal/c/a/c/f$c;,
        Lcom/adyen/threeds2/internal/c/a/c/f$b;,
        Lcom/adyen/threeds2/internal/c/a/c/f$e;,
        Lcom/adyen/threeds2/internal/c/a/c/f$f;,
        Lcom/adyen/threeds2/internal/c/a/c/f$d;,
        Lcom/adyen/threeds2/internal/c/a/c/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/adyen/threeds2/internal/c/a/c/f$e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [Lcom/adyen/threeds2/internal/c/a/c/f$e;

    new-instance v1, Lcom/adyen/threeds2/internal/c/a/c/f$b;

    invoke-direct {v1}, Lcom/adyen/threeds2/internal/c/a/c/f$b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/adyen/threeds2/internal/c/a/c/f$c;

    invoke-direct {v1}, Lcom/adyen/threeds2/internal/c/a/c/f$c;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/adyen/threeds2/internal/c/a/c/f$g;

    invoke-direct {v1}, Lcom/adyen/threeds2/internal/c/a/c/f$g;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/adyen/threeds2/internal/c/a/c/f$h;

    invoke-direct {v1}, Lcom/adyen/threeds2/internal/c/a/c/f$h;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;)Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/c/a/c;
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/c/a/c/f;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 55
    iget-object p1, p0, Lcom/adyen/threeds2/internal/c/a/c/f;->a:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 58
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/c/a/c/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adyen/threeds2/internal/c/a/c/f$e;

    .line 59
    invoke-interface {v1, p1}, Lcom/adyen/threeds2/internal/c/a/c/f$e;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/adyen/threeds2/internal/c/a/c/f;->a:Landroid/location/Location;

    .line 60
    iget-object v1, p0, Lcom/adyen/threeds2/internal/c/a/c/f;->a:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/adyen/threeds2/internal/c/a/c/f;->a:Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 65
    :cond_2
    :try_start_2
    new-instance p1, Lcom/adyen/threeds2/internal/c/a/c;

    sget-object v0, Lcom/adyen/threeds2/internal/c/a/c$a;->UNSUPPORTED_BY_PLATFORM_OR_DEPRECATED:Lcom/adyen/threeds2/internal/c/a/c$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/adyen/threeds2/internal/c/a/c;-><init>(Lcom/adyen/threeds2/internal/c/a/c$a;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    throw p1
.end method

.method public a()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/adyen/threeds2/internal/c/a/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 50
    new-array v0, v0, [Lcom/adyen/threeds2/internal/c/a/c/f$a;

    new-instance v1, Lcom/adyen/threeds2/internal/c/a/c/f$d;

    invoke-direct {v1, p0}, Lcom/adyen/threeds2/internal/c/a/c/f$d;-><init>(Lcom/adyen/threeds2/internal/c/a/c/f;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/adyen/threeds2/internal/c/a/c/f$f;

    invoke-direct {v1, p0}, Lcom/adyen/threeds2/internal/c/a/c/f$f;-><init>(Lcom/adyen/threeds2/internal/c/a/c/f;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
