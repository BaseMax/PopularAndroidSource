.class Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "PlBasicFeeCalculationLineViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "plBasicUserRateObserver"
.end annotation


# instance fields
.field private styledThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

.field final synthetic this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->styledThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;-><init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->setStyledThemeData(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)V

    return-void
.end method

.method private setStyledThemeData(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->styledThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 76
    instance-of p1, p1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->styledThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;

    iget-object p1, p1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->title:Landroidx/databinding/ObservableField;

    iget-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->this$0:Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;

    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel$plBasicUserRateObserver;->styledThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    invoke-static {p2, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;->access$200(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicFeeCalculationLineViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
