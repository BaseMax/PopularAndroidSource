.class public Lc/e/a/a/j/c/a/k$b;
.super Lc/e/a/a/j/c/a/k$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/a/h;",
            "JJJJ",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/k$d;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p10}, Lc/e/a/a/j/c/a/k$a;-><init>(Lc/e/a/a/j/c/a/h;JJJJLjava/util/List;)V

    .line 2
    iput-object p11, p0, Lc/e/a/a/j/c/a/k$b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 0

    .line 2
    iget-object p1, p0, Lc/e/a/a/j/c/a/k$b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public a(Lc/e/a/a/j/c/a/j;J)Lc/e/a/a/j/c/a/h;
    .locals 2

    .line 1
    iget-object p1, p0, Lc/e/a/a/j/c/a/k$b;->g:Ljava/util/List;

    iget-wide v0, p0, Lc/e/a/a/j/c/a/k$a;->d:J

    sub-long/2addr p2, v0

    long-to-int p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/j/c/a/h;

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
