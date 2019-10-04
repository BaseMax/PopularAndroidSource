.class public abstract Lc/e/a/a/j/b/b;
.super Ljava/lang/Object;
.source "BaseMediaChunkIterator.java"

# interfaces
.implements Lc/e/a/a/j/b/n;


# instance fields
.field public final a:J

.field public final b:J

.field public c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lc/e/a/a/j/b/b;->a:J

    .line 3
    iput-wide p3, p0, Lc/e/a/a/j/b/b;->b:J

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/j/b/b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/b/b;->a:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc/e/a/a/j/b/b;->c:J

    return-void
.end method
