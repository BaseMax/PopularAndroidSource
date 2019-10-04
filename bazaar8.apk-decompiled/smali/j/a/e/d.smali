.class public final Lj/a/e/d;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lj/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a/e/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lj/E$a;

.field public final d:Lj/a/b/f;

.field public final e:Lj/a/e/k;

.field public f:Lj/a/e/q;

.field public final g:Lokhttp3/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xc

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "connection"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "host"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v5, "keep-alive"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string v7, "proxy-connection"

    const/4 v8, 0x3

    aput-object v7, v0, v8

    const-string v9, "te"

    const/4 v10, 0x4

    aput-object v9, v0, v10

    const-string v11, "transfer-encoding"

    const/4 v12, 0x5

    aput-object v11, v0, v12

    const-string v13, "encoding"

    const/4 v14, 0x6

    aput-object v13, v0, v14

    const/4 v15, 0x7

    const-string v16, "upgrade"

    aput-object v16, v0, v15

    const/16 v16, 0x8

    const-string v17, ":method"

    aput-object v17, v0, v16

    const/16 v16, 0x9

    const-string v17, ":path"

    aput-object v17, v0, v16

    const/16 v16, 0xa

    const-string v17, ":scheme"

    aput-object v17, v0, v16

    const/16 v16, 0xb

    const-string v17, ":authority"

    aput-object v17, v0, v16

    invoke-static {v0}, Lj/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj/a/e/d;->a:Ljava/util/List;

    const/16 v0, 0x8

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    aput-object v7, v0, v8

    aput-object v9, v0, v10

    aput-object v11, v0, v12

    aput-object v13, v0, v14

    const-string v1, "upgrade"

    aput-object v1, v0, v15

    invoke-static {v0}, Lj/a/e;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lj/a/e/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lj/I;Lj/E$a;Lj/a/b/f;Lj/a/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lj/a/e/d;->c:Lj/E$a;

    .line 3
    iput-object p3, p0, Lj/a/e/d;->d:Lj/a/b/f;

    .line 4
    iput-object p4, p0, Lj/a/e/d;->e:Lj/a/e/k;

    .line 5
    invoke-virtual {p1}, Lj/I;->w()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lj/a/e/d;->g:Lokhttp3/Protocol;

    return-void
.end method

