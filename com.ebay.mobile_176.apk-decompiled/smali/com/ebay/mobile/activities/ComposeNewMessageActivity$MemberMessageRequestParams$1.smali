.class final Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams$1;
.super Ljava/lang/Object;
.source "ComposeNewMessageActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 1

    .line 973
    new-instance v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-direct {v0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 969
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 979
    new-array p1, p1, [Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 969
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams$1;->newArray(I)[Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    move-result-object p1

    return-object p1
.end method
