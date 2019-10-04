.class public Lb/k/b/c$a;
.super Lb/i/k/a/e;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/c;


# direct methods
.method public constructor <init>(Lb/k/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/k/b/c$a;->b:Lb/k/b/c;

    invoke-direct {p0}, Lb/i/k/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lb/i/k/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/k/b/c$a;->b:Lb/k/b/c;

    .line 2
    invoke-virtual {v0, p1}, Lb/k/b/c;->f(I)Lb/i/k/a/d;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lb/i/k/a/d;->a(Lb/i/k/a/d;)Lb/i/k/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lb/k/b/c$a;->b:Lb/k/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/k/b/c;->b(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public b(I)Lb/i/k/a/d;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lb/k/b/c$a;->b:Lb/k/b/c;

    iget p1, p1, Lb/k/b/c;->n:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/k/b/c$a;->b:Lb/k/b/c;

    iget p1, p1, Lb/k/b/c;->o:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lb/k/b/c$a;->a(I)Lb/i/k/a/d;

    move-result-object p1

    return-object p1
.end method
