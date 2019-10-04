.class public Lcom/apptentive/android/sdk/util/image/ImageItem;
.super Ljava/lang/Object;
.source "ImageItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public localCachePath:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public originalPath:Ljava/lang/String;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/apptentive/android/sdk/util/image/ImageItem$1;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/util/image/ImageItem$1;-><init>()V

    sput-object v0, Lcom/apptentive/android/sdk/util/image/ImageItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 73
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 74
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    const/4 p1, 0x2

    .line 75
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    const/4 p1, 0x3

    .line 76
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->time:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/apptentive/android/sdk/util/image/ImageItem$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/util/image/ImageItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->time:J

    .line 33
    iput-object p3, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "original"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    const-string v0, "local_path"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    const-string v0, "mimeType"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    const-string/jumbo v0, "time"

    const-wide/16 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->time:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 60
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/apptentive/android/sdk/util/image/ImageItem;

    .line 61
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 65
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "original"

    .line 47
    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "local_path"

    .line 48
    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mimeType"

    .line 49
    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "time"

    .line 50
    iget-wide v2, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->time:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 52
    :goto_0
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x4

    .line 87
    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->originalPath:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->localCachePath:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->mimeType:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    iget-wide v0, p0, Lcom/apptentive/android/sdk/util/image/ImageItem;->time:J

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
