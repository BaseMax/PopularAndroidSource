.class public Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CreditCardHeaderViewModel.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CcOnPropertyChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;->this$0:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 246
    instance-of p2, p1, Landroidx/databinding/ObservableField;

    if-nez p2, :cond_0

    return-void

    .line 249
    :cond_0
    check-cast p1, Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    .line 250
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 252
    check-cast p1, Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 254
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;->this$0:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;

    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    invoke-static {p1, p2}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->access$000(Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard;->isValidCardNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 257
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->fromCardNumber(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;->from(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    move-result-object p1

    .line 259
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;->this$0:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;

    invoke-static {p2, p1}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->access$000(Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)V

    :cond_2
    :goto_0
    return-void
.end method
