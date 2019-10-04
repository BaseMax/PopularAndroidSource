.class public final Lc/e/a/a/e/i/d$a;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/e/i/d$a;->a:I

    .line 3
    iput-wide p2, p0, Lc/e/a/a/e/i/d$a;->b:J

    return-void
.end method

.method public static a(Lc/e/a/a/e/h;Lc/e/a/a/o/v;)Lc/e/a/a/e/i/d$a;
    .locals 3

    .line 1
    iget-object v0, p1, Lc/e/a/a/o/v;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Lc/e/a/a/e/h;->a([BII)V

    .line 2
    invoke-virtual {p1, v1}, Lc/e/a/a/o/v;->e(I)V

    .line 3
    invoke-virtual {p1}, Lc/e/a/a/o/v;->i()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lc/e/a/a/o/v;->n()J

    move-result-wide v0

    .line 5
    new-instance p1, Lc/e/a/a/e/i/d$a;

    invoke-direct {p1, p0, v0, v1}, Lc/e/a/a/e/i/d$a;-><init>(IJ)V

    return-object p1
.end method
