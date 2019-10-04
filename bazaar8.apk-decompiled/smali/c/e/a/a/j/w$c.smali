.class public final Lc/e/a/a/j/w$c;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/j/w$c;->a:I

    .line 3
    iput p2, p0, Lc/e/a/a/j/w$c;->b:I

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/w$c;->c:Lcom/google/android/exoplayer2/Format;

    .line 5
    iput p4, p0, Lc/e/a/a/j/w$c;->d:I

    .line 6
    iput-object p5, p0, Lc/e/a/a/j/w$c;->e:Ljava/lang/Object;

    .line 7
    iput-wide p6, p0, Lc/e/a/a/j/w$c;->f:J

    .line 8
    iput-wide p8, p0, Lc/e/a/a/j/w$c;->g:J

    return-void
.end method
