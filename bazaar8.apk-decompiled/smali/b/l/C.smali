.class public final Lb/l/C;
.super Lb/l/c$a;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/c$a<",
        "Lb/l/v;",
        "Landroidx/databinding/ViewDataBinding;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/l/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/l/v;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V
    .locals 0

    const/4 p4, 0x1

    if-eq p3, p4, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    const/4 p4, 0x3

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lb/l/v;->a(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1, p2}, Lb/l/v;->b(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1, p2}, Lb/l/v;->c(Landroidx/databinding/ViewDataBinding;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    invoke-static {p2, p4}, Landroidx/databinding/ViewDataBinding;->a(Landroidx/databinding/ViewDataBinding;Z)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/l/v;

    check-cast p2, Landroidx/databinding/ViewDataBinding;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/l/C;->a(Lb/l/v;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V

    return-void
.end method
