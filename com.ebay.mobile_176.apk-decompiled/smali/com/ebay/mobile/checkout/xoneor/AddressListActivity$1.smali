.class Lcom/ebay/mobile/checkout/xoneor/AddressListActivity$1;
.super Ljava/lang/Object;
.source "AddressListActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->handleOverflowMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;Landroid/view/View;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/AddressListActivity;Landroid/view/View;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
