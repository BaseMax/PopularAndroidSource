.class public final synthetic Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$DQc4OnB1lDlYCOYuypviQZJtLk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

.field private final synthetic f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$DQc4OnB1lDlYCOYuypviQZJtLk0;->f$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$DQc4OnB1lDlYCOYuypviQZJtLk0;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$DQc4OnB1lDlYCOYuypviQZJtLk0;->f$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$DQc4OnB1lDlYCOYuypviQZJtLk0;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->lambda$renderBranding$3(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;Landroid/view/View;)V

    return-void
.end method
