.class public final Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;
.super Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;
.source "ShortFormEulaDataManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams<",
        "Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$Observer;",
        "Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final appVersion:Ljava/lang/String;

.field public final serviceVersion:Ljava/lang/String;

.field public final site:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 146
    iput-object p2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->appVersion:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->serviceVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;
    .locals 1

    .line 153
    new-instance v0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;

    invoke-direct {v0, p1, p0}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;)V

    return-object v0
.end method

.method public bridge synthetic createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/DataManager;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 163
    check-cast p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;

    .line 165
    iget-object v1, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->appVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->serviceVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->serviceVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 166
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/EbaySite;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->appVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->serviceVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbaySite;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Site:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/EbaySite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SFEulaVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->serviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AppVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/EbaySite;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    iget-object p2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$KeyParams;->serviceVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
