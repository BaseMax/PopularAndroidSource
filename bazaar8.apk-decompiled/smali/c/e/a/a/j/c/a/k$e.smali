.class public Lc/e/a/a/j/c/a/k$e;
.super Lc/e/a/a/j/c/a/k;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v9}, Lc/e/a/a/j/c/a/k$e;-><init>(Lc/e/a/a/j/c/a/h;JJJJ)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/j/c/a/h;JJJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lc/e/a/a/j/c/a/k;-><init>(Lc/e/a/a/j/c/a/h;JJ)V

    .line 2
    iput-wide p6, p0, Lc/e/a/a/j/c/a/k$e;->d:J

    .line 3
    iput-wide p8, p0, Lc/e/a/a/j/c/a/k$e;->e:J

    return-void
.end method


# virtual methods
.method public b()Lc/e/a/a/j/c/a/h;
    .locals 7

    .line 1
    iget-wide v4, p0, Lc/e/a/a/j/c/a/k$e;->e:J

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Lc/e/a/a/j/c/a/h;

    const/4 v1, 0x0

    iget-wide v2, p0, Lc/e/a/a/j/c/a/k$e;->d:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/j/c/a/h;-><init>(Ljava/lang/String;JJ)V

    :goto_0
    return-object v0
.end method
