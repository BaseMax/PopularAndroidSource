.class public final Lc/e/c/d/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/security/KeyPair;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    .line 3
    iput-wide p2, p0, Lc/e/c/d/d;->b:J

    return-void
.end method

.method public static synthetic a(Lc/e/c/d/d;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/e/c/d/d;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lc/e/c/d/d;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lc/e/c/d/d;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lc/e/c/d/d;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lc/e/c/d/d;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/security/KeyPair;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lc/e/c/d/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lc/e/c/d/d;

    .line 3
    iget-wide v2, p0, Lc/e/c/d/d;->b:J

    iget-wide v4, p1, Lc/e/c/d/d;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    .line 4
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v2, p1, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iget-object p1, p1, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/e/c/d/d;->a:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lc/e/c/d/d;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lc/e/a/b/d/d/q;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
