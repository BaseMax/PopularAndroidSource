.class public final Lc/e/a/a/k/a/b;
.super Lc/e/a/a/k/b;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/a/k/b;",
        "Ljava/lang/Comparable<",
        "Lc/e/a/a/k/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lc/e/a/a/k/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 2
    iput p11, p0, Lc/e/a/a/k/a/b;->o:I

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/k/a/b;)I
    .locals 1

    .line 1
    iget p1, p1, Lc/e/a/a/k/a/b;->o:I

    iget v0, p0, Lc/e/a/a/k/a/b;->o:I

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/k/a/b;

    invoke-virtual {p0, p1}, Lc/e/a/a/k/a/b;->a(Lc/e/a/a/k/a/b;)I

    move-result p1

    return p1
.end method
