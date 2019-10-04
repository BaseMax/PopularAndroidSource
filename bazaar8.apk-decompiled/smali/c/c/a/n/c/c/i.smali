.class public final Lc/c/a/n/c/c/i;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/common/model/page/PageItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/c/i;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/page/PageItem;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/i;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageItem;->getPageViewConfigItem()Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/n;->a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/PageItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/i;->a(Lcom/farsitel/bazaar/common/model/page/PageItem;)V

    return-void
.end method
