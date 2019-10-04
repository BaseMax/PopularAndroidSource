.class public Lc/e/a/b/d/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/d/t;


# instance fields
.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/e/a/b/d/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lc/e/a/b/d/t;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lc/e/a/b/d/t;->a:Lc/e/a/b/d/t;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lc/e/a/b/d/t;->b:Z

    .line 3
    iput-object p2, p0, Lc/e/a/b/d/t;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lc/e/a/b/d/t;->d:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc/e/a/b/d/t;
    .locals 3

    .line 2
    new-instance v0, Lc/e/a/b/d/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lc/e/a/b/d/t;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Lc/e/a/b/d/t;
    .locals 2

    .line 3
    new-instance v0, Lc/e/a/b/d/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lc/e/a/b/d/t;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lc/e/a/b/d/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;)",
            "Lc/e/a/b/d/t;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/d/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/e/a/b/d/v;-><init>(Ljava/util/concurrent/Callable;Lc/e/a/b/d/u;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lc/e/a/b/d/m;ZZ)Ljava/lang/String;
    .locals 2

    if-eqz p3, :cond_0

    const-string p3, "debug cert rejected"

    goto :goto_0

    :cond_0
    const-string p3, "not whitelisted"

    :goto_0
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p0, v0, p3

    const/4 p0, 0x2

    const-string p3, "SHA-1"

    .line 6
    invoke-static {p3}, Lc/e/a/b/d/g/a;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p3

    invoke-virtual {p1}, Lc/e/a/b/d/m;->A()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 7
    invoke-static {p1}, Lc/e/a/b/d/g/j;->a([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    const-string p1, "12451009.false"

    aput-object p1, v0, p0

    const-string p0, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    .line 9
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lc/e/a/b/d/t;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/d/t;->a:Lc/e/a/b/d/t;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/d/t;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/t;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/d/t;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lc/e/a/b/d/t;->d:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/d/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
