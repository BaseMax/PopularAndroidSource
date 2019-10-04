.class public Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAB:I = 0x1

.field public static final CHARGE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOOD:I = 0x6

.field public static final HOTEL:I = 0x7

.field public static final MALL:I = 0x5

.field public static final TRIP:I = 0x2


# instance fields
.field private appmetricaTrackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "track_id"
    .end annotation
.end field

.field private badgeBackgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "badge_background_color"
    .end annotation
.end field

.field private badgeText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "badge_text"
    .end annotation
.end field

.field private badgeTextColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "badge_text_color"
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "icon"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private isActive:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "status"
    .end annotation
.end field

.field private isTopBarHidden:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "top_bar_hidden"
    .end annotation
.end field

.field private meta:Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;
    .annotation runtime Lcom/google/gson/a/c;
        value = "meta"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field

.field private referralLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "referral_link"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->id:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->name:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->iconUrl:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->referralLink:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->appmetricaTrackId:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isTopBarHidden:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeBackgroundColor:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeTextColor:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeText:Ljava/lang/String;

    .line 165
    const-class v0, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;

    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->meta:Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppmetricaTrackId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->appmetricaTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeText:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeTextColor()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 48
    iget v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->id:I

    return v0
.end method

.method public getMeta()Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;
    .locals 1

    .line 127
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->meta:Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralLink()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->referralLink:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive:Z

    return v0
.end method

.method public isTopBarHidden()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isTopBarHidden:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive:Z

    return-void
.end method

.method public setAppmetricaTrackId(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->appmetricaTrackId:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->id:I

    return-void
.end method

.method public setMeta(Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->meta:Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setReferralLink(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->referralLink:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 141
    iget v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->referralLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->appmetricaTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isTopBarHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 148
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeBackgroundColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeTextColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->badgeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->meta:Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
