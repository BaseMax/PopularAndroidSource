.class public abstract Lc/e/a/a/j/c/a/k;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/c/a/k$d;,
        Lc/e/a/a/j/c/a/k$c;,
        Lc/e/a/a/j/c/a/k$b;,
        Lc/e/a/a/j/c/a/k$a;,
        Lc/e/a/a/j/c/a/k$e;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/j/c/a/h;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lc/e/a/a/j/c/a/h;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/c/a/k;->a:Lc/e/a/a/j/c/a/h;

    .line 3
    iput-wide p2, p0, Lc/e/a/a/j/c/a/k;->b:J

    .line 4
    iput-wide p4, p0, Lc/e/a/a/j/c/a/k;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 2
    iget-wide v0, p0, Lc/e/a/a/j/c/a/k;->c:J

    iget-wide v4, p0, Lc/e/a/a/j/c/a/k;->b:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lc/e/a/a/o/I;->c(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lc/e/a/a/j/c/a/j;)Lc/e/a/a/j/c/a/h;
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/a/j/c/a/k;->a:Lc/e/a/a/j/c/a/h;

    return-object p1
.end method
