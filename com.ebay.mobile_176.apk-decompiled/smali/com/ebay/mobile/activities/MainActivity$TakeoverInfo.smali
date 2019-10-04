.class final Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TakeoverInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public haveActiveTakeover:Z

.field public primaryColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public secondaryColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1021
    new-instance v0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo$1;

    invoke-direct {v0}, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1002
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->haveActiveTakeover:Z

    const/4 v0, -0x1

    .line 1003
    iput v0, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->primaryColor:I

    .line 1004
    iput v0, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->secondaryColor:I

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->haveActiveTakeover:Z

    .line 996
    iput p2, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->primaryColor:I

    .line 997
    iput p3, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->secondaryColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1016
    iget p2, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->primaryColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    iget p2, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->secondaryColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    iget-boolean p2, p0, Lcom/ebay/mobile/activities/MainActivity$TakeoverInfo;->haveActiveTakeover:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
