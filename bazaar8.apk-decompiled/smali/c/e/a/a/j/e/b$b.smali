.class public final Lc/e/a/a/j/e/b$b;
.super Lc/e/a/a/j/b/b;
.source "DefaultSsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final d:Lc/e/a/a/j/e/a/a$b;

.field public final e:I


# direct methods
.method public constructor <init>(Lc/e/a/a/j/e/a/a$b;II)V
    .locals 4

    int-to-long v0, p3

    .line 1
    iget p3, p1, Lc/e/a/a/j/e/a/a$b;->k:I

    add-int/lit8 p3, p3, -0x1

    int-to-long v2, p3

    invoke-direct {p0, v0, v1, v2, v3}, Lc/e/a/a/j/b/b;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/e/b$b;->d:Lc/e/a/a/j/e/a/a$b;

    .line 3
    iput p2, p0, Lc/e/a/a/j/e/b$b;->e:I

    return-void
.end method
