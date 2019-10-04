.class public final Lc/c/a/n/v/d;
.super Ljava/lang/Object;
.source "ScreenshotFragment.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

.field public final synthetic b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/v/d;->a:Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    iput-object p2, p0, Lc/c/a/n/v/d;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/v/d;->a:Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    iget-object v1, p0, Lc/c/a/n/v/d;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->a(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;II)V

    return-void
.end method
