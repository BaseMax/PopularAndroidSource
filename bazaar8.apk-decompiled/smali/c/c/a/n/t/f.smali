.class public final Lc/c/a/n/t/f;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/farsitel/bazaar/common/model/user/User;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/profile/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/t/f;->a:Lcom/farsitel/bazaar/ui/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/user/User;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lc/c/a/n/t/f;->a:Lcom/farsitel/bazaar/ui/profile/ProfileFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->a(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)Lc/c/a/n/t/h;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/t/f;->a:Lcom/farsitel/bazaar/ui/profile/ProfileFragment;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Za()Lcom/farsitel/bazaar/data/entity/None;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/n/c/d/g;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/user/User;

    invoke-virtual {p0, p1}, Lc/c/a/n/t/f;->a(Lcom/farsitel/bazaar/common/model/user/User;)V

    return-void
.end method
