.class public final Lc/c/a/n/t/d;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Lc/c/a/n/c/d/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/n/c/d/m<",
        "Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/profile/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/t/d;->a:Lcom/farsitel/bazaar/ui/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/t/d;->a(Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/t/d;->a:Lcom/farsitel/bazaar/ui/profile/ProfileFragment;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->a(Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;)V

    return-void
.end method
