.class public final Lb/k/b/b;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lb/k/b/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/k/b/d$b<",
        "Lb/f/j<",
        "Lb/i/k/a/d;",
        ">;",
        "Lb/i/k/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/f/j;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/j<",
            "Lb/i/k/a/d;",
            ">;)I"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lb/f/j;->c()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lb/f/j;

    invoke-virtual {p0, p1}, Lb/k/b/b;->a(Lb/f/j;)I

    move-result p1

    return p1
.end method

.method public a(Lb/f/j;I)Lb/i/k/a/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/j<",
            "Lb/i/k/a/d;",
            ">;I)",
            "Lb/i/k/a/d;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1, p2}, Lb/f/j;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/i/k/a/d;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lb/f/j;

    invoke-virtual {p0, p1, p2}, Lb/k/b/b;->a(Lb/f/j;I)Lb/i/k/a/d;

    move-result-object p1

    return-object p1
.end method
