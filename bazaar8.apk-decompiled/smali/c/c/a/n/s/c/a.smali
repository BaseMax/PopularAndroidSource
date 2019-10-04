.class public final Lc/c/a/n/s/c/a;
.super Landroid/text/style/ClickableSpan;
.source "GiftCardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->Ua()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/s/c/a;->a:Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "widget"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/c/a;->a:Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc/c/a/n/s/c/a;->a:Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;

    const v1, 0x7f1000e5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.gift_card_terms_link)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
