.class public final Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;
.super Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;
.source "AdRtmDataManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams<",
        "Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;",
        "Lcom/ebay/common/content/dm/AdRtmDataManager;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final uniquifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 910
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams$1;

    invoke-direct {v0}, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams$1;-><init>()V

    sput-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 879
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 873
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;-><init>()V

    .line 874
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/content/dm/AdRtmDataManager;
    .locals 2

    .line 885
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager;

    const-class v1, Lcom/ebay/common/content/dm/AdRtmDataManager$Observer;

    invoke-direct {v0, p1, v1, p0}, Lcom/ebay/common/content/dm/AdRtmDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/Class;Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;)V

    return-object v0
.end method

.method protected bridge synthetic createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/DataManager;
    .locals 0

    .line 868
    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;->createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/content/dm/AdRtmDataManager;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 901
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    check-cast p1, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;

    iget-object p1, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 891
    invoke-super {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 892
    iget-object v1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 907
    iget-object p2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$KeyParams;->uniquifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