.method public static a(Lj/C;Lokhttp3/Protocol;)Lj/P$a;
    .locals 7

    .line 12
    new-instance v0, Lj/C$a;

    invoke-direct {v0}, Lj/C$a;-><init>()V

    .line 13
    invoke-virtual {p0}, Lj/C;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 14
    invoke-virtual {p0, v3}, Lj/C;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0, v3}, Lj/C;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    .line 16
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lj/a/c/l;->a(Ljava/lang/String;)Lj/a/c/l;

    move-result-object v2

    goto :goto_1

    .line 18
    :cond_0
    sget-object v6, Lj/a/e/d;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 19
    sget-object v6, Lj/a/a;->a:Lj/a/a;

    invoke-virtual {v6, v0, v4, v5}, Lj/a/a;->a(Lj/C$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 20
    new-instance p0, Lj/P$a;

    invoke-direct {p0}, Lj/P$a;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lj/P$a;->a(Lokhttp3/Protocol;)Lj/P$a;

    iget p1, v2, Lj/a/c/l;->b:I

    .line 22
    invoke-virtual {p0, p1}, Lj/P$a;->a(I)Lj/P$a;

    iget-object p1, v2, Lj/a/c/l;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lj/P$a;->a(Ljava/lang/String;)Lj/P$a;

    .line 24
    invoke-virtual {v0}, Lj/C$a;->a()Lj/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/P$a;->a(Lj/C;)Lj/P$a;

    return-object p0

    .line 25
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static b(Lj/L;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/L;",
            ")",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lj/L;->c()Lj/C;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lj/C;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v2, Lj/a/e/a;

    sget-object v3, Lj/a/e/a;->c:Lokio/ByteString;

    invoke-virtual {p0}, Lj/L;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lj/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lj/a/e/a;

    sget-object v3, Lj/a/e/a;->d:Lokio/ByteString;

    invoke-virtual {p0}, Lj/L;->g()Lj/D;

    move-result-object v4

    invoke-static {v4}, Lj/a/c/j;->a(Lj/D;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lj/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 6
    invoke-virtual {p0, v2}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Lj/a/e/a;

    sget-object v4, Lj/a/e/a;->f:Lokio/ByteString;

    invoke-direct {v3, v4, v2}, Lj/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    new-instance v2, Lj/a/e/a;

    sget-object v3, Lj/a/e/a;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lj/L;->g()Lj/D;

    move-result-object p0

    invoke-virtual {p0}, Lj/D;->n()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lj/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 9
    invoke-virtual {v0}, Lj/C;->b()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 10
    invoke-virtual {v0, p0}, Lj/C;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    .line 11
    sget-object v4, Lj/a/e/d;->a:Ljava/util/List;

    invoke-virtual {v3}, Lokio/ByteString;->n()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    new-instance v4, Lj/a/e/a;

    invoke-virtual {v0, p0}, Lj/C;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lj/a/e/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Z)Lj/P$a;
    .locals 2

    .line 9
    iget-object v0, p0, Lj/a/e/d;->f:Lj/a/e/q;

    invoke-virtual {v0}, Lj/a/e/q;->j()Lj/C;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lj/a/e/d;->g:Lokhttp3/Protocol;

    invoke-static {v0, v1}, Lj/a/e/d;->a(Lj/C;Lokhttp3/Protocol;)Lj/P$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Lj/a/a;->a:Lj/a/a;

    invoke-virtual {p1, v0}, Lj/a/a;->a(Lj/P$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public a(Lj/P;)Lj/S;
    .locals 4

    .line 26
    iget-object v0, p0, Lj/a/e/d;->d:Lj/a/b/f;

    iget-object v1, v0, Lj/a/b/f;->f:Lj/z;

    iget-object v0, v0, Lj/a/b/f;->e:Lj/i;

    invoke-virtual {v1, v0}, Lj/z;->e(Lj/i;)V

    const-string v0, "Content-Type"

    .line 27
    invoke-virtual {p1, v0}, Lj/P;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {p1}, Lj/a/c/f;->a(Lj/P;)J

    move-result-wide v1

    .line 29
    new-instance p1, Lj/a/e/d$a;

    iget-object v3, p0, Lj/a/e/d;->f:Lj/a/e/q;

    invoke-virtual {v3}, Lj/a/e/q;->e()Lk/z;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lj/a/e/d$a;-><init>(Lj/a/e/d;Lk/z;)V

    .line 30
    new-instance v3, Lj/a/c/i;

    invoke-static {p1}, Lk/s;->a(Lk/z;)Lk/i;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lj/a/c/i;-><init>(Ljava/lang/String;JLk/i;)V

    return-object v3
.end method

.method public a(Lj/L;J)Lk/y;
    .locals 0

    .line 1
    iget-object p1, p0, Lj/a/e/d;->f:Lj/a/e/q;

    invoke-virtual {p1}, Lj/a/e/q;->d()Lk/y;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 8
    iget-object v0, p0, Lj/a/e/d;->f:Lj/a/e/q;

    invoke-virtual {v0}, Lj/a/e/q;->d()Lk/y;

    move-result-object v0

    invoke-interface {v0}, Lk/y;->close()V

    return-void
.end method

.method public a(Lj/L;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lj/a/e/d;->f:Lj/a/e/q;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lj/L;->a()Lj/O;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lj/a/e/d;->b(Lj/L;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lj/a/e/d;->e:Lj/a/e/k;

    invoke-virtual {v1, p1, v0}, Lj/a/e/k;->a(Ljava/util/List;Z)Lj/a/e/q;

    move-result-object p1

    iput-object p1, p0, Lj/a/e/d;->f:Lj/a/e/q;

    .line 6
    iget-object p1, p0, Lj/a/e/d;->f:Lj/a/e/q;

    invoke-virtual {p1}, Lj/a/e/q;->h()Lk/B;

    move-result-object p1

    iget-object v0, p0, Lj/a/e/d;->c:Lj/E$a;

    invoke-interface {v0}, Lj/E$a;->a()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lk/B;->a(JLjava/util/concurrent/TimeUnit;)Lk/B;

    .line 7
    iget-object p1, p0, Lj/a/e/d;->f:Lj/a/e/q;

    invoke-virtual {p1}, Lj/a/e/q;->l()Lk/B;

    move-result-object p1

    iget-object v0, p0, Lj/a/e/d;->c:Lj/E$a;

    invoke-interface {v0}, Lj/E$a;->b()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lk/B;->a(JLjava/util/concurrent/TimeUnit;)Lk/B;

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a/e/d;->e:Lj/a/e/k;

    invoke-virtual {v0}, Lj/a/e/k;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/e/d;->f:Lj/a/e/q;

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lj/a/e/q;->c(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method
