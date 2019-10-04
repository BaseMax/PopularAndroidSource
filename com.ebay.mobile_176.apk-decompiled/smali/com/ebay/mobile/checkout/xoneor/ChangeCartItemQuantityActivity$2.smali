.class Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$2;
.super Ljava/lang/Object;
.source "ChangeCartItemQuantityActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 100
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$2;->this$0:Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity$2;->this$0:Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/ChangeCartItemQuantityActivity;Z)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
