.class public Lcom/webengage/sdk/android/actions/render/InAppNotificationData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/webengage/sdk/android/actions/render/InAppNotificationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lorg/a/c;

.field private experimentId:Ljava/lang/String;

.field private inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

.field private layoutId:Ljava/lang/String;

.field private render:Z

.field private variationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$1;

    invoke-direct {v0}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$1;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->render:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    :try_start_0
    new-instance v1, Lorg/a/c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->data:Lorg/a/c;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->experimentId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->layoutId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->variationId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->render:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/webengage/sdk/android/actions/render/InAppNotificationData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->render:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    new-instance v1, Lorg/a/c;

    invoke-direct {v1, p4}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    const-string p4, "status"

    invoke-virtual {v1, p4}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p4}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p4

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-virtual {p4, v3, v2}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "templateData"

    invoke-virtual {v1, p4}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p4

    iput-object p4, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->data:Lorg/a/c;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->experimentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->variationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->layoutId:Ljava/lang/String;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->data:Lorg/a/c;

    const-string p2, "layoutAttributes"

    invoke-virtual {p1, p2}, Lorg/a/c;->getJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/a/c;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/a/c;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->valueOf(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/a/b;

    const-string p2, "Notification Type is NUll"

    invoke-direct {p1, p2}, Lorg/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "success value found as false in notification response"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "status object not found in notification response"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InApp:experimentId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " variationId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " layoutId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->experimentId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getData()Lorg/a/c;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->data:Lorg/a/c;

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method protected getInAppType()Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    return-object v0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->layoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->variationId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->experimentId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setNotificationData(Lorg/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->data:Lorg/a/c;

    return-void
.end method

.method public setShouldRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->render:Z

    return-void
.end method

.method public shouldRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->render:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Object { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Experiment Id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Variation Id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Data : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getData()Lorg/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->data:Lorg/a/c;

    invoke-virtual {p2}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->experimentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->layoutId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->variationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->render:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->inAppType:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
