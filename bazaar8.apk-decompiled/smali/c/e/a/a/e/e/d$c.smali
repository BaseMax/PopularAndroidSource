.class public final Lc/e/a/a/e/e/d$c;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:[Lc/e/a/a/e/e/o;

.field public b:Lcom/google/android/exoplayer2/Format;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lc/e/a/a/e/e/o;

    iput-object p1, p0, Lc/e/a/a/e/e/d$c;->a:[Lc/e/a/a/e/e/o;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lc/e/a/a/e/e/d$c;->d:I

    return-void
.end method
