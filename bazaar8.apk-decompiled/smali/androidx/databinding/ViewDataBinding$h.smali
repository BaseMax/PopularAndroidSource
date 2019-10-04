.class public Landroidx/databinding/ViewDataBinding$h;
.super Lb/l/j$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/j$a;",
        "Landroidx/databinding/ViewDataBinding$d<",
        "Lb/l/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/databinding/ViewDataBinding$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$f<",
            "Lb/l/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/l/j$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$f;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$f;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$d;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$f;

    return-void
.end method


# virtual methods
.method public a()Landroidx/databinding/ViewDataBinding$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$f<",
            "Lb/l/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$f;

    return-object v0
.end method

.method public a(Lb/l/j;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lb/l/j;->a(Lb/l/j$a;)V

    return-void
.end method

.method public a(Lb/l/j;I)V
    .locals 2

    .line 3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$f;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$f;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$f;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding$f;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/l/j;

    if-eq v1, p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$h;->a:Landroidx/databinding/ViewDataBinding$f;

    iget v1, v1, Landroidx/databinding/ViewDataBinding$f;->b:I

    invoke-static {v0, v1, p1, p2}, Landroidx/databinding/ViewDataBinding;->a(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    return-void
.end method

.method public a(Lb/r/k;)V
    .locals 0

    return-void
.end method

.method public b(Lb/l/j;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lb/l/j;->b(Lb/l/j$a;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/l/j;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$h;->b(Lb/l/j;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/l/j;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$h;->a(Lb/l/j;)V

    return-void
.end method
