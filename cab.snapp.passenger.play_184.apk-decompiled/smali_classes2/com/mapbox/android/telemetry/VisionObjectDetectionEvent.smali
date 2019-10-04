.class public Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;
.super Lcom/mapbox/android/telemetry/Event;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "event"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "created"
    .end annotation
.end field

.field private c:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "object_lat"
    .end annotation
.end field

.field private d:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "object_lon"
    .end annotation
.end field

.field private e:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "vehicle_lat"
    .end annotation
.end field

.field private f:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "vehicle_lon"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "class"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "sign_value"
    .end annotation
.end field

.field private i:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "object_size_width"
    .end annotation
.end field

.field private j:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "object_size_height"
    .end annotation
.end field

.field private k:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "object_pos_height"
    .end annotation
.end field

.field private l:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "distance_from_camera"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent$1;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent$1;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->b:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->c:Ljava/lang/Double;

    .line 153
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->d:Ljava/lang/Double;

    .line 154
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->e:Ljava/lang/Double;

    .line 155
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->f:Ljava/lang/Double;

    .line 156
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->b(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->g:Ljava/lang/String;

    .line 157
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->b(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->h:Ljava/lang/String;

    .line 158
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->i:Ljava/lang/Double;

    .line 159
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->j:Ljava/lang/Double;

    .line 160
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->k:Ljava/lang/Double;

    .line 161
    invoke-static {p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->l:Ljava/lang/Double;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    const-string v0, "vision.objectDetection"

    .line 42
    iput-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->c:Ljava/lang/Double;

    .line 45
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->d:Ljava/lang/Double;

    .line 46
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->e:Ljava/lang/Double;

    .line 47
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->f:Ljava/lang/Double;

    .line 48
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->g:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->h:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->j:Ljava/lang/Double;

    .line 51
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->i:Ljava/lang/Double;

    .line 52
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->k:Ljava/lang/Double;

    .line 53
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->l:Ljava/lang/Double;

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Ljava/lang/Double;
    .locals 2

    .line 201
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/os/Parcel;Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    .line 187
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    .line 194
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClazz()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDistanceFromCamera()D
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->l:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectLatitude()D
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getObjectLongitude()D
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->d:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getObjectPositionHeight()D
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->k:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getObjectSizeHeight()D
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getObjectSizeWidth()D
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->i:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSignValue()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleLatitude()D
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVehicleLongitude()D
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->f:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method obtainType()Lcom/mapbox/android/telemetry/Event$Type;
    .locals 1

    .line 146
    sget-object v0, Lcom/mapbox/android/telemetry/Event$Type;->VIS_OBJ_DETECTION:Lcom/mapbox/android/telemetry/Event$Type;

    return-object v0
.end method

.method public setClazz(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->g:Ljava/lang/String;

    return-void
.end method

.method public setDistanceFromCamera(D)V
    .locals 0

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->l:Ljava/lang/Double;

    return-void
.end method

.method public setObjectLatitude(D)V
    .locals 0

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->c:Ljava/lang/Double;

    return-void
.end method

.method public setObjectLongitude(D)V
    .locals 0

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->d:Ljava/lang/Double;

    return-void
.end method

.method public setObjectPositionHeight(D)V
    .locals 0

    .line 133
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->k:Ljava/lang/Double;

    return-void
.end method

.method public setObjectSizeHeight(D)V
    .locals 0

    .line 125
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->j:Ljava/lang/Double;

    return-void
.end method

.method public setObjectSizeWidth(D)V
    .locals 0

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->i:Ljava/lang/Double;

    return-void
.end method

.method public setSignValue(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->h:Ljava/lang/String;

    return-void
.end method

.method public setVehicleLatitude(D)V
    .locals 0

    .line 85
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->e:Ljava/lang/Double;

    return-void
.end method

.method public setVehicleLongitude(D)V
    .locals 0

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->f:Ljava/lang/Double;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 171
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->c:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 175
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->d:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 176
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->e:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 177
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->f:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 178
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 179
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->h:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->i:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 181
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->j:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 182
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->k:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    .line 183
    iget-object p2, p0, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->l:Ljava/lang/Double;

    invoke-static {p1, p2}, Lcom/mapbox/android/telemetry/VisionObjectDetectionEvent;->a(Landroid/os/Parcel;Ljava/lang/Double;)V

    return-void
.end method
