.class public Lj/a/d/b$e;
.super Lj/a/d/b$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field public e:J

.field public final synthetic f:Lj/a/d/b;


# direct methods
.method public constructor <init>(Lj/a/d/b;J)V
    .locals 3

    .line 1
    iput-object p1, p0, Lj/a/d/b$e;->f:Lj/a/d/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj/a/d/b$a;-><init>(Lj/a/d/b;Lj/a/d/a;)V

    .line 2
    iput-wide p2, p0, Lj/a/d/b$e;->e:J

    .line 3
    iget-wide p1, p0, Lj/a/d/b$e;->e:J

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lj/a/d/b$a;->a(ZLjava/io/IOException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lk/g;J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    .line 1
    iget-boolean v2, p0, Lj/a/d/b$a;->b:Z

    if-nez v2, :cond_3

    .line 2
    iget-wide v2, p0, Lj/a/d/b$e;->e:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    return-wide v4

    .line 3
    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lj/a/d/b$a;->b(Lk/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_2

    .line 4
    iget-wide v2, p0, Lj/a/d/b$e;->e:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lj/a/d/b$e;->e:J

    .line 5
    iget-wide v2, p0, Lj/a/d/b$e;->e:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p3, v0}, Lj/a/d/b$a;->a(ZLjava/io/IOException;)V

    :cond_1
    return-wide p1

    .line 7
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2, p1}, Lj/a/d/b$a;->a(ZLjava/io/IOException;)V

    .line 9
    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lj/a/d/b$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lj/a/d/b$e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lj/a/e;->a(Lk/z;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lj/a/d/b$a;->a(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lj/a/d/b$a;->b:Z

    return-void
.end method
