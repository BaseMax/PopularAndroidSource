.class public Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "AddressChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_ADDRESS_RECOMMENDATIONS:Ljava/lang/String; = "addressRecommendations"

.field public static final EXTRA_SELECTED_RECOMMENDATION:Ljava/lang/String; = "selectedRecommendation"


# instance fields
.field private inputItem:Landroid/view/ViewGroup;

.field private recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

.field private recommendedItem:Landroid/view/ViewGroup;

.field private selectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    return-void
.end method

.method private getSpannableFromTextSpanList(Ljava/util/List;Landroid/content/res/Resources;)Landroid/text/Spannable;
    .locals 3
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;",
            ">;>;",
            "Landroid/content/res/Resources;",
            ")",
            "Landroid/text/Spannable;"
        }
    .end annotation

    const-string/jumbo v0, "resources must not be null"

    .line 187
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 188
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {p0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "\n"

    .line 198
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_5

    return-object v0

    :cond_5
    return-object p2

    :cond_6
    :goto_1
    return-object p2
.end method

.method private populateAddress(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;Z)V
    .locals 2

    const v0, 0x7f0a0c8f

    .line 129
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->renderAddressLines(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;)V

    const v0, 0x7f0a008a

    .line 135
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0a00a8

    .line 141
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setSaveEnabled(Z)V

    .line 143
    invoke-virtual {p3, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 146
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private renderAddressLines(Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;)V
    .locals 1

    const v0, 0x7f0a0090

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 168
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;->addressLines:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->getSpannableFromTextSpanList(Ljava/util/List;Landroid/content/res/Resources;)Landroid/text/Spannable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private renderScreen()V
    .locals 8

    const v0, 0x7f0a009b

    .line 96
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "layout_inflater"

    .line 97
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 98
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v2, 0x7f0d00b7

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendedItem:Landroid/view/ViewGroup;

    .line 102
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendedItem:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;->recommendedAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;

    iget v6, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    const/4 v7, 0x1

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->populateAddress(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;Z)V

    .line 105
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->inputItem:Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->inputItem:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;->inputAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;

    iget v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    if-ne v4, v7, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->populateAddress(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;Z)V

    const v0, 0x7f0a008c

    .line 109
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;->actions:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;->actions:Ljava/util/Map;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->USE_THIS_ADDRESS:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    .line 113
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 114
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity$1;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChangeChangeShippingAddress"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendedItem:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->inputItem:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendedItem:Landroid/view/ViewGroup;

    :goto_0
    const v1, 0x7f0a00a8

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendedItem:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00b3

    .line 50
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selectedIndex"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "addressRecommendations"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    if-eqz p1, :cond_1

    .line 58
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    .line 61
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->renderScreen()V

    :cond_1
    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->legendText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->showBackButton()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "selectedIndex"

    .line 73
    iget v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method selectAddress()V
    .locals 4

    .line 153
    iget v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 156
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->selectedIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;->recommendedAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;->inputAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;

    .line 159
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "selectedRecommendation"

    .line 160
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/RecommendedAddress;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v1, v2}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;->finish()V

    return-void
.end method
