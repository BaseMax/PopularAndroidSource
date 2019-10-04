.class public Landroidx/databinding/ViewDataBinding$g;
.super Lb/l/s$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/s$a;",
        "Landroidx/databinding/ViewDataBinding$d<",
        "Lb/l/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/databinding/ViewDataBinding$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$f<",
            "Lb/l/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/l/s$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$f;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$f;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$d;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->a:Landroidx/databinding/ViewDataBinding$f;

    return-void
.end method


# virtual methods
.method public a()Landroidx/databinding/ViewDataBinding$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$f<",
            "Lb/l/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$g;->a:Landroidx/databinding/ViewDataBinding$f;

    return-object v0
.end method

.method public a(Lb/l/s;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lb/l/s;->a(Lb/l/s$a;)V

    return-void
.end method

.method public a(Lb/r/k;)V
    .locals 0

    return-void
.end method

.method public b(Lb/l/s;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lb/l/s;->b(Lb/l/s$a;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/l/s;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$g;->b(Lb/l/s;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/l/s;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$g;->a(Lb/l/s;)V

    return-void
.end method
