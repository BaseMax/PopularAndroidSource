.class public final Lc/e/a/a/j/I;
.super Lc/e/a/a/j/m;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/I$a;
    }
.end annotation


# instance fields
.field public final f:Lc/e/a/a/n/l;

.field public final g:Lc/e/a/a/n/j$a;

.field public final h:Lcom/google/android/exoplayer2/Format;

.field public final i:J

.field public final j:Lc/e/a/a/n/v;

.field public final k:Z

.field public final l:Lc/e/a/a/Z;

.field public final m:Ljava/lang/Object;

.field public n:Lc/e/a/a/n/A;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lc/e/a/a/n/j$a;Lcom/google/android/exoplayer2/Format;JLc/e/a/a/n/v;ZLjava/lang/Object;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lc/e/a/a/j/m;-><init>()V

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/I;->g:Lc/e/a/a/n/j$a;

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/I;->h:Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-wide p4, p0, Lc/e/a/a/j/I;->i:J

    .line 6
    iput-object p6, p0, Lc/e/a/a/j/I;->j:Lc/e/a/a/n/v;

    .line 7
    iput-boolean p7, p0, Lc/e/a/a/j/I;->k:Z

    .line 8
    iput-object p8, p0, Lc/e/a/a/j/I;->m:Ljava/lang/Object;

    .line 9
    new-instance p2, Lc/e/a/a/n/l;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lc/e/a/a/n/l;-><init>(Landroid/net/Uri;I)V

    iput-object p2, p0, Lc/e/a/a/j/I;->f:Lc/e/a/a/n/l;

    .line 10
    new-instance p1, Lc/e/a/a/j/E;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move-wide v1, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/j/E;-><init>(JZZLjava/lang/Object;)V

    iput-object p1, p0, Lc/e/a/a/j/I;->l:Lc/e/a/a/Z;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lc/e/a/a/n/j$a;Lcom/google/android/exoplayer2/Format;JLc/e/a/a/n/v;ZLjava/lang/Object;Lc/e/a/a/j/H;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lc/e/a/a/j/I;-><init>(Landroid/net/Uri;Lc/e/a/a/n/j$a;Lcom/google/android/exoplayer2/Format;JLc/e/a/a/n/v;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;
    .locals 10

    .line 3
    new-instance p2, Lc/e/a/a/j/G;

    iget-object v1, p0, Lc/e/a/a/j/I;->f:Lc/e/a/a/n/l;

    iget-object v2, p0, Lc/e/a/a/j/I;->g:Lc/e/a/a/n/j$a;

    iget-object v3, p0, Lc/e/a/a/j/I;->n:Lc/e/a/a/n/A;

    iget-object v4, p0, Lc/e/a/a/j/I;->h:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lc/e/a/a/j/I;->i:J

    iget-object v7, p0, Lc/e/a/a/j/I;->j:Lc/e/a/a/n/v;

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;

    move-result-object v8

    iget-boolean v9, p0, Lc/e/a/a/j/I;->k:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lc/e/a/a/j/G;-><init>(Lc/e/a/a/n/l;Lc/e/a/a/n/j$a;Lc/e/a/a/n/A;Lcom/google/android/exoplayer2/Format;JLc/e/a/a/n/v;Lc/e/a/a/j/w$a;Z)V

    return-object p2
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 0

    .line 5
    check-cast p1, Lc/e/a/a/j/G;

    invoke-virtual {p1}, Lc/e/a/a/j/G;->a()V

    return-void
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/I;->n:Lc/e/a/a/n/A;

    .line 2
    iget-object p1, p0, Lc/e/a/a/j/I;->l:Lc/e/a/a/Z;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/e/a/a/j/m;->a(Lc/e/a/a/Z;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
