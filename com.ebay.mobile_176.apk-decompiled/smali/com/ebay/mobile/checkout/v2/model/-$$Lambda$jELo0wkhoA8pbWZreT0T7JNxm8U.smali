.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$jELo0wkhoA8pbWZreT0T7JNxm8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$jELo0wkhoA8pbWZreT0T7JNxm8U;->f$0:Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$jELo0wkhoA8pbWZreT0T7JNxm8U;->f$0:Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->performPopupMenuAction(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
