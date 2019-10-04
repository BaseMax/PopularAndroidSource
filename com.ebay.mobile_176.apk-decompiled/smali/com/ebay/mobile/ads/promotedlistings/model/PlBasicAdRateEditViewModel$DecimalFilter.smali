.class Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;
.super Ljava/lang/Object;
.source "PlBasicAdRateEditViewModel.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecimalFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;-><init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    iget-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    iget-object p3, p3, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->adRateValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 139
    iget-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;

    iget-object p3, p3, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->adRateValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;->getDecimalPrecision()I

    move-result p3

    const-string p4, "."

    .line 141
    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    const/4 p5, -0x1

    if-le p4, p5, :cond_0

    .line 144
    invoke-virtual {p2, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, p3, :cond_0

    const-string p2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    return-object p1

    :catch_0
    return-object p1
.end method
