.class public Lc/e/a/b/d/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Lc/e/a/b/d/f;


# instance fields
.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/d/f;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/e/a/b/d/f;
    .locals 2

    .line 1
    invoke-static {p0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Lc/e/a/b/d/f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/e/a/b/d/f;->a:Lc/e/a/b/d/f;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Lc/e/a/b/d/k;->a(Landroid/content/Context;)V

    .line 5
    new-instance v1, Lc/e/a/b/d/f;

    invoke-direct {v1, p0}, Lc/e/a/b/d/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/e/a/b/d/f;->a:Lc/e/a/b/d/f;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object p0, Lc/e/a/b/d/f;->a:Lc/e/a/b/d/f;

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static varargs a(Landroid/content/pm/PackageInfo;[Lc/e/a/b/d/m;)Lc/e/a/b/d/m;
    .locals 3

    .line 40
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 41
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 43
    :cond_1
    new-instance v1, Lc/e/a/b/d/n;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lc/e/a/b/d/n;-><init>([B)V

    .line 44
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 45
    aget-object p0, p1, v2

    invoke-virtual {p0, v1}, Lc/e/a/b/d/m;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 46
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 17
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 18
    sget-object p1, Lc/e/a/b/d/p;->a:[Lc/e/a/b/d/m;

    invoke-static {p0, p1}, Lc/e/a/b/d/f;->a(Landroid/content/pm/PackageInfo;[Lc/e/a/b/d/m;)Lc/e/a/b/d/m;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_0
    new-array p1, v1, [Lc/e/a/b/d/m;

    sget-object v2, Lc/e/a/b/d/p;->a:[Lc/e/a/b/d/m;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lc/e/a/b/d/f;->a(Landroid/content/pm/PackageInfo;[Lc/e/a/b/d/m;)Lc/e/a/b/d/m;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lc/e/a/b/d/t;
    .locals 6

    .line 24
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/d/f;->b:Landroid/content/Context;

    .line 25
    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    const/16 v1, 0x40

    .line 26
    invoke-virtual {v0, p1, v1, p2}, Lc/e/a/b/d/h/b;->a(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 27
    iget-object v0, p0, Lc/e/a/b/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lc/e/a/b/d/e;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    if-nez p2, :cond_0

    const-string p2, "null pkg"

    .line 28
    invoke-static {p2}, Lc/e/a/b/d/t;->a(Ljava/lang/String;)Lc/e/a/b/d/t;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string p2, "single cert required"

    .line 30
    invoke-static {p2}, Lc/e/a/b/d/t;->a(Ljava/lang/String;)Lc/e/a/b/d/t;

    move-result-object p1

    return-object p1

    .line 31
    :cond_1
    new-instance v1, Lc/e/a/b/d/n;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lc/e/a/b/d/n;-><init>([B)V

    .line 32
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 33
    invoke-static {v3, v1, v0, v4}, Lc/e/a/b/d/k;->a(Ljava/lang/String;Lc/e/a/b/d/m;ZZ)Lc/e/a/b/d/t;

    move-result-object v0

    .line 34
    iget-boolean v5, v0, Lc/e/a/b/d/t;->b:Z

    if-eqz v5, :cond_2

    .line 35
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 36
    invoke-static {v3, v1, v4, v2}, Lc/e/a/b/d/k;->a(Ljava/lang/String;Lc/e/a/b/d/m;ZZ)Lc/e/a/b/d/t;

    move-result-object p2

    .line 37
    iget-boolean p2, p2, Lc/e/a/b/d/t;->b:Z

    if-eqz p2, :cond_2

    const-string p2, "debuggable release cert app rejected"

    .line 38
    invoke-static {p2}, Lc/e/a/b/d/t;->a(Ljava/lang/String;)Lc/e/a/b/d/t;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v0

    :catch_0
    nop

    const-string p2, "no pkg "

    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lc/e/a/b/d/t;->a(Ljava/lang/String;)Lc/e/a/b/d/t;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Z
    .locals 5

    .line 9
    iget-object v0, p0, Lc/e/a/b/d/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/d/h/b;->a(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 11
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v1, v0, v3

    .line 12
    invoke-virtual {p0, v1, p1}, Lc/e/a/b/d/f;->a(Ljava/lang/String;I)Lc/e/a/b/d/t;

    move-result-object v1

    .line 13
    iget-boolean v4, v1, Lc/e/a/b/d/t;->b:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "no pkgs"

    .line 14
    invoke-static {p1}, Lc/e/a/b/d/t;->a(Ljava/lang/String;)Lc/e/a/b/d/t;

    move-result-object v1

    .line 15
    :cond_2
    invoke-virtual {v1}, Lc/e/a/b/d/t;->c()V

    .line 16
    iget-boolean p1, v1, Lc/e/a/b/d/t;->b:Z

    return p1
.end method

.method public a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20
    :cond_0
    invoke-static {p1, v0}, Lc/e/a/b/d/f;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 21
    :cond_1
    invoke-static {p1, v2}, Lc/e/a/b/d/f;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p0, Lc/e/a/b/d/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lc/e/a/b/d/e;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 23
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method
