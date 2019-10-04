.class public final Lj/P;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/P$a;
    }
.end annotation


# instance fields
.field public final a:Lj/L;

.field public final b:Lokhttp3/Protocol;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lj/B;

.field public final f:Lj/C;

.field public final g:Lj/S;

.field public final h:Lj/P;

.field public final i:Lj/P;

.field public final j:Lj/P;

.field public final k:J

.field public final l:J

.field public volatile m:Lj/h;


# direct methods
.method public constructor <init>(Lj/P$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lj/P$a;->a:Lj/L;

    iput-object v0, p0, Lj/P;->a:Lj/L;

    .line 3
    iget-object v0, p1, Lj/P$a;->b:Lokhttp3/Protocol;

    iput-object v0, p0, Lj/P;->b:Lokhttp3/Protocol;

    .line 4
    iget v0, p1, Lj/P$a;->c:I

    iput v0, p0, Lj/P;->c:I

    .line 5
    iget-object v0, p1, Lj/P$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lj/P;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lj/P$a;->e:Lj/B;

    iput-object v0, p0, Lj/P;->e:Lj/B;

    .line 7
    iget-object v0, p1, Lj/P$a;->f:Lj/C$a;

    invoke-virtual {v0}, Lj/C$a;->a()Lj/C;

    move-result-object v0

    iput-object v0, p0, Lj/P;->f:Lj/C;

    .line 8
    iget-object v0, p1, Lj/P$a;->g:Lj/S;

    iput-object v0, p0, Lj/P;->g:Lj/S;

    .line 9
    iget-object v0, p1, Lj/P$a;->h:Lj/P;

    iput-object v0, p0, Lj/P;->h:Lj/P;

    .line 10
    iget-object v0, p1, Lj/P$a;->i:Lj/P;

    iput-object v0, p0, Lj/P;->i:Lj/P;

    .line 11
    iget-object v0, p1, Lj/P$a;->j:Lj/P;

    iput-object v0, p0, Lj/P;->j:Lj/P;

    .line 12
    iget-wide v0, p1, Lj/P$a;->k:J

    iput-wide v0, p0, Lj/P;->k:J

    .line 13
    iget-wide v0, p1, Lj/P$a;->l:J

    iput-wide v0, p0, Lj/P;->l:J

    return-void
.end method


# virtual methods
.method public A()Lj/P;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->h:Lj/P;

    return-object v0
.end method

.method public B()Lj/P$a;
    .locals 1

    .line 1
    new-instance v0, Lj/P$a;

    invoke-direct {v0, p0}, Lj/P$a;-><init>(Lj/P;)V

    return-object v0
.end method

.method public C()Lj/P;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->j:Lj/P;

    return-object v0
.end method

.method public D()Lokhttp3/Protocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method public E()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj/P;->l:J

    return-wide v0
.end method

.method public F()Lj/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->a:Lj/L;

    return-object v0
.end method

.method public G()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lj/P;->k:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->f:Lj/C;

    invoke-virtual {v0, p1}, Lj/C;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/P;->g:Lj/S;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lj/S;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lj/P;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s()Lj/S;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->g:Lj/S;

    return-object v0
.end method

.method public t()Lj/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->m:Lj/h;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lj/P;->f:Lj/C;

    invoke-static {v0}, Lj/h;->a(Lj/C;)Lj/h;

    move-result-object v0

    iput-object v0, p0, Lj/P;->m:Lj/h;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/P;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/P;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/P;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/P;->a:Lj/L;

    .line 2
    invoke-virtual {v1}, Lj/L;->g()Lj/D;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lj/P;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->i:Lj/P;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lj/P;->c:I

    return v0
.end method

.method public w()Lj/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->e:Lj/B;

    return-object v0
.end method

.method public x()Lj/C;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->f:Lj/C;

    return-object v0
.end method

.method public y()Z
    .locals 2

    .line 1
    iget v0, p0, Lj/P;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/P;->d:Ljava/lang/String;

    return-object v0
.end method
