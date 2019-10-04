.class public final Lc/c/a/n/v/f;
.super Landroidx/fragment/app/Fragment;
.source "ScreenshotItemFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/v/f$a;
    }
.end annotation


# static fields
.field public static final Y:Lc/c/a/n/v/f$a;


# instance fields
.field public Z:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/v/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/v/f$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/v/f;->Y:Lc/c/a/n/v/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/v/f;->Z:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lc/c/a/f/y;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/y;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "screenshotItem"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    check-cast p2, Lcom/farsitel/bazaar/common/model/common/EntityScreenshotItem;

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const-string p2, "FragmentScreenshotItemBi\u2026ScreenshotItem)\n        }"

    .line 3
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    const-string p2, "FragmentScreenshotItemBi\u2026nshotItem)\n        }.root"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.farsitel.bazaar.common.model.common.EntityScreenshotItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/v/f;->La()V

    return-void
.end method
