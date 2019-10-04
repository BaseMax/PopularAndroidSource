.class Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;
.super Ljava/lang/Object;
.source "CheckoutActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewIntent"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field requestCode:I


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    .line 430
    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;-><init>(Landroid/content/Intent;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->intent:Landroid/content/Intent;

    .line 436
    iput p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$WebViewIntent;->requestCode:I

    return-void
.end method
