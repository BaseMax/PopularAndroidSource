.class public final Lc/e/a/a/e/h/G;
.super Lc/e/a/a/e/a;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/h/G$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/e/a/a/o/F;JJI)V
    .locals 16

    .line 1
    new-instance v1, Lc/e/a/a/e/a$b;

    invoke-direct {v1}, Lc/e/a/a/e/a$b;-><init>()V

    new-instance v2, Lc/e/a/a/e/h/G$a;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Lc/e/a/a/e/h/G$a;-><init>(ILc/e/a/a/o/F;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lc/e/a/a/e/a;-><init>(Lc/e/a/a/e/a$e;Lc/e/a/a/e/a$g;JJJJJJI)V

    return-void
.end method
