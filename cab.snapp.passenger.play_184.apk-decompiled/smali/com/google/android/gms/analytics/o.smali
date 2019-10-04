.class public final Lcom/google/android/gms/analytics/o;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/analytics/q;

.field b:Z

.field private final c:Lcom/google/android/gms/common/util/d;

.field private d:Z

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/analytics/p;",
            ">;",
            "Lcom/google/android/gms/analytics/p;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/analytics/o;->a:Lcom/google/android/gms/analytics/q;

    iput-object v0, p0, Lcom/google/android/gms/analytics/o;->a:Lcom/google/android/gms/analytics/q;

    iget-object v0, p1, Lcom/google/android/gms/analytics/o;->c:Lcom/google/android/gms/common/util/d;

    iput-object v0, p0, Lcom/google/android/gms/analytics/o;->c:Lcom/google/android/gms/common/util/d;

    iget-wide v0, p1, Lcom/google/android/gms/analytics/o;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/o;->e:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/o;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/o;->f:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/o;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/o;->g:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/o;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/o;->h:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/o;->i:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/o;->i:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/analytics/o;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/o;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/analytics/o;->a(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/p;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/p;->zzb(Lcom/google/android/gms/analytics/p;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/q;Lcom/google/android/gms/common/util/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/o;->a:Lcom/google/android/gms/analytics/q;

    iput-object p2, p0, Lcom/google/android/gms/analytics/o;->c:Lcom/google/android/gms/common/util/d;

    const-wide/32 p1, 0x1b7740

    iput-wide p1, p0, Lcom/google/android/gms/analytics/o;->h:J

    const-wide p1, 0xb43e9400L

    iput-wide p1, p0, Lcom/google/android/gms/analytics/o;->i:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/o;->k:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/p;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/analytics/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of v0, p0, Ljava/lang/InstantiationException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Ljava/lang/ReflectiveOperationException;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Linkage exception"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType default constructor is not accessible"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType doesn\'t have default constructor"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final getTransports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/o;->k:Ljava/util/List;

    return-object v0
.end method

.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/p;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/analytics/p;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/analytics/p;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/analytics/p;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/o;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/p;->zzb(Lcom/google/android/gms/analytics/p;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/p;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/p;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->a(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final zzl(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/analytics/o;->f:J

    return-void
.end method

.method public final zzus()Lcom/google/android/gms/analytics/o;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/o;-><init>(Lcom/google/android/gms/analytics/o;)V

    return-object v0
.end method

.method public final zzut()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/analytics/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/o;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zzuu()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/o;->e:J

    return-wide v0
.end method

.method public final zzuv()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/analytics/o;->a:Lcom/google/android/gms/analytics/q;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/analytics/q;->b:Lcom/google/android/gms/analytics/r;

    .line 3000
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/o;->b:Z

    if-nez v1, :cond_2

    .line 2000
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/o;->zzuw()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/o;->zzus()Lcom/google/android/gms/analytics/o;

    move-result-object v1

    .line 4000
    iget-object v2, v1, Lcom/google/android/gms/analytics/o;->c:Lcom/google/android/gms/common/util/d;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/analytics/o;->g:J

    iget-wide v2, v1, Lcom/google/android/gms/analytics/o;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/analytics/o;->c:Lcom/google/android/gms/common/util/d;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iput-wide v2, v1, Lcom/google/android/gms/analytics/o;->e:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/analytics/o;->d:Z

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/r$a;

    new-instance v3, Lcom/google/android/gms/analytics/s;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/analytics/s;-><init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/analytics/o;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/r$a;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Measurement can only be submitted once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Measurement prototype can\'t be submitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzuw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/o;->d:Z

    return v0
.end method
