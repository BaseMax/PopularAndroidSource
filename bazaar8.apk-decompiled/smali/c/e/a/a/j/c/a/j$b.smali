.class public Lc/e/a/a/j/c/a/j$b;
.super Lc/e/a/a/j/c/a/j;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final g:Landroid/net/Uri;

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Lc/e/a/a/j/c/a/h;

.field public final k:Lc/e/a/a/j/c/a/l;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k$e;Ljava/util/List;Ljava/lang/String;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lc/e/a/a/j/c/a/k$e;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v8, p0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lc/e/a/a/j/c/a/j;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;Lc/e/a/a/j/c/a/i;)V

    .line 2
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lc/e/a/a/j/c/a/j$b;->g:Landroid/net/Uri;

    .line 3
    invoke-virtual {p5}, Lc/e/a/a/j/c/a/k$e;->b()Lc/e/a/a/j/c/a/h;

    move-result-object v0

    iput-object v0, v8, Lc/e/a/a/j/c/a/j$b;->j:Lc/e/a/a/j/c/a/h;

    move-object/from16 v0, p7

    .line 4
    iput-object v0, v8, Lc/e/a/a/j/c/a/j$b;->i:Ljava/lang/String;

    move-wide/from16 v0, p8

    .line 5
    iput-wide v0, v8, Lc/e/a/a/j/c/a/j$b;->h:J

    .line 6
    iget-object v2, v8, Lc/e/a/a/j/c/a/j$b;->j:Lc/e/a/a/j/c/a/h;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lc/e/a/a/j/c/a/l;

    new-instance v3, Lc/e/a/a/j/c/a/h;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object p1, v3

    move-object p2, v4

    move-wide p3, v5

    move-wide/from16 p5, p8

    invoke-direct/range {p1 .. p6}, Lc/e/a/a/j/c/a/h;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v2, v3}, Lc/e/a/a/j/c/a/l;-><init>(Lc/e/a/a/j/c/a/h;)V

    move-object v0, v2

    :goto_0
    iput-object v0, v8, Lc/e/a/a/j/c/a/j$b;->k:Lc/e/a/a/j/c/a/l;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lc/e/a/a/j/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$b;->k:Lc/e/a/a/j/c/a/l;

    return-object v0
.end method

.method public e()Lc/e/a/a/j/c/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$b;->j:Lc/e/a/a/j/c/a/h;

    return-object v0
.end method
