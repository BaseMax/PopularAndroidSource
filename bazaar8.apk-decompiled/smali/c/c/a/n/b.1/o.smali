.class public final Lc/c/a/n/b/o;
.super Ljava/lang/Object;
.source "AppDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/b/d/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->zb()Lc/c/a/n/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/b/o;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageListURL"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;-><init>()V

    .line 2
    new-instance v1, Lc/c/a/n/v/e;

    new-instance v2, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-direct {v2, p1, p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;-><init>(ILjava/util/List;)V

    invoke-direct {v1, v2}, Lc/c/a/n/v/e;-><init>(Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;)V

    invoke-virtual {v1}, Lc/c/a/n/v/e;->b()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/b/o;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method
