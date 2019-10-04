.class public final Lc/e/a/a/j/c/k$c;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lc/e/a/a/e/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/j/B;

.field public final b:Lc/e/a/a/E;

.field public final c:Lc/e/a/a/g/e;

.field public final synthetic d:Lc/e/a/a/j/c/k;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/c/k;Lc/e/a/a/j/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/c/k$c;->d:Lc/e/a/a/j/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    .line 3
    new-instance p1, Lc/e/a/a/E;

    invoke-direct {p1}, Lc/e/a/a/E;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/c/k$c;->b:Lc/e/a/a/E;

    .line 4
    new-instance p1, Lc/e/a/a/g/e;

    invoke-direct {p1}, Lc/e/a/a/g/e;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/c/k$c;->c:Lc/e/a/a/g/e;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;IZ)I
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/j/B;->a(Lc/e/a/a/e/h;IZ)I

    move-result p1

    return p1
.end method

.method public final a()Lc/e/a/a/g/e;
    .locals 8

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->c:Lc/e/a/a/g/e;

    invoke-virtual {v0}, Lc/e/a/a/c/f;->g()V

    .line 9
    iget-object v1, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    iget-object v2, p0, Lc/e/a/a/j/c/k$c;->b:Lc/e/a/a/E;

    iget-object v3, p0, Lc/e/a/a/j/c/k$c;->c:Lc/e/a/a/g/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lc/e/a/a/j/B;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZJ)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->c:Lc/e/a/a/g/e;

    invoke-virtual {v0}, Lc/e/a/a/c/f;->k()V

    .line 11
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->c:Lc/e/a/a/g/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JIIILc/e/a/a/e/q$a;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/B;->a(JIIILc/e/a/a/e/q$a;)V

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/c/k$c;->b()V

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 14
    new-instance v0, Lc/e/a/a/j/c/k$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/e/a/a/j/c/k$a;-><init>(JJ)V

    .line 15
    iget-object p1, p0, Lc/e/a/a/j/c/k$c;->d:Lc/e/a/a/j/c/k;

    invoke-static {p1}, Lc/e/a/a/j/c/k;->b(Lc/e/a/a/j/c/k;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lc/e/a/a/j/c/k$c;->d:Lc/e/a/a/j/c/k;

    invoke-static {p2}, Lc/e/a/a/j/c/k;->b(Lc/e/a/a/j/c/k;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V
    .locals 4

    .line 12
    invoke-static {p3}, Lc/e/a/a/j/c/k;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lc/e/a/a/j/c/k$c;->a(JJ)V

    return-void
.end method

.method public a(Lc/e/a/a/o/v;I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/j/B;->a(Lc/e/a/a/o/v;I)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/B;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->d:Lc/e/a/a/j/c/k;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/j/c/k;->b(J)Z

    move-result p1

    return p1
.end method

.method public a(Lc/e/a/a/j/b/d;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->d:Lc/e/a/a/j/c/k;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/c/k;->a(Lc/e/a/a/j/b/d;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 5

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/j/c/k$c;->a()Lc/e/a/a/g/e;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v1, v0, Lc/e/a/a/c/f;->d:J

    .line 5
    iget-object v3, p0, Lc/e/a/a/j/c/k$c;->d:Lc/e/a/a/j/c/k;

    invoke-static {v3}, Lc/e/a/a/j/c/k;->a(Lc/e/a/a/j/c/k;)Lc/e/a/a/g/a/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/e/a/a/g/a/b;->a(Lc/e/a/a/g/e;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lc/e/a/a/j/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p0, v1, v2, v0}, Lc/e/a/a/j/c/k$c;->a(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->c()V

    return-void
.end method

.method public b(Lc/e/a/a/j/b/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->d:Lc/e/a/a/j/c/k;

    invoke-virtual {v0, p1}, Lc/e/a/a/j/c/k;->b(Lc/e/a/a/j/b/d;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/k$c;->a:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->m()V

    return-void
.end method
