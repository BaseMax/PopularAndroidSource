.class public final Lc/e/a/a/j/b/e$a;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lc/e/a/a/e/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;

.field public final d:Lc/e/a/a/e/f;

.field public e:Lcom/google/android/exoplayer2/Format;

.field public f:Lc/e/a/a/e/q;

.field public g:J


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/j/b/e$a;->a:I

    .line 3
    iput p2, p0, Lc/e/a/a/j/b/e$a;->b:I

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/b/e$a;->c:Lcom/google/android/exoplayer2/Format;

    .line 5
    new-instance p1, Lc/e/a/a/e/f;

    invoke-direct {p1}, Lc/e/a/a/e/f;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/b/e$a;->d:Lc/e/a/a/e/f;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;IZ)I
    .locals 1

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/e/q;->a(Lc/e/a/a/e/h;IZ)I

    move-result p1

    return p1
.end method

.method public a(JIIILc/e/a/a/e/q$a;)V
    .locals 8

    .line 10
    iget-wide v0, p0, Lc/e/a/a/j/b/e$a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 11
    iget-object v0, p0, Lc/e/a/a/j/b/e$a;->d:Lc/e/a/a/e/f;

    iput-object v0, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    .line 12
    :cond_0
    iget-object v1, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/b/e$b;J)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lc/e/a/a/j/b/e$a;->d:Lc/e/a/a/e/f;

    iput-object p1, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lc/e/a/a/j/b/e$a;->g:J

    .line 3
    iget p2, p0, Lc/e/a/a/j/b/e$a;->a:I

    iget p3, p0, Lc/e/a/a/j/b/e$a;->b:I

    invoke-interface {p1, p2, p3}, Lc/e/a/a/j/b/e$b;->a(II)Lc/e/a/a/e/q;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    .line 4
    iget-object p1, p0, Lc/e/a/a/j/b/e$a;->e:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    invoke-interface {p2, p1}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    return-void
.end method

.method public a(Lc/e/a/a/o/v;I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/b/e$a;->c:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lc/e/a/a/j/b/e$a;->e:Lcom/google/android/exoplayer2/Format;

    .line 7
    iget-object p1, p0, Lc/e/a/a/j/b/e$a;->f:Lc/e/a/a/e/q;

    iget-object v0, p0, Lc/e/a/a/j/b/e$a;->e:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
