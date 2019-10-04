.class public final Lc/e/a/a/j/y$d;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/o;

.field public final b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final c:[Z

.field public final d:[Z

.field public final e:[Z


# direct methods
.method public constructor <init>(Lc/e/a/a/e/o;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/y$d;->a:Lc/e/a/a/e/o;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/y$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/y$d;->c:[Z

    .line 5
    iget p1, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lc/e/a/a/j/y$d;->d:[Z

    .line 6
    new-array p1, p1, [Z

    iput-object p1, p0, Lc/e/a/a/j/y$d;->e:[Z

    return-void
.end method
