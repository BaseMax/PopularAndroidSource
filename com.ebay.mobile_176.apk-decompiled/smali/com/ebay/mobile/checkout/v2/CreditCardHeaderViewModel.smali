.class public Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;
.source "CreditCardHeaderViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;,
        Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;
    }
.end annotation


# static fields
.field public static final ALPHA_OPAQUE:I = 0xff

.field public static final ALPHA_PARTIALLY_TRANSPARENT:I = 0x50


# instance fields
.field public amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

.field private final ccOnPropertyChangedListener:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;

.field public cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

.field public discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

.field public grayscaleFilter:Landroid/graphics/ColorFilter;

.field public jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

.field public maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

.field public masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

.field public postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

.field public visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;Ljava/util/List;)V
    .locals 4
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d062c

    const/4 v1, 0x0

    const v2, 0x7f04045a

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V

    .line 35
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 36
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 37
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 38
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 39
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 40
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 41
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 42
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    .line 44
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;-><init>(Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->ccOnPropertyChangedListener:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;

    .line 50
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 52
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 54
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->updateIcons(Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)V

    .line 55
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->initForCardTypes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->updateIcons(Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)V

    return-void
.end method

.method private initForCardTypes(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    .line 64
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getIconType()Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v2, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$base$CommonIconType:[I

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    .line 79
    :pswitch_5
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    .line 74
    :pswitch_6
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    .line 69
    :pswitch_7
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-object v0, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->accessibilityText:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iput-boolean v2, v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isSupported:Z

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setUxColorFilter(Landroid/widget/ImageView;ZLandroid/graphics/ColorFilter;)V
    .locals 0
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxIconActive",
            "uxColorFilter"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method

.method private updateIcons(Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    sget-object v0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$base$CommonIconType:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 209
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 210
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 211
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 212
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 213
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 214
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 215
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 216
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto/16 :goto_0

    .line 199
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 200
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 201
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 202
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 203
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 204
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 205
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 206
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto/16 :goto_0

    .line 189
    :pswitch_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 190
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 191
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 192
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 193
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 194
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 195
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 196
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto/16 :goto_0

    .line 179
    :pswitch_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 180
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 181
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 182
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 183
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 184
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 185
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 186
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto/16 :goto_0

    .line 168
    :pswitch_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 169
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 170
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 171
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 172
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 173
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 174
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 175
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto/16 :goto_0

    .line 158
    :pswitch_4
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 159
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 160
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 161
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 162
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 163
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 164
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 165
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto/16 :goto_0

    .line 148
    :pswitch_5
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 149
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 150
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 151
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 152
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 153
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 154
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 155
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto :goto_0

    .line 137
    :pswitch_6
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 138
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 139
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 140
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 141
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 142
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 143
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 144
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto :goto_0

    .line 126
    :pswitch_7
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->visaIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 127
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->masterCardIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 128
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->amExIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 129
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->jcbIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 130
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->discoverIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 131
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->cupIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 132
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->maestroIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 133
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->postePayIcon:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;

    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$IconState;->isActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setCardNumberFieldObservable(Landroidx/databinding/BaseObservable;)V
    .locals 1
    .param p1    # Landroidx/databinding/BaseObservable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->ccOnPropertyChangedListener:Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel$CcOnPropertyChangedListener;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method
