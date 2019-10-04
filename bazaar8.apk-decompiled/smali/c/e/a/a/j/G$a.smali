.class public final Lc/e/a/a/j/G$a;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/C;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public final synthetic c:Lc/e/a/a/j/G;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/j/G;Lc/e/a/a/j/F;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/a/j/G$a;-><init>(Lc/e/a/a/j/G;)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 5

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/j/G$a;->b()V

    .line 4
    iget v0, p0, Lc/e/a/a/j/G$a;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x4

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p2, v1}, Lc/e/a/a/c/a;->b(I)V

    return v3

    :cond_0
    const/4 v4, 0x1

    if-nez p3, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget-boolean p3, p1, Lc/e/a/a/j/G;->m:Z

    if-eqz p3, :cond_4

    .line 7
    iget-boolean p1, p1, Lc/e/a/a/j/G;->n:Z

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p2, v4}, Lc/e/a/a/c/a;->b(I)V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p2, Lc/e/a/a/c/f;->d:J

    .line 10
    invoke-virtual {p2}, Lc/e/a/a/c/f;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    .line 11
    :cond_2
    iget-object p1, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget p1, p1, Lc/e/a/a/j/G;->p:I

    invoke-virtual {p2, p1}, Lc/e/a/a/c/f;->g(I)V

    .line 12
    iget-object p1, p2, Lc/e/a/a/c/f;->c:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget-object p3, p2, Lc/e/a/a/j/G;->o:[B

    const/4 v0, 0x0

    iget p2, p2, Lc/e/a/a/j/G;->p:I

    invoke-virtual {p1, p3, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p2, v1}, Lc/e/a/a/c/a;->b(I)V

    .line 14
    :goto_0
    iput v2, p0, Lc/e/a/a/j/G$a;->a:I

    return v3

    :cond_4
    const/4 p1, -0x3

    return p1

    .line 15
    :cond_5
    :goto_1
    iget-object p2, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget-object p2, p2, Lc/e/a/a/j/G;->j:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lc/e/a/a/E;->a:Lcom/google/android/exoplayer2/Format;

    .line 16
    iput v4, p0, Lc/e/a/a/j/G$a;->a:I

    const/4 p1, -0x5

    return p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget-boolean v1, v0, Lc/e/a/a/j/G;->k:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lc/e/a/a/j/G;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/G$a;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    invoke-static {v0}, Lc/e/a/a/j/G;->a(Lc/e/a/a/j/G;)Lc/e/a/a/j/w$a;

    move-result-object v1

    iget-object v0, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget-object v0, v0, Lc/e/a/a/j/G;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lc/e/a/a/o/s;->f(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget-object v3, v0, Lc/e/a/a/j/G;->j:Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 4
    invoke-virtual/range {v1 .. v7}, Lc/e/a/a/j/w$a;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/e/a/a/j/G$a;->b:Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/G$a;->c:Lc/e/a/a/j/G;

    iget-boolean v0, v0, Lc/e/a/a/j/G;->m:Z

    return v0
.end method

.method public d(J)I
    .locals 3

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/j/G$a;->b()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 4
    iget p1, p0, Lc/e/a/a/j/G$a;->a:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 5
    iput p2, p0, Lc/e/a/a/j/G$a;->a:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/j/G$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lc/e/a/a/j/G$a;->a:I

    :cond_0
    return-void
.end method
