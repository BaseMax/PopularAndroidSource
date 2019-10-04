.class public final Lc/e/a/a/j/c/i$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lc/e/a/a/j/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/j$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/a/j/c/i$a;-><init>(Lc/e/a/a/n/j$a;I)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/n/j$a;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/e/a/a/j/c/i$a;->a:Lc/e/a/a/n/j$a;

    .line 4
    iput p2, p0, Lc/e/a/a/j/c/i$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/n/x;Lc/e/a/a/j/c/a/b;I[ILc/e/a/a/l/n;IJZLjava/util/List;Lc/e/a/a/j/c/k$c;Lc/e/a/a/n/A;)Lc/e/a/a/j/c/c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/x;",
            "Lc/e/a/a/j/c/a/b;",
            "I[I",
            "Lc/e/a/a/l/n;",
            "IJZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lc/e/a/a/j/c/k$c;",
            "Lc/e/a/a/n/A;",
            ")",
            "Lc/e/a/a/j/c/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    .line 1
    iget-object v2, v0, Lc/e/a/a/j/c/i$a;->a:Lc/e/a/a/n/j$a;

    invoke-interface {v2}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object v10

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v10, v1}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    .line 3
    :cond_0
    new-instance v1, Lc/e/a/a/j/c/i;

    iget v13, v0, Lc/e/a/a/j/c/i$a;->b:I

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v11, p7

    move/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lc/e/a/a/j/c/i;-><init>(Lc/e/a/a/n/x;Lc/e/a/a/j/c/a/b;I[ILc/e/a/a/l/n;ILc/e/a/a/n/j;JIZLjava/util/List;Lc/e/a/a/j/c/k$c;)V

    return-object v1
.end method
