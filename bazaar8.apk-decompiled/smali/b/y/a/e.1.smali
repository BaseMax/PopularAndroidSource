.class public Lb/y/a/e;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/y/a/m;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lb/y/a/m;


# direct methods
.method public constructor <init>(Lb/y/a/m;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/y/a/e;->b:Lb/y/a/m;

    iput-object p2, p0, Lb/y/a/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lb/y/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/y/a/m$b;

    .line 2
    iget-object v2, p0, Lb/y/a/e;->b:Lb/y/a/m;

    iget-object v3, v1, Lb/y/a/m$b;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    iget v4, v1, Lb/y/a/m$b;->b:I

    iget v5, v1, Lb/y/a/m$b;->c:I

    iget v6, v1, Lb/y/a/m$b;->d:I

    iget v7, v1, Lb/y/a/m$b;->e:I

    invoke-virtual/range {v2 .. v7}, Lb/y/a/m;->b(Landroidx/recyclerview/widget/RecyclerView$w;IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/y/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lb/y/a/e;->b:Lb/y/a/m;

    iget-object v0, v0, Lb/y/a/m;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/y/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
