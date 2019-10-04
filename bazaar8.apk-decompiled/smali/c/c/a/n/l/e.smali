.class public final Lc/c/a/n/l/e;
.super Ljava/lang/Object;
.source "FehrestFragmentContainer.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/l/e;->a:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/l/e;->a:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->h()Z

    return-void
.end method
