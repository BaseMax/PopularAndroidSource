.class public abstract Lc/e/a/a/j/b/a;
.super Lc/e/a/a/j/b/l;
.source "BaseMediaChunk.java"


# instance fields
.field public final j:J

.field public final k:J

.field public l:Lc/e/a/a/j/b/c;

.field public m:[I


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 13

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p14

    .line 1
    invoke-direct/range {v0 .. v11}, Lc/e/a/a/j/b/l;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    move-wide/from16 v0, p10

    .line 2
    iput-wide v0, v12, Lc/e/a/a/j/b/a;->j:J

    move-wide/from16 v0, p12

    .line 3
    iput-wide v0, v12, Lc/e/a/a/j/b/a;->k:J

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/b/a;->m:[I

    aget p1, v0, p1

    return p1
.end method

.method public a(Lc/e/a/a/j/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/b/a;->l:Lc/e/a/a/j/b/c;

    .line 2
    invoke-virtual {p1}, Lc/e/a/a/j/b/c;->a()[I

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/b/a;->m:[I

    return-void
.end method

.method public final i()Lc/e/a/a/j/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/a;->l:Lc/e/a/a/j/b/c;

    return-object v0
.end method
