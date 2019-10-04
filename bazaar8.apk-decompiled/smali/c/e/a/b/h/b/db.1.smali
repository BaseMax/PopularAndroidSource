.class public final Lc/e/a/b/h/b/db;
.super Lc/e/a/b/h/b/zb;


# instance fields
.field public c:Lc/e/a/b/h/b/cb;

.field public volatile d:Lc/e/a/b/h/b/cb;

.field public e:Lc/e/a/b/h/b/cb;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lc/e/a/b/h/b/cb;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc/e/a/b/h/b/cb;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/zb;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    new-instance p1, Lb/f/b;

    invoke-direct {p1}, Lb/f/b;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\."

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 56
    array-length v0, p0

    if-lez v0, :cond_0

    .line 57
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a(Lc/e/a/b/h/b/cb;Landroid/os/Bundle;Z)V
    .locals 4

    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    .line 41
    :cond_0
    iget-object p2, p0, Lc/e/a/b/h/b/cb;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 42
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 44
    :goto_0
    iget-object p2, p0, Lc/e/a/b/h/b/cb;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-wide v1, p0, Lc/e/a/b/h/b/cb;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez p0, :cond_3

    if-eqz p2, :cond_3

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/db;Lc/e/a/b/h/b/cb;Z)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/db;->a(Lc/e/a/b/h/b/cb;Z)V

    return-void
.end method


# virtual methods
.method public final B()Lc/e/a/b/h/b/cb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/db;->c:Lc/e/a/b/h/b/cb;

    return-object v0
.end method

.method public final C()Lc/e/a/b/h/b/cb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->j()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.google.app_measurement.screen_service"

    .line 60
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 61
    :cond_1
    new-instance v0, Lc/e/a/b/h/b/cb;

    const-string v1, "name"

    .line 62
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 63
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 64
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lc/e/a/b/h/b/cb;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 65
    iget-object p2, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/app/Activity;Lc/e/a/b/h/b/cb;Z)V
    .locals 5

    .line 29
    iget-object v0, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/h/b/db;->e:Lc/e/a/b/h/b/cb;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    .line 30
    :goto_0
    iget-object v1, p2, Lc/e/a/b/h/b/cb;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Lc/e/a/b/h/b/cb;

    iget-object v2, p2, Lc/e/a/b/h/b/cb;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/e/a/b/h/b/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v3, p2, Lc/e/a/b/h/b/cb;->c:J

    invoke-direct {v1, v2, p1, v3, v4}, Lc/e/a/b/h/b/cb;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object p2, v1

    .line 33
    :cond_1
    iget-object p1, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    iput-object p1, p0, Lc/e/a/b/h/b/db;->e:Lc/e/a/b/h/b/cb;

    .line 34
    iput-object p2, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    .line 35
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object p1

    new-instance v1, Lc/e/a/b/h/b/eb;

    invoke-direct {v1, p0, p3, v0, p2}, Lc/e/a/b/h/b/eb;-><init>(Lc/e/a/b/h/b/db;ZLc/e/a/b/h/b/cb;Lc/e/a/b/h/b/cb;)V

    .line 36
    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 6
    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lc/e/a/b/h/b/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 8
    :cond_2
    iget-object v0, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    iget-object v0, v0, Lc/e/a/b/h/b/cb;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 9
    iget-object v1, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    iget-object v1, v1, Lc/e/a/b/h/b/cb;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lc/e/a/b/h/b/cc;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->y()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 12
    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v0, 0x64

    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_5

    .line 15
    :cond_4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    if-eqz p3, :cond_7

    .line 18
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_7

    .line 20
    :cond_6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 22
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    if-nez p2, :cond_8

    const-string v1, "null"

    goto :goto_0

    :cond_8
    move-object v1, p2

    :goto_0
    const-string v2, "Setting current screen to name, class"

    .line 25
    invoke-virtual {v0, v2, v1, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    new-instance v0, Lc/e/a/b/h/b/cb;

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/cc;->u()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lc/e/a/b/h/b/cb;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 27
    iget-object p2, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 28
    invoke-virtual {p0, p1, v0, p2}, Lc/e/a/b/h/b/db;->a(Landroid/app/Activity;Lc/e/a/b/h/b/cb;Z)V

    return-void
.end method

.method public final a(Lc/e/a/b/h/b/cb;Z)V
    .locals 3

    .line 37
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->o()Lc/e/a/b/h/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v1

    invoke-interface {v1}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/a;->a(J)V

    .line 38
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->u()Lc/e/a/b/h/b/Jb;

    move-result-object v0

    iget-boolean v1, p1, Lc/e/a/b/h/b/cb;->d:Z

    invoke-virtual {v0, v1, p2}, Lc/e/a/b/h/b/Jb;->a(ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p1, Lc/e/a/b/h/b/cb;->d:Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lc/e/a/b/h/b/cb;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/h/b/db;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/h/b/db;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 52
    :cond_0
    iput-object p1, p0, Lc/e/a/b/h/b/db;->h:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lc/e/a/b/h/b/db;->g:Lc/e/a/b/h/b/cb;

    .line 54
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/db;->d(Landroid/app/Activity;)Lc/e/a/b/h/b/cb;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    iput-object v0, p0, Lc/e/a/b/h/b/db;->e:Lc/e/a/b/h/b/cb;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/b/h/b/db;->d:Lc/e/a/b/h/b/cb;

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/fb;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/h/b/fb;-><init>(Lc/e/a/b/h/b/db;Lc/e/a/b/h/b/cb;)V

    .line 5
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/b/h/b/cb;

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-wide v1, p1, Lc/e/a/b/h/b/cb;->c:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    iget-object v1, p1, Lc/e/a/b/h/b/cb;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lc/e/a/b/h/b/cb;->b:Ljava/lang/String;

    const-string v1, "referrer_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 11
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/db;->d(Landroid/app/Activity;)Lc/e/a/b/h/b/cb;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/b/h/b/db;->a(Landroid/app/Activity;Lc/e/a/b/h/b/cb;Z)V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->o()Lc/e/a/b/h/b/a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v2

    new-instance v3, Lc/e/a/b/h/b/Ba;

    invoke-direct {v3, p1, v0, v1}, Lc/e/a/b/h/b/Ba;-><init>(Lc/e/a/b/h/b/a;J)V

    .line 6
    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)Lc/e/a/b/h/b/cb;
    .locals 5

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/h/b/cb;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/h/b/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lc/e/a/b/h/b/cb;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/cc;->u()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lc/e/a/b/h/b/cb;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/db;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
