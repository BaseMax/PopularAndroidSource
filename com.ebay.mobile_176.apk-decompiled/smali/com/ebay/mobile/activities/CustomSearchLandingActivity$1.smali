.class synthetic Lcom/ebay/mobile/activities/CustomSearchLandingActivity$1;
.super Ljava/lang/Object;
.source "CustomSearchLandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CustomSearchLandingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$nautilus$domain$data$experience$search$SearchType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 298
    invoke-static {}, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->values()[Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$search$SearchType:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$search$SearchType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->MY_GARAGE:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$search$SearchType:[I

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->DEALS:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
