.class Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$1;
.super Ljava/lang/Object;
.source "ChangeCartItemQuantityActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->createUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x42

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 95
    :goto_0
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;

    invoke-static {p3, p1}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;Z)V

    return p2
.end method
