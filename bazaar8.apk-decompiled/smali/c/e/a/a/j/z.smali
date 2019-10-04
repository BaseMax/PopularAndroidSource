.class public final Lc/e/a/a/j/z;
.super Lc/e/a/a/j/m;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lc/e/a/a/j/y$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/z$a;
    }
.end annotation


# instance fields
.field public final f:Landroid/net/Uri;

.field public final g:Lc/e/a/a/n/j$a;

.field public final h:Lc/e/a/a/e/j;

.field public final i:Lc/e/a/a/n/v;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/lang/Object;

.field public m:J

.field public n:Z

.field public o:Lc/e/a/a/n/A;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/e/j;Lc/e/a/a/n/v;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/a/j/m;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/z;->f:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/z;->g:Lc/e/a/a/n/j$a;

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/z;->h:Lc/e/a/a/e/j;

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/z;->i:Lc/e/a/a/n/v;

    .line 6
    iput-object p5, p0, Lc/e/a/a/j/z;->j:Ljava/lang/String;

    .line 7
    iput p6, p0, Lc/e/a/a/j/z;->k:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lc/e/a/a/j/z;->m:J

    .line 9
    iput-object p7, p0, Lc/e/a/a/j/z;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;
    .locals 10

    .line 3
    iget-object p3, p0, Lc/e/a/a/j/z;->g:Lc/e/a/a/n/j$a;

    invoke-interface {p3}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object v2

    .line 4
    iget-object p3, p0, Lc/e/a/a/j/z;->o:Lc/e/a/a/n/A;

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {v2, p3}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    .line 6
    :cond_0
    new-instance p3, Lc/e/a/a/j/y;

    iget-object v1, p0, Lc/e/a/a/j/z;->f:Landroid/net/Uri;

    iget-object p4, p0, Lc/e/a/a/j/z;->h:Lc/e/a/a/e/j;

    .line 7
    invoke-interface {p4}, Lc/e/a/a/e/j;->a()[Lc/e/a/a/e/g;

    move-result-object v3

    iget-object v4, p0, Lc/e/a/a/j/z;->i:Lc/e/a/a/n/v;

    .line 8
    invoke-virtual {p0, p1}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;

    move-result-object v5

    iget-object v8, p0, Lc/e/a/a/j/z;->j:Ljava/lang/String;

    iget v9, p0, Lc/e/a/a/j/z;->k:I

    move-object v0, p3

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lc/e/a/a/j/y;-><init>(Landroid/net/Uri;Lc/e/a/a/n/j;[Lc/e/a/a/e/g;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;Lc/e/a/a/j/y$c;Lc/e/a/a/n/e;Ljava/lang/String;I)V

    return-object p3
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 10
    iget-wide p1, p0, Lc/e/a/a/j/z;->m:J

    .line 11
    :cond_0
    iget-wide v0, p0, Lc/e/a/a/j/z;->m:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lc/e/a/a/j/z;->n:Z

    if-ne v0, p3, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/j/z;->b(JZ)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 0

    .line 9
    check-cast p1, Lc/e/a/a/j/y;

    invoke-virtual {p1}, Lc/e/a/a/j/y;->q()V

    return-void
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/z;->o:Lc/e/a/a/n/A;

    .line 2
    iget-wide v0, p0, Lc/e/a/a/j/z;->m:J

    iget-boolean p1, p0, Lc/e/a/a/j/z;->n:Z

    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/a/j/z;->b(JZ)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(JZ)V
    .locals 6

    .line 1
    iput-wide p1, p0, Lc/e/a/a/j/z;->m:J

    .line 2
    iput-boolean p3, p0, Lc/e/a/a/j/z;->n:Z

    .line 3
    new-instance p1, Lc/e/a/a/j/E;

    iget-wide v1, p0, Lc/e/a/a/j/z;->m:J

    iget-boolean v3, p0, Lc/e/a/a/j/z;->n:Z

    iget-object v5, p0, Lc/e/a/a/j/z;->l:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/j/E;-><init>(JZZLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/m;->a(Lc/e/a/a/Z;Ljava/lang/Object;)V

    return-void
.end method
