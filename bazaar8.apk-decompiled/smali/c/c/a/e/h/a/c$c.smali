.class public final Lc/c/a/e/h/a/c$c;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lj/O;

.field public final e:Lj/C;

.field public final f:Ljava/lang/String;

.field public final g:Lokhttp3/Protocol;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lj/C;

.field public final k:Lj/B;

.field public final l:J

.field public final m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v1

    invoke-virtual {v1}, Lj/a/g/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/c/a/e/h/a/c$c;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v1

    invoke-virtual {v1}, Lj/a/g/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/c/a/e/h/a/c$c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lj/P;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object v0

    invoke-virtual {v0}, Lj/L;->g()Lj/D;

    move-result-object v0

    invoke-virtual {v0}, Lj/D;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->c:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lj/a/c/f;->e(Lj/P;)Lj/C;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->e:Lj/C;

    .line 42
    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object v0

    invoke-virtual {v0}, Lj/L;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->f:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object v0

    invoke-virtual {v0}, Lj/L;->a()Lj/O;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->d:Lj/O;

    .line 44
    invoke-virtual {p1}, Lj/P;->D()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->g:Lokhttp3/Protocol;

    .line 45
    invoke-virtual {p1}, Lj/P;->v()I

    move-result v0

    iput v0, p0, Lc/c/a/e/h/a/c$c;->h:I

    .line 46
    invoke-virtual {p1}, Lj/P;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->i:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lj/P;->x()Lj/C;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    .line 48
    invoke-virtual {p1}, Lj/P;->w()Lj/B;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;

    .line 49
    invoke-virtual {p1}, Lj/P;->G()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/e/h/a/c$c;->l:J

    .line 50
    invoke-virtual {p1}, Lj/P;->E()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/e/h/a/c$c;->m:J

    return-void
.end method

