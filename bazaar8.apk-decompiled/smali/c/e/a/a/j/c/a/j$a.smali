.class public Lc/e/a/a/j/c/a/j$a;
.super Lc/e/a/a/j/c/a/j;
.source "Representation.java"

# interfaces
.implements Lc/e/a/a/j/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final g:Lc/e/a/a/j/c/a/k$a;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lc/e/a/a/j/c/a/k$a;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lc/e/a/a/j/c/a/k$a;",
            "Ljava/util/List<",
            "Lc/e/a/a/j/c/a/d;",
            ">;)V"
        }
    .end annotation

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
    iput-object p5, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/j/c/a/k$a;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JJ)J
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/e/a/a/j/c/a/k$a;->a(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    invoke-virtual {v0}, Lc/e/a/a/j/c/a/k$a;->c()Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    invoke-virtual {v0}, Lc/e/a/a/j/c/a/k$a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JJ)J
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/e/a/a/j/c/a/k$a;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(J)Lc/e/a/a/j/c/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    invoke-virtual {v0, p0, p1, p2}, Lc/e/a/a/j/c/a/k$a;->a(Lc/e/a/a/j/c/a/j;J)Lc/e/a/a/j/c/a/h;

    move-result-object p1

    return-object p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/a/j$a;->g:Lc/e/a/a/j/c/a/k$a;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/j/c/a/k$a;->a(J)I

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lc/e/a/a/j/c/g;
    .locals 0

    return-object p0
.end method

.method public e()Lc/e/a/a/j/c/a/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
