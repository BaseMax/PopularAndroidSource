.class public final Lc/c/a/n/b/p;
.super Ljava/lang/Object;
.source "AppDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/b/d/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ab()Lc/c/a/n/b/p;
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
    iput-object p1, p0, Lc/c/a/n/b/p;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;)V
    .locals 12

    const-string v0, "videoScreenshot"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    .line 2
    iget-object v1, p0, Lc/c/a/n/b/p;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lc/c/a/n/b/p;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Za()Lc/c/a/n/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/c/a/n/b/s;->a()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;->getMainUrl()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string p1, "Uri.parse(this)"

    invoke-static {v5, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v9

    .line 7
    new-instance p1, Lc/c/a/l/f;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;ILh/f/b/f;)V

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;->a(Landroid/app/Activity;Lc/c/a/l/f;)V

    return-void
.end method
