.class public Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData$1;

    invoke-direct {v0}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->a:I

    .line 47
    iput p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->b:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->a:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImage()I
    .locals 1

    .line 71
    iget v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->a:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 95
    iget v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->b:I

    return v0
.end method

.method public setImage(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->a:I

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 122
    iget p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
