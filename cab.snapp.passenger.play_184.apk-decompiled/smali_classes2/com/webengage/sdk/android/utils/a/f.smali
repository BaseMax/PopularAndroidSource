.class public Lcom/webengage/sdk/android/utils/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/utils/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/webengage/sdk/android/utils/a/e;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/String;

.field private f:I

.field private final g:I

.field private h:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/webengage/sdk/android/utils/a/f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->b(Lcom/webengage/sdk/android/utils/a/f$a;)Lcom/webengage/sdk/android/utils/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->b:Lcom/webengage/sdk/android/utils/a/e;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->c(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->d(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->d:Ljava/lang/Object;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->e(Lcom/webengage/sdk/android/utils/a/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->f(Lcom/webengage/sdk/android/utils/a/f$a;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/f;->f:I

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->g(Lcom/webengage/sdk/android/utils/a/f$a;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/utils/a/f;->g:I

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->h(Lcom/webengage/sdk/android/utils/a/f$a;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/a/f;->h:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/webengage/sdk/android/utils/a/f$a;Lcom/webengage/sdk/android/utils/a/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/utils/a/f;-><init>(Lcom/webengage/sdk/android/utils/a/f$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/webengage/sdk/android/utils/a/e;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->b:Lcom/webengage/sdk/android/utils/a/e;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/utils/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/utils/a/f;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/utils/a/f;->g:I

    return v0
.end method

.method public h()Lcom/webengage/sdk/android/utils/a/f$a;
    .locals 4

    new-instance v0, Lcom/webengage/sdk/android/utils/a/f$a;

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/webengage/sdk/android/utils/a/f;->b:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v3, p0, Lcom/webengage/sdk/android/utils/a/f;->h:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    iget v1, p0, Lcom/webengage/sdk/android/utils/a/f;->f:I

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->a(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    iget v1, p0, Lcom/webengage/sdk/android/utils/a/f;->g:I

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/f;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/util/Map;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/f;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/f$a;->a(Ljava/lang/Object;)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/webengage/sdk/android/utils/a/g;
    .locals 5

    sget-object v0, Lcom/webengage/sdk/android/utils/a/d;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/utils/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/webengage/sdk/android/utils/a/c;

    iget-object v4, p0, Lcom/webengage/sdk/android/utils/a/f;->h:Landroid/content/Context;

    invoke-interface {v3, p0, v4}, Lcom/webengage/sdk/android/utils/a/c;->a(Lcom/webengage/sdk/android/utils/a/f;Landroid/content/Context;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    new-instance v0, Lcom/webengage/sdk/android/utils/a/d;

    iget-object v1, p0, Lcom/webengage/sdk/android/utils/a/f;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/webengage/sdk/android/utils/a/d;-><init>(Landroid/content/Context;Lcom/webengage/sdk/android/utils/a/f;)V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/d;->g()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/webengage/sdk/android/utils/a/g$a;

    invoke-direct {v0}, Lcom/webengage/sdk/android/utils/a/g$a;-><init>()V

    invoke-virtual {v0}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object v0

    :cond_2
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
