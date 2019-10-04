.class public final Lc/e/a/b/h/b/pc;
.super Lc/e/a/b/h/b/ua;


# instance fields
.field public b:Ljava/lang/Boolean;

.field public c:Lc/e/a/b/h/b/rc;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/ua;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    sget-object v0, Lc/e/a/b/h/b/qc;->a:Lc/e/a/b/h/b/rc;

    iput-object v0, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    .line 3
    invoke-static {p1}, Lc/e/a/b/h/b/k;->a(Lc/e/a/b/h/b/Y;)V

    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->o:Lc/e/a/b/h/b/k$a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static s()J
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->R:Lc/e/a/b/h/b/k$a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static t()J
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->r:Lc/e/a/b/h/b/k$a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static v()Z
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->n:Lc/e/a/b/h/b/k$a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->na:Lc/e/a/b/h/b/k$a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    invoke-virtual {p2}, Lc/e/a/b/h/b/k$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lc/e/a/b/h/b/rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 8
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 10
    :catch_0
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lc/e/a/b/h/b/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    return-void
.end method

.method public final a(Lc/e/a/b/h/b/k$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 13
    sget-object v0, Lc/e/a/b/h/b/k;->qa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    invoke-virtual {p2}, Lc/e/a/b/h/b/k$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lc/e/a/b/h/b/rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 9
    :catch_0
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 11
    sget-object v0, Lc/e/a/b/h/b/k;->ra:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    invoke-virtual {p2}, Lc/e/a/b/h/b/k$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lc/e/a/b/h/b/rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 9
    :catch_0
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 11
    sget-object v0, Lc/e/a/b/h/b/k;->wa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->C:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    invoke-virtual {p2}, Lc/e/a/b/h/b/k$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lc/e/a/b/h/b/rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 8
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v1, "Failed to load metadata: PackageManager is null"

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/d/h/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v1, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v1, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 11
    :cond_3
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to load metadata: Package name not found"

    invoke-virtual {v1, v2, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    const-string v1, "gaia_collection_enabled"

    invoke-interface {v0, p1, v1}, Lc/e/a/b/h/b/rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    const-string v1, "measurement.event_sampling_enabled"

    .line 2
    invoke-interface {v0, p1, v1}, Lc/e/a/b/h/b/rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->ba:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->da:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->ea:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->V:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->W:Lc/e/a/b/h/b/k$a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/pc;->c:Lc/e/a/b/h/b/rc;

    invoke-virtual {v0}, Lc/e/a/b/h/b/k$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lc/e/a/b/h/b/rc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/h/b/k;->fa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final n()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const-wide/16 v0, 0x3bc4

    return-wide v0
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 1

    .line 2
    sget-object v0, Lc/e/a/b/h/b/k;->ga:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1

    .line 4
    sget-object v0, Lc/e/a/b/h/b/k;->ia:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5
    invoke-static {}, Lc/e/a/b/d/g/o;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/pc;->d:Ljava/lang/Boolean;

    .line 8
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lc/e/a/b/h/b/pc;->d:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 11
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 1

    .line 13
    sget-object v0, Lc/e/a/b/h/b/k;->ja:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const-string v0, "firebase_analytics_collection_deactivated"

    .line 2
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    .line 4
    sget-object v0, Lc/e/a/b/h/b/k;->ka:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final r()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const-string v0, "firebase_analytics_collection_enabled"

    .line 2
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 1

    .line 3
    sget-object v0, Lc/e/a/b/h/b/k;->ma:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 1

    .line 4
    sget-object v0, Lc/e/a/b/h/b/k;->la:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final t(Ljava/lang/String;)Z
    .locals 1

    .line 4
    sget-object v0, Lc/e/a/b/h/b/k;->oa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final u()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, "android.os.SystemProperties"

    .line 1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 2
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "debug.firebase.analytics.app"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "SystemProperties.get() threw an exception"

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Could not access SystemProperties.get()"

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Could not find SystemProperties.get() method"

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Could not find SystemProperties class"

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final u(Ljava/lang/String;)Z
    .locals 1

    .line 8
    sget-object v0, Lc/e/a/b/h/b/k;->pa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result p1

    return p1
.end method

.method public final w()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->b:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "app_measurement_lite"

    .line 2
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/pc;->b:Ljava/lang/Boolean;

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/pc;->b:Ljava/lang/Boolean;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/pc;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->t()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
