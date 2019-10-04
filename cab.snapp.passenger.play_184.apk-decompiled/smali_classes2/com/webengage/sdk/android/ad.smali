.class Lcom/webengage/sdk/android/ad;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/webengage/sdk/android/ad;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/webengage/sdk/android/af;",
            "Ljava/util/LinkedHashSet<",
            "Lcom/webengage/sdk/android/ab;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/ag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/ad;->a:Ljava/util/Map;

    iput-object v0, p0, Lcom/webengage/sdk/android/ad;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/ad;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/ad;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/ad;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/webengage/sdk/android/ad;->b()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/ad;->b:Lcom/webengage/sdk/android/ad;

    if-nez v0, :cond_1

    const-class v0, Lcom/webengage/sdk/android/ad;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/ad;->b:Lcom/webengage/sdk/android/ad;

    if-nez v1, :cond_0

    new-instance v1, Lcom/webengage/sdk/android/ad;

    invoke-direct {v1, p0}, Lcom/webengage/sdk/android/ad;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/webengage/sdk/android/ad;->b:Lcom/webengage/sdk/android/ad;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/webengage/sdk/android/ad;->b:Lcom/webengage/sdk/android/ad;

    return-object p0
.end method

.method private a([Lcom/webengage/sdk/android/ab$a;)Ljava/util/LinkedHashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/webengage/sdk/android/ab$a;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcom/webengage/sdk/android/ab;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/webengage/sdk/android/ad;->c:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/webengage/sdk/android/ab$a;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ab;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/webengage/sdk/android/af;->values()[Lcom/webengage/sdk/android/af;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/webengage/sdk/android/af;->a()[Lcom/webengage/sdk/android/ab$a;

    move-result-object v4

    iget-object v5, p0, Lcom/webengage/sdk/android/ad;->a:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/webengage/sdk/android/ad;->a([Lcom/webengage/sdk/android/ab$a;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/webengage/sdk/android/af;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/af;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcom/webengage/sdk/android/ab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashSet;

    return-object p1
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/ag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/ad;->d:Ljava/util/List;

    return-object v0
.end method

.method protected a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/ad;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/ad;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/webengage/sdk/android/ad;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/af;)Ljava/util/LinkedHashSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/webengage/sdk/android/ab;

    invoke-interface {v2, p1, p2}, Lcom/webengage/sdk/android/ab;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/webengage/sdk/android/ad;->b(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected a(Lcom/webengage/sdk/android/ag;)V
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/ad;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/ad;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/af;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/ag;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/webengage/sdk/android/ag;

    if-eqz v1, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/webengage/sdk/android/ag;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method protected b(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/af;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/ag;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/webengage/sdk/android/ag;

    invoke-interface {v0, p1, p2}, Lcom/webengage/sdk/android/ag;->b(Lcom/webengage/sdk/android/af;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
