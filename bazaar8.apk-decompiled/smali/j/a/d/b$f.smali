.class public Lj/a/d/b$f;
.super Lj/a/d/b$a;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field public e:Z

.field public final synthetic f:Lj/a/d/b;


# direct methods
.method public constructor <init>(Lj/a/d/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lj/a/d/b$f;->f:Lj/a/d/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj/a/d/b$a;-><init>(Lj/a/d/b;Lj/a/d/a;)V

    return-void
.end method


# virtual methods
.method public b(Lk/g;J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 1
    iget-boolean v0, p0, Lj/a/d/b$a;->b:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lj/a/d/b$f;->e:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lj/a/d/b$a;->b(Lk/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lj/a/d/b$f;->e:Z

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lj/a/d/b$a;->a(ZLjava/io/IOException;)V

    return-wide v1

    :cond_1
    return-wide p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
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
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/a/d/b$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lj/a/d/b$f;->e:Z

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
