.class public final Lc/e/a/a/k/h/g$b;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/k/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lc/e/a/a/k/h/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lc/e/a/a/k/h/d;


# direct methods
.method public constructor <init>(ILc/e/a/a/k/h/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc/e/a/a/k/h/g$b;->a:I

    .line 3
    iput-object p2, p0, Lc/e/a/a/k/h/g$b;->b:Lc/e/a/a/k/h/d;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/k/h/g$b;)I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/k/h/g$b;->a:I

    iget p1, p1, Lc/e/a/a/k/h/g$b;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/k/h/g$b;

    invoke-virtual {p0, p1}, Lc/e/a/a/k/h/g$b;->a(Lc/e/a/a/k/h/g$b;)I

    move-result p1

    return p1
.end method
