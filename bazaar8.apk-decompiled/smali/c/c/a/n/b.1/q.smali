.class public final Lc/c/a/n/b/q;
.super Ljava/lang/Object;
.source "AppDetailFragment.kt"

# interfaces
.implements Lc/c/a/n/c/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/n/c/d/m<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
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
    iput-object p1, p0, Lc/c/a/n/b/q;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/q;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    return-void
.end method
