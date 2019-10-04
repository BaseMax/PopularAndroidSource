.class public final Lc/c/a/n/t/a/a;
.super Ljava/lang/Object;
.source "EditNickNameFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/t/a/a;->a:Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/t/a/a;->a:Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->i()Z

    .line 2
    iget-object p1, p0, Lc/c/a/n/t/a/a;->a:Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;->a(Lcom/farsitel/bazaar/ui/profile/nickname/EditNickNameFragment;)Lc/c/a/n/t/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/t/a/c;->e()V

    return-void
.end method
