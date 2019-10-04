.class public Lj/P$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lj/L;

.field public b:Lokhttp3/Protocol;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lj/B;

.field public f:Lj/C$a;

.field public g:Lj/S;

.field public h:Lj/P;

.field public i:Lj/P;

.field public j:Lj/P;

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lj/P$a;->c:I

    .line 3
    new-instance v0, Lj/C$a;

    invoke-direct {v0}, Lj/C$a;-><init>()V

    iput-object v0, p0, Lj/P$a;->f:Lj/C$a;

    return-void
.end method

.method public constructor <init>(Lj/P;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lj/P$a;->c:I

    .line 6
    iget-object v0, p1, Lj/P;->a:Lj/L;

    iput-object v0, p0, Lj/P$a;->a:Lj/L;

    .line 7
    iget-object v0, p1, Lj/P;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lj/P$a;->b:Lokhttp3/Protocol;

    .line 8
    iget v0, p1, Lj/P;->c:I

    iput v0, p0, Lj/P$a;->c:I

    .line 9
    iget-object v0, p1, Lj/P;->d:Ljava/lang/String;

    iput-object v0, p0, Lj/P$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lj/P;->e:Lj/B;

    iput-object v0, p0, Lj/P$a;->e:Lj/B;

    .line 11
    iget-object v0, p1, Lj/P;->f:Lj/C;

    invoke-virtual {v0}, Lj/C;->a()Lj/C$a;

    move-result-object v0

    iput-object v0, p0, Lj/P$a;->f:Lj/C$a;

    .line 12
    iget-object v0, p1, Lj/P;->g:Lj/S;

    iput-object v0, p0, Lj/P$a;->g:Lj/S;

    .line 13
    iget-object v0, p1, Lj/P;->h:Lj/P;

    iput-object v0, p0, Lj/P$a;->h:Lj/P;

    .line 14
    iget-object v0, p1, Lj/P;->i:Lj/P;

    iput-object v0, p0, Lj/P$a;->i:Lj/P;

    .line 15
    iget-object v0, p1, Lj/P;->j:Lj/P;

    iput-object v0, p0, Lj/P$a;->j:Lj/P;

    .line 16
    iget-wide v0, p1, Lj/P;->k:J

    iput-wide v0, p0, Lj/P$a;->k:J

    .line 17
    iget-wide v0, p1, Lj/P;->l:J

    iput-wide v0, p0, Lj/P$a;->l:J

    return-void
.end method


# virtual methods
.method public a(I)Lj/P$a;
    .locals 0

    .line 3
    iput p1, p0, Lj/P$a;->c:I

    return-object p0
.end method

.method public a(J)Lj/P$a;
    .locals 0

    .line 19
    iput-wide p1, p0, Lj/P$a;->l:J

    return-object p0
.end method

.method public a(Lj/B;)Lj/P$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lj/P$a;->e:Lj/B;

    return-object p0
.end method

.method public a(Lj/C;)Lj/P$a;
    .locals 0

    .line 7
    invoke-virtual {p1}, Lj/C;->a()Lj/C$a;

    move-result-object p1

    iput-object p1, p0, Lj/P$a;->f:Lj/C$a;

    return-object p0
.end method

.method public a(Lj/L;)Lj/P$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lj/P$a;->a:Lj/L;

    return-object p0
.end method

.method public a(Lj/P;)Lj/P$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 9
    invoke-virtual {p0, v0, p1}, Lj/P$a;->a(Ljava/lang/String;Lj/P;)V

    .line 10
    :cond_0
    iput-object p1, p0, Lj/P$a;->i:Lj/P;

    return-object p0
.end method

.method public a(Lj/S;)Lj/P$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lj/P$a;->g:Lj/S;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lj/P$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lj/P$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lj/P$a;
    .locals 1

    .line 6
    iget-object v0, p0, Lj/P$a;->f:Lj/C$a;

    invoke-virtual {v0, p1, p2}, Lj/C$a;->a(Ljava/lang/String;Ljava/lang/String;)Lj/C$a;

    return-object p0
.end method

.method public a(Lokhttp3/Protocol;)Lj/P$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lj/P$a;->b:Lokhttp3/Protocol;

    return-object p0
.end method

.method public a()Lj/P;
    .locals 3

    .line 20
    iget-object v0, p0, Lj/P$a;->a:Lj/L;

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lj/P$a;->b:Lokhttp3/Protocol;

    if-eqz v0, :cond_2

    .line 22
    iget v0, p0, Lj/P$a;->c:I

    if-ltz v0, :cond_1

    .line 23
    iget-object v0, p0, Lj/P$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lj/P;

    invoke-direct {v0, p0}, Lj/P;-><init>(Lj/P$a;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj/P$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Lj/P;)V
    .locals 1

    .line 11
    iget-object v0, p2, Lj/P;->g:Lj/S;

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p2, Lj/P;->h:Lj/P;

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p2, Lj/P;->i:Lj/P;

    if-nez v0, :cond_1

    .line 14
    iget-object p2, p2, Lj/P;->j:Lj/P;

    if-nez p2, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(J)Lj/P$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lj/P$a;->k:J

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lj/P$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P$a;->f:Lj/C$a;

    invoke-virtual {v0, p1, p2}, Lj/C$a;->c(Ljava/lang/String;Ljava/lang/String;)Lj/C$a;

    return-object p0
.end method

.method public final b(Lj/P;)V
    .locals 1

    .line 2
    iget-object p1, p1, Lj/P;->g:Lj/S;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lj/P;)Lj/P$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Lj/P$a;->a(Ljava/lang/String;Lj/P;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lj/P$a;->h:Lj/P;

    return-object p0
.end method

.method public d(Lj/P;)Lj/P$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lj/P$a;->b(Lj/P;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lj/P$a;->j:Lj/P;

    return-object p0
.end method
