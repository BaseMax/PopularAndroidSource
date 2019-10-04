.class public final Lc/e/a/a/e/h/F;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lc/e/a/a/e/h/C;


# instance fields
.field public a:Lc/e/a/a/o/F;

.field public b:Lc/e/a/a/e/q;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/o/F;Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc/e/a/a/e/h/F;->a:Lc/e/a/a/o/F;

    .line 2
    invoke-virtual {p3}, Lc/e/a/a/e/h/J$d;->a()V

    .line 3
    invoke-virtual {p3}, Lc/e/a/a/e/h/J$d;->c()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/e/h/F;->b:Lc/e/a/a/e/q;

    .line 4
    iget-object p1, p0, Lc/e/a/a/e/h/F;->b:Lc/e/a/a/e/q;

    invoke-virtual {p3}, Lc/e/a/a/e/h/J$d;->b()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "application/x-scte35"

    const/4 v1, -0x1

    invoke-static {p2, v0, p3, v1, p3}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 8

    .line 5
    iget-boolean v0, p0, Lc/e/a/a/e/h/F;->c:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/h/F;->a:Lc/e/a/a/o/F;

    invoke-virtual {v0}, Lc/e/a/a/o/F;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/F;->b:Lc/e/a/a/e/q;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/e/a/a/e/h/F;->a:Lc/e/a/a/o/F;

    .line 8
    invoke-virtual {v2}, Lc/e/a/a/o/F;->c()J

    move-result-wide v2

    const-string v4, "application/x-scte35"

    .line 9
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lc/e/a/a/e/h/F;->c:Z

    .line 11
    :cond_1
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v5

    .line 12
    iget-object v0, p0, Lc/e/a/a/e/h/F;->b:Lc/e/a/a/e/q;

    invoke-interface {v0, p1, v5}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 13
    iget-object v1, p0, Lc/e/a/a/e/h/F;->b:Lc/e/a/a/e/q;

    iget-object p1, p0, Lc/e/a/a/e/h/F;->a:Lc/e/a/a/o/F;

    invoke-virtual {p1}, Lc/e/a/a/o/F;->b()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    return-void
.end method
