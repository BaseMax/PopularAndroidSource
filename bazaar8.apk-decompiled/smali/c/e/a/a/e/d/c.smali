.class public final Lc/e/a/a/e/d/c;
.super Lc/e/a/a/e/c;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lc/e/a/a/e/d/e$a;


# direct methods
.method public constructor <init>(JJLc/e/a/a/e/m;)V
    .locals 7

    .line 1
    iget v5, p5, Lc/e/a/a/e/m;->m:I

    iget v6, p5, Lc/e/a/a/e/m;->j:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lc/e/a/a/e/c;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/e/c;->d(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
