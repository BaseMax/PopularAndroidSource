.class public Landroidx/databinding/ViewDataBinding$c;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Lb/r/u;
.implements Landroidx/databinding/ViewDataBinding$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/r/u;",
        "Landroidx/databinding/ViewDataBinding$d<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/databinding/ViewDataBinding$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$f<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:Lb/r/k;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$f;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$f;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$d;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$c;->a:Landroidx/databinding/ViewDataBinding$f;

    return-void
.end method


# virtual methods
.method public a()Landroidx/databinding/ViewDataBinding$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$f<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$c;->a:Landroidx/databinding/ViewDataBinding$f;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$c;->b:Lb/r/k;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    :cond_0
    return-void
.end method

.method public a(Lb/r/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$c;->a:Landroidx/databinding/ViewDataBinding$f;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$c;->b:Lb/r/k;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Lb/r/u;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 5
    :cond_1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$c;->b:Lb/r/k;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 9
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$c;->a:Landroidx/databinding/ViewDataBinding$f;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding$f;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$c;->a:Landroidx/databinding/ViewDataBinding$f;

    iget v1, v0, Landroidx/databinding/ViewDataBinding$f;->b:I

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$f;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->a(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->b(Lb/r/u;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$c;->b(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$c;->a(Landroidx/lifecycle/LiveData;)V

    return-void
.end method
