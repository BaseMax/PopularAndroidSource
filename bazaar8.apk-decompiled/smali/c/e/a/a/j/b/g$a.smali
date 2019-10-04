.class public final Lc/e/a/a/j/b/g$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lc/e/a/a/j/C;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/j/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/j/b/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lc/e/a/a/j/B;

.field public final c:I

.field public d:Z

.field public final synthetic e:Lc/e/a/a/j/b/g;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/b/g;Lc/e/a/a/j/b/g;Lc/e/a/a/j/B;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/b/g<",
            "TT;>;",
            "Lc/e/a/a/j/B;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/e/a/a/j/b/g$a;->a:Lc/e/a/a/j/b/g;

    .line 3
    iput-object p3, p0, Lc/e/a/a/j/b/g$a;->b:Lc/e/a/a/j/B;

    .line 4
    iput p4, p0, Lc/e/a/a/j/b/g$a;->c:I

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    invoke-virtual {v0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/b/g$a;->b()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->b:Lc/e/a/a/j/B;

    iget-object v1, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    iget-boolean v4, v1, Lc/e/a/a/j/b/g;->v:Z

    iget-wide v5, v1, Lc/e/a/a/j/b/g;->u:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/j/B;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZJ)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/b/g$a;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    invoke-static {v0}, Lc/e/a/a/j/b/g;->e(Lc/e/a/a/j/b/g;)Lc/e/a/a/j/w$a;

    move-result-object v1

    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    .line 3
    invoke-static {v0}, Lc/e/a/a/j/b/g;->b(Lc/e/a/a/j/b/g;)[I

    move-result-object v0

    iget v2, p0, Lc/e/a/a/j/b/g$a;->c:I

    aget v2, v0, v2

    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    .line 4
    invoke-static {v0}, Lc/e/a/a/j/b/g;->c(Lc/e/a/a/j/b/g;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v3, p0, Lc/e/a/a/j/b/g$a;->c:I

    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    .line 5
    invoke-static {v0}, Lc/e/a/a/j/b/g;->d(Lc/e/a/a/j/b/g;)J

    move-result-wide v6

    .line 6
    invoke-virtual/range {v1 .. v7}, Lc/e/a/a/j/w$a;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/j/b/g$a;->d:Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    iget-boolean v1, v0, Lc/e/a/a/j/b/g;->v:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->b:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(J)I
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    invoke-virtual {v0}, Lc/e/a/a/j/b/g;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/b/g$a;->b()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    iget-boolean v0, v0, Lc/e/a/a/j/b/g;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->b:Lc/e/a/a/j/B;

    invoke-virtual {v0}, Lc/e/a/a/j/B;->f()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 4
    iget-object p1, p0, Lc/e/a/a/j/b/g$a;->b:Lc/e/a/a/j/B;

    invoke-virtual {p1}, Lc/e/a/a/j/B;->a()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->b:Lc/e/a/a/j/B;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v2}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    return v1
.end method

.method public d()V
    .locals 3

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    invoke-static {v0}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/g;)[Z

    move-result-object v0

    iget v1, p0, Lc/e/a/a/j/b/g$a;->c:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 7
    iget-object v0, p0, Lc/e/a/a/j/b/g$a;->e:Lc/e/a/a/j/b/g;

    invoke-static {v0}, Lc/e/a/a/j/b/g;->a(Lc/e/a/a/j/b/g;)[Z

    move-result-object v0

    iget v1, p0, Lc/e/a/a/j/b/g$a;->c:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method
