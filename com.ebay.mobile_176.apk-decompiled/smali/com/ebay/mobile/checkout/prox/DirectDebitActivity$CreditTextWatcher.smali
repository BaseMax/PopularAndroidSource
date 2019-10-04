.class Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$CreditTextWatcher;
.super Ljava/lang/Object;
.source "DirectDebitActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreditTextWatcher"
.end annotation


# instance fields
.field final baseColor:I

.field final errorColor:I

.field final watchedView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 2

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$CreditTextWatcher;->watchedView:Landroid/widget/EditText;

    .line 771
    invoke-virtual {p1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$CreditTextWatcher;->baseColor:I

    .line 772
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f040156

    const v1, 0x7f0601d9

    invoke-static {p1, v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$CreditTextWatcher;->errorColor:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
