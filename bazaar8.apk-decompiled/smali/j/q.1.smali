.class public final Lj/q;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/q$a;
    }
.end annotation


# static fields
.field public static final a:[Lj/m;

.field public static final b:[Lj/m;

.field public static final c:Lj/q;

.field public static final d:Lj/q;

.field public static final e:Lj/q;

.field public static final f:Lj/q;


# instance fields
.field public final g:Z

.field public final h:Z

.field public final i:[Ljava/lang/String;

.field public final j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xb

    .line 1
    new-array v1, v0, [Lj/m;

    sget-object v2, Lj/m;->lb:Lj/m;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lj/m;->mb:Lj/m;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lj/m;->nb:Lj/m;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lj/m;->ob:Lj/m;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lj/m;->pb:Lj/m;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lj/m;->Ya:Lj/m;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lj/m;->bb:Lj/m;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lj/m;->Za:Lj/m;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lj/m;->cb:Lj/m;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lj/m;->ib:Lj/m;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lj/m;->hb:Lj/m;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sput-object v1, Lj/q;->a:[Lj/m;

    const/16 v1, 0x12

    .line 2
    new-array v1, v1, [Lj/m;

    sget-object v2, Lj/m;->lb:Lj/m;

    aput-object v2, v1, v3

    sget-object v2, Lj/m;->mb:Lj/m;

    aput-object v2, v1, v4

    sget-object v2, Lj/m;->nb:Lj/m;

    aput-object v2, v1, v5

    sget-object v2, Lj/m;->ob:Lj/m;

    aput-object v2, v1, v6

    sget-object v2, Lj/m;->pb:Lj/m;

    aput-object v2, v1, v7

    sget-object v2, Lj/m;->Ya:Lj/m;

    aput-object v2, v1, v8

    sget-object v2, Lj/m;->bb:Lj/m;

    aput-object v2, v1, v9

    sget-object v2, Lj/m;->Za:Lj/m;

    aput-object v2, v1, v10

    sget-object v2, Lj/m;->cb:Lj/m;

    aput-object v2, v1, v11

    sget-object v2, Lj/m;->ib:Lj/m;

    aput-object v2, v1, v12

    sget-object v2, Lj/m;->hb:Lj/m;

    aput-object v2, v1, v13

    sget-object v2, Lj/m;->Ja:Lj/m;

    aput-object v2, v1, v0

    sget-object v0, Lj/m;->Ka:Lj/m;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lj/m;->ha:Lj/m;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lj/m;->ia:Lj/m;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lj/m;->F:Lj/m;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lj/m;->J:Lj/m;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Lj/m;->j:Lj/m;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Lj/q;->b:[Lj/m;

    .line 3
    new-instance v0, Lj/q$a;

    invoke-direct {v0, v4}, Lj/q$a;-><init>(Z)V

    sget-object v1, Lj/q;->a:[Lj/m;

    .line 4
    invoke-virtual {v0, v1}, Lj/q$a;->a([Lj/m;)Lj/q$a;

    new-array v1, v5, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {v0, v1}, Lj/q$a;->a([Lokhttp3/TlsVersion;)Lj/q$a;

    .line 6
    invoke-virtual {v0, v4}, Lj/q$a;->a(Z)Lj/q$a;

    .line 7
    invoke-virtual {v0}, Lj/q$a;->a()Lj/q;

    move-result-object v0

    sput-object v0, Lj/q;->c:Lj/q;

    .line 8
    new-instance v0, Lj/q$a;

    invoke-direct {v0, v4}, Lj/q$a;-><init>(Z)V

    sget-object v1, Lj/q;->b:[Lj/m;

    .line 9
    invoke-virtual {v0, v1}, Lj/q$a;->a([Lj/m;)Lj/q$a;

    new-array v1, v7, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v2, v1, v5

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v1, v6

    .line 10
    invoke-virtual {v0, v1}, Lj/q$a;->a([Lokhttp3/TlsVersion;)Lj/q$a;

    .line 11
    invoke-virtual {v0, v4}, Lj/q$a;->a(Z)Lj/q$a;

    .line 12
    invoke-virtual {v0}, Lj/q$a;->a()Lj/q;

    move-result-object v0

    sput-object v0, Lj/q;->d:Lj/q;

    .line 13
    new-instance v0, Lj/q$a;

    invoke-direct {v0, v4}, Lj/q$a;-><init>(Z)V

    sget-object v1, Lj/q;->b:[Lj/m;

    .line 14
    invoke-virtual {v0, v1}, Lj/q$a;->a([Lj/m;)Lj/q$a;

    new-array v1, v4, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v1, v3

    .line 15
    invoke-virtual {v0, v1}, Lj/q$a;->a([Lokhttp3/TlsVersion;)Lj/q$a;

    .line 16
    invoke-virtual {v0, v4}, Lj/q$a;->a(Z)Lj/q$a;

    .line 17
    invoke-virtual {v0}, Lj/q$a;->a()Lj/q;

    move-result-object v0

    sput-object v0, Lj/q;->e:Lj/q;

    .line 18
    new-instance v0, Lj/q$a;

    invoke-direct {v0, v3}, Lj/q$a;-><init>(Z)V

    invoke-virtual {v0}, Lj/q$a;->a()Lj/q;

    move-result-object v0

    sput-object v0, Lj/q;->f:Lj/q;

    return-void
.end method

.method public constructor <init>(Lj/q$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lj/q$a;->a:Z

    iput-boolean v0, p0, Lj/q;->g:Z

    .line 3
    iget-object v0, p1, Lj/q$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lj/q;->i:[Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lj/q$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lj/q;->j:[Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Lj/q$a;->d:Z

    iput-boolean p1, p0, Lj/q;->h:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/q;->i:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj/m;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lj/q;->b(Ljavax/net/ssl/SSLSocket;Z)Lj/q;

    move-result-object p2

    .line 3
    iget-object v0, p2, Lj/q;->j:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p2, p2, Lj/q;->i:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 7
    iget-boolean v0, p0, Lj/q;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lj/q;->j:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lj/a/e;->q:Ljava/util/Comparator;

    .line 9
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v2, v0, v3}, Lj/a/e;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 11
    :cond_1
    iget-object v0, p0, Lj/q;->i:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lj/m;->a:Ljava/util/Comparator;

    .line 12
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v2, v0, p1}, Lj/a/e;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;Z)Lj/q;
    .locals 4

    .line 2
    iget-object v0, p0, Lj/q;->i:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lj/m;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj/q;->i:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lj/a/e;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lj/q;->j:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lj/a/e;->q:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lj/q;->j:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lj/a/e;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object v2, Lj/m;->a:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lj/a/e;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    .line 10
    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lj/a/e;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_2
    new-instance p1, Lj/q$a;

    invoke-direct {p1, p0}, Lj/q$a;-><init>(Lj/q;)V

    .line 12
    invoke-virtual {p1, v0}, Lj/q$a;->a([Ljava/lang/String;)Lj/q$a;

    .line 13
    invoke-virtual {p1, v1}, Lj/q$a;->b([Ljava/lang/String;)Lj/q$a;

    .line 14
    invoke-virtual {p1}, Lj/q$a;->a()Lj/q;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/q;->g:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/q;->h:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/q;->j:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/TlsVersion;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lj/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lj/q;

    .line 3
    iget-boolean v2, p0, Lj/q;->g:Z

    iget-boolean v3, p1, Lj/q;->g:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Lj/q;->i:[Ljava/lang/String;

    iget-object v3, p1, Lj/q;->i:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lj/q;->j:[Ljava/lang/String;

    iget-object v3, p1, Lj/q;->j:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Lj/q;->h:Z

    iget-boolean p1, p1, Lj/q;->h:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/q;->g:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lj/q;->i:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lj/q;->j:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lj/q;->h:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lj/q;->g:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lj/q;->i:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lj/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lj/q;->j:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lj/q;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lj/q;->h:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