.method public constructor <init>(Lk/z;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Lk/s;->a(Lk/z;)Lk/i;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    .line 4
    invoke-static {v2}, Lj/F;->b(Ljava/lang/String;)Lj/F;

    move-result-object v2

    invoke-static {v2, v1}, Lj/O;->a(Lj/F;Ljava/lang/String;)Lj/O;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/e/h/a/c$c;->d:Lj/O;

    .line 5
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/e/h/a/c$c;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/e/h/a/c$c;->f:Ljava/lang/String;

    .line 7
    new-instance v1, Lj/C$a;

    invoke-direct {v1}, Lj/C$a;-><init>()V

    .line 8
    invoke-static {v0}, Lc/c/a/e/h/a/c;->a(Lk/i;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 9
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj/C$a;->a(Ljava/lang/String;)Lj/C$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lj/C$a;->a()Lj/C;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/e/h/a/c$c;->e:Lj/C;

    .line 11
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj/a/c/l;->a(Ljava/lang/String;)Lj/a/c/l;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lj/a/c/l;->a:Lokhttp3/Protocol;

    iput-object v2, p0, Lc/c/a/e/h/a/c$c;->g:Lokhttp3/Protocol;

    .line 13
    iget v2, v1, Lj/a/c/l;->b:I

    iput v2, p0, Lc/c/a/e/h/a/c$c;->h:I

    .line 14
    iget-object v1, v1, Lj/a/c/l;->c:Ljava/lang/String;

    iput-object v1, p0, Lc/c/a/e/h/a/c$c;->i:Ljava/lang/String;

    .line 15
    new-instance v1, Lj/C$a;

    invoke-direct {v1}, Lj/C$a;-><init>()V

    .line 16
    invoke-static {v0}, Lc/c/a/e/h/a/c;->a(Lk/i;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 17
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lj/C$a;->a(Ljava/lang/String;)Lj/C$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_1
    sget-object v2, Lc/c/a/e/h/a/c$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lj/C$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    sget-object v3, Lc/c/a/e/h/a/c$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lj/C$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    sget-object v4, Lc/c/a/e/h/a/c$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lj/C$a;->d(Ljava/lang/String;)Lj/C$a;

    .line 21
    sget-object v4, Lc/c/a/e/h/a/c$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lj/C$a;->d(Ljava/lang/String;)Lj/C$a;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    .line 22
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    iput-wide v6, p0, Lc/c/a/e/h/a/c$c;->l:J

    if-eqz v3, :cond_3

    .line 23
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_3
    iput-wide v4, p0, Lc/c/a/e/h/a/c$c;->m:J

    .line 24
    invoke-virtual {v1}, Lj/C$a;->a()Lj/C;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    .line 25
    invoke-virtual {p0}, Lc/c/a/e/h/a/c$c;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 28
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lj/m;->a(Ljava/lang/String;)Lj/m;

    move-result-object v1

    .line 30
    invoke-virtual {p0, v0}, Lc/c/a/e/h/a/c$c;->a(Lk/i;)Ljava/util/List;

    move-result-object v2

    .line 31
    invoke-virtual {p0, v0}, Lc/c/a/e/h/a/c$c;->a(Lk/i;)Ljava/util/List;

    move-result-object v3

    .line 32
    invoke-interface {v0}, Lk/i;->d()Z

    move-result v4

    if-nez v4, :cond_4

    .line 33
    invoke-interface {v0}, Lk/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/TlsVersion;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 34
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lj/B;->a(Lokhttp3/TlsVersion;Lj/m;Ljava/util/List;Ljava/util/List;)Lj/B;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;

    goto :goto_4

    .line 35
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_4
    invoke-interface {p1}, Lk/z;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lk/z;->close()V

    .line 38
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    const-string v2, ","

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 65
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "max-age"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "="

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v2, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-wide v0
.end method

.method public a(Lj/a/a/h$c;)Lj/P;
    .locals 5

    .line 70
    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lj/C;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lj/C;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Lj/L$a;

    invoke-direct {v2}, Lj/L$a;-><init>()V

    iget-object v3, p0, Lc/c/a/e/h/a/c$c;->c:Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v3}, Lj/L$a;->b(Ljava/lang/String;)Lj/L$a;

    iget-object v3, p0, Lc/c/a/e/h/a/c$c;->f:Ljava/lang/String;

    iget-object v4, p0, Lc/c/a/e/h/a/c$c;->d:Lj/O;

    .line 74
    invoke-virtual {v2, v3, v4}, Lj/L$a;->a(Ljava/lang/String;Lj/O;)Lj/L$a;

    iget-object v3, p0, Lc/c/a/e/h/a/c$c;->e:Lj/C;

    .line 75
    invoke-virtual {v2, v3}, Lj/L$a;->a(Lj/C;)Lj/L$a;

    .line 76
    invoke-virtual {v2}, Lj/L$a;->a()Lj/L;

    move-result-object v2

    .line 77
    new-instance v3, Lj/P$a;

    invoke-direct {v3}, Lj/P$a;-><init>()V

    .line 78
    invoke-virtual {v3, v2}, Lj/P$a;->a(Lj/L;)Lj/P$a;

    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->g:Lokhttp3/Protocol;

    .line 79
    invoke-virtual {v3, v2}, Lj/P$a;->a(Lokhttp3/Protocol;)Lj/P$a;

    iget v2, p0, Lc/c/a/e/h/a/c$c;->h:I

    .line 80
    invoke-virtual {v3, v2}, Lj/P$a;->a(I)Lj/P$a;

    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->i:Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v2}, Lj/P$a;->a(Ljava/lang/String;)Lj/P$a;

    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    .line 82
    invoke-virtual {v3, v2}, Lj/P$a;->a(Lj/C;)Lj/P$a;

    new-instance v2, Lc/c/a/e/h/a/c$b;

    invoke-direct {v2, p1, v0, v1}, Lc/c/a/e/h/a/c$b;-><init>(Lj/a/a/h$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v2}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    iget-object p1, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;

    .line 84
    invoke-virtual {v3, p1}, Lj/P$a;->a(Lj/B;)Lj/P$a;

    iget-wide v0, p0, Lc/c/a/e/h/a/c$c;->l:J

    .line 85
    invoke-virtual {v3, v0, v1}, Lj/P$a;->b(J)Lj/P$a;

    iget-wide v0, p0, Lc/c/a/e/h/a/c$c;->m:J

    .line 86
    invoke-virtual {v3, v0, v1}, Lj/P$a;->a(J)Lj/P$a;

    .line 87
    invoke-virtual {v3}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lk/i;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/i;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lc/c/a/e/h/a/c;->a(Lk/i;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 43
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 45
    invoke-interface {p1}, Lk/i;->g()Ljava/lang/String;

    move-result-object v4

    .line 46
    new-instance v5, Lk/g;

    invoke-direct {v5}, Lk/g;-><init>()V

    .line 47
    invoke-static {v4}, Lokio/ByteString;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lk/g;->a(Lokio/ByteString;)Lk/g;

    .line 48
    invoke-virtual {v5}, Lk/g;->k()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Lj/a/a/h$a;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lj/a/a/h$a;->a(I)Lk/y;

    move-result-object p1

    invoke-static {p1}, Lk/s;->a(Lk/y;)Lk/h;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lc/c/a/e/h/a/c$c;->d:Lj/O;

    invoke-virtual {v1, p1}, Lj/O;->a(Lk/h;)V

    const/16 v1, 0xa

    .line 3
    invoke-interface {p1, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 4
    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->c:Ljava/lang/String;

    invoke-interface {p1, v2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v2

    .line 5
    invoke-interface {v2, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 6
    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->f:Ljava/lang/String;

    invoke-interface {p1, v2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v2

    .line 7
    invoke-interface {v2, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 8
    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->e:Lj/C;

    invoke-virtual {v2}, Lj/C;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lk/h;->g(J)Lk/h;

    move-result-object v2

    .line 9
    invoke-interface {v2, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 10
    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->e:Lj/C;

    invoke-virtual {v2}, Lj/C;->b()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v2, :cond_0

    .line 11
    iget-object v5, p0, Lc/c/a/e/h/a/c$c;->e:Lj/C;

    invoke-virtual {v5, v3}, Lj/C;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v5

    .line 12
    invoke-interface {v5, v4}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v4

    iget-object v5, p0, Lc/c/a/e/h/a/c$c;->e:Lj/C;

    .line 13
    invoke-virtual {v5, v3}, Lj/C;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v4

    .line 14
    invoke-interface {v4, v1}, Lk/h;->writeByte(I)Lk/h;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lj/a/c/l;

    iget-object v3, p0, Lc/c/a/e/h/a/c$c;->g:Lokhttp3/Protocol;

    iget v5, p0, Lc/c/a/e/h/a/c$c;->h:I

    iget-object v6, p0, Lc/c/a/e/h/a/c$c;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v6}, Lj/a/c/l;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v2}, Lj/a/c/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v2

    .line 16
    invoke-interface {v2, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 17
    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    invoke-virtual {v2}, Lj/C;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lk/h;->g(J)Lk/h;

    move-result-object v2

    .line 18
    invoke-interface {v2, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 19
    iget-object v2, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    invoke-virtual {v2}, Lj/C;->b()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 20
    iget-object v3, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    invoke-virtual {v3, v0}, Lj/C;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v3

    .line 21
    invoke-interface {v3, v4}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v3

    iget-object v5, p0, Lc/c/a/e/h/a/c$c;->j:Lj/C;

    .line 22
    invoke-virtual {v5, v0}, Lj/C;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v3

    .line 23
    invoke-interface {v3, v1}, Lk/h;->writeByte(I)Lk/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_1
    sget-object v0, Lc/c/a/e/h/a/c$c;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    .line 25
    invoke-interface {v0, v4}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    iget-wide v2, p0, Lc/c/a/e/h/a/c$c;->l:J

    .line 26
    invoke-interface {v0, v2, v3}, Lk/h;->g(J)Lk/h;

    move-result-object v0

    .line 27
    invoke-interface {v0, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 28
    sget-object v0, Lc/c/a/e/h/a/c$c;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    .line 29
    invoke-interface {v0, v4}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    iget-wide v2, p0, Lc/c/a/e/h/a/c$c;->m:J

    .line 30
    invoke-interface {v0, v2, v3}, Lk/h;->g(J)Lk/h;

    move-result-object v0

    .line 31
    invoke-interface {v0, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 32
    invoke-virtual {p0}, Lc/c/a/e/h/a/c$c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-interface {p1, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 34
    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;

    invoke-virtual {v0}, Lj/B;->a()Lj/m;

    move-result-object v0

    invoke-virtual {v0}, Lj/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    .line 35
    invoke-interface {v0, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 36
    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;

    invoke-virtual {v0}, Lj/B;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/e/h/a/c$c;->a(Lk/h;Ljava/util/List;)V

    .line 37
    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;

    invoke-virtual {v0}, Lj/B;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/e/h/a/c$c;->a(Lk/h;Ljava/util/List;)V

    .line 38
    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->k:Lj/B;

    invoke-virtual {v0}, Lj/B;->d()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lk/h;->writeByte(I)Lk/h;

    .line 39
    :cond_2
    invoke-interface {p1}, Lk/y;->close()V

    return-void
.end method

.method public final a(Lk/h;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/h;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lk/h;->g(J)Lk/h;

    move-result-object v0

    const/16 v1, 0xa

    .line 51
    invoke-interface {v0, v1}, Lk/h;->writeByte(I)Lk/h;

    const/4 v0, 0x0

    .line 52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 53
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 54
    invoke-static {v3}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->f()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {p1, v3}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v3

    .line 56
    invoke-interface {v3, v1}, Lk/h;->writeByte(I)Lk/h;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final a()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->c:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lj/L;Lj/P;)Z
    .locals 2

    .line 58
    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lj/L;->g()Lj/D;

    move-result-object v1

    invoke-virtual {v1}, Lj/D;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/h/a/c$c;->f:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lj/L;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p2}, Lc/c/a/e/h/a/c$c;->a(Lj/P;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lj/P;)Z
    .locals 6

    const-string v0, "Cache-Control"

    .line 61
    invoke-virtual {p1, v0}, Lj/P;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/e/h/a/c$c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc/c/a/e/h/a/c$c;->l:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v0

    add-long/2addr v4, v2

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v4, v2

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method