.class public final Lc/e/a/a/e/h/B$a;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/h/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/h/o;

.field public final b:Lc/e/a/a/o/F;

.field public final c:Lc/e/a/a/o/u;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lc/e/a/a/e/h/o;Lc/e/a/a/o/F;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/h/B$a;->a:Lc/e/a/a/e/h/o;

    .line 3
    iput-object p2, p0, Lc/e/a/a/e/h/B$a;->b:Lc/e/a/a/o/F;

    .line 4
    new-instance p1, Lc/e/a/a/o/u;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lc/e/a/a/o/u;-><init>([B)V

    iput-object p1, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc/e/a/a/o/u;->c(I)V

    .line 11
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v0}, Lc/e/a/a/o/u;->f()Z

    move-result v0

    iput-boolean v0, p0, Lc/e/a/a/e/h/B$a;->d:Z

    .line 12
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v0}, Lc/e/a/a/o/u;->f()Z

    move-result v0

    iput-boolean v0, p0, Lc/e/a/a/e/h/B$a;->e:Z

    .line 13
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lc/e/a/a/o/u;->c(I)V

    .line 14
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/u;->a(I)I

    move-result v0

    iput v0, p0, Lc/e/a/a/e/h/B$a;->g:I

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    iget-object v0, v0, Lc/e/a/a/o/u;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lc/e/a/a/o/v;->a([BII)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/u;->b(I)V

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/e/h/B$a;->a()V

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    iget-object v0, v0, Lc/e/a/a/o/u;->a:[B

    iget v2, p0, Lc/e/a/a/e/h/B$a;->g:I

    invoke-virtual {p1, v0, v1, v2}, Lc/e/a/a/o/v;->a([BII)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/u;->b(I)V

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/e/h/B$a;->b()V

    .line 7
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->a:Lc/e/a/a/e/h/o;

    iget-wide v1, p0, Lc/e/a/a/e/h/B$a;->h:J

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/a/e/h/o;->a(JI)V

    .line 8
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->a:Lc/e/a/a/e/h/o;

    invoke-interface {v0, p1}, Lc/e/a/a/e/h/o;->a(Lc/e/a/a/o/v;)V

    .line 9
    iget-object p1, p0, Lc/e/a/a/e/h/B$a;->a:Lc/e/a/a/e/h/o;

    invoke-interface {p1}, Lc/e/a/a/e/h/o;->b()V

    return-void
.end method

.method public final b()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc/e/a/a/e/h/B$a;->h:J

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/e/h/B$a;->d:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc/e/a/a/o/u;->c(I)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lc/e/a/a/o/u;->a(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 5
    iget-object v5, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lc/e/a/a/o/u;->c(I)V

    .line 6
    iget-object v5, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lc/e/a/a/o/u;->a(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 7
    iget-object v5, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v5, v6}, Lc/e/a/a/o/u;->c(I)V

    .line 8
    iget-object v5, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v5, v7}, Lc/e/a/a/o/u;->a(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 9
    iget-object v5, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v5, v6}, Lc/e/a/a/o/u;->c(I)V

    .line 10
    iget-boolean v5, p0, Lc/e/a/a/e/h/B$a;->f:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lc/e/a/a/e/h/B$a;->e:Z

    if-eqz v5, :cond_0

    .line 11
    iget-object v5, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v5, v1}, Lc/e/a/a/o/u;->c(I)V

    .line 12
    iget-object v1, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v1, v2}, Lc/e/a/a/o/u;->a(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 13
    iget-object v2, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v2, v6}, Lc/e/a/a/o/u;->c(I)V

    .line 14
    iget-object v2, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v2, v7}, Lc/e/a/a/o/u;->a(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 15
    iget-object v2, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v2, v6}, Lc/e/a/a/o/u;->c(I)V

    .line 16
    iget-object v2, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v2, v7}, Lc/e/a/a/o/u;->a(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 17
    iget-object v2, p0, Lc/e/a/a/e/h/B$a;->c:Lc/e/a/a/o/u;

    invoke-virtual {v2, v6}, Lc/e/a/a/o/u;->c(I)V

    .line 18
    iget-object v2, p0, Lc/e/a/a/e/h/B$a;->b:Lc/e/a/a/o/F;

    invoke-virtual {v2, v0, v1}, Lc/e/a/a/o/F;->b(J)J

    .line 19
    iput-boolean v6, p0, Lc/e/a/a/e/h/B$a;->f:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->b:Lc/e/a/a/o/F;

    invoke-virtual {v0, v3, v4}, Lc/e/a/a/o/F;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/a/e/h/B$a;->h:J

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/e/h/B$a;->f:Z

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/B$a;->a:Lc/e/a/a/e/h/o;

    invoke-interface {v0}, Lc/e/a/a/e/h/o;->a()V

    return-void
.end method
