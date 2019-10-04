.class public final synthetic Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

.field private final synthetic f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;ILcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iput p3, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$2:I

    iput-object p4, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$3:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iget v2, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$2:I

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CheckoutActivity$zIGISi3X5DXdZa-p0vnQFT4CTYk;->f$3:Lcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->lambda$renderLineItem$2(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;ILcom/ebay/nautilus/domain/data/experience/checkout/details/LineItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
