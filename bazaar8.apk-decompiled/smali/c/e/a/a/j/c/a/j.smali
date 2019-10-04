.class public abstract Lc/e/a/a/j/c/a/j;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/c/a/j$a;,
        Lc/e/a/a/j/c/a/j$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/Format;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lc/e/a/a/j/c/a/h;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lc/e/a/a/j/c/a/k;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lc/e/a/a/j/c/a/j;->a:J

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/c/a/j;->b:Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/c/a/j;->c:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lc/e/a/a/j/c/a/j;->e:Ljava/util/List;

    .line 8
    invoke-virtual {p5, p0}, Lc/e/a/a/j/c/a/k;->a(Lc/e/a/a/j/c/a/j;)Lc/e/a/a/j/c/a/h;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/c/a/j;->f:Lc/e/a/a/j/c/a/h;

    .line 9
    invoke-virtual {p5}, Lc/e/a/a/j/c/a/k;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/a/j/c/a/j;->d:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;Lc/e/a/a/j/c/a/i;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lc/e/a/a/j/c/a/j;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;)V

    return-void
.end method

.method public static a(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;)Lc/e/a/a/j/c/a/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lc/e/a/a/j/c/a/k;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)",
            "Lc/e/a/a/j/c/a/j;"
        }
    .end annotation

    const/4 v6, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lc/e/a/a/j/c/a/j;->a(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;Ljava/lang/String;)Lc/e/a/a/j/c/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k;Ljava/util/List;Ljava/lang/String;)Lc/e/a/a/j/c/a/j;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lc/e/a/a/j/c/a/k;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lc/e/a/a/j/c/a/j;"
        }
    .end annotation

    move-object/from16 v0, p4

    .line 2
    instance-of v1, v0, Lc/e/a/a/j/c/a/k$e;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lc/e/a/a/j/c/a/j$b;

    move-object v7, v0

    check-cast v7, Lc/e/a/a/j/c/a/k$e;

    const-wide/16 v10, -0x1

    move-object v2, v1

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v11}, Lc/e/a/a/j/c/a/j$b;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k$e;Ljava/util/List;Ljava/lang/String;J)V

    return-object v1

    .line 4
    :cond_0
    instance-of v1, v0, Lc/e/a/a/j/c/a/k$a;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lc/e/a/a/j/c/a/j$a;

    move-object v7, v0

    check-cast v7, Lc/e/a/a/j/c/a/k$a;

    move-object v2, v1

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lc/e/a/a/j/c/a/j$a;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k$a;Ljava/util/List;)V

    return-object v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lc/e/a/a/j/c/g;
.end method

.method public abstract e()Lc/e/a/a/j/c/a/h;
.end method

.method public f()Lc/e/a/a/j/c/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/j;->f:Lc/e/a/a/j/c/a/h;

    return-object v0
.end method
