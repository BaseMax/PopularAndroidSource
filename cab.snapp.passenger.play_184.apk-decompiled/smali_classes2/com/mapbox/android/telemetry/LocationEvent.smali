.class public Lcom/mapbox/android/telemetry/LocationEvent;
.super Lcom/mapbox/android/telemetry/Event;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/android/telemetry/LocationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "event"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "created"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "source"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "sessionId"
    .end annotation
.end field

.field private final f:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lat"
    .end annotation
.end field

.field private final g:D
    .annotation runtime Lcom/google/gson/a/c;
        value = "lng"
    .end annotation
.end field

.field private h:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/a/c;
        value = "altitude"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "operatingSystem"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "applicationState"
    .end annotation
.end field

.field private k:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/a/c;
        value = "horizontalAccuracy"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapbox/android/telemetry/LocationEvent;->a:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/mapbox/android/telemetry/LocationEvent$1;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/LocationEvent$1;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/LocationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->h:Ljava/lang/Double;

    .line 33
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->k:Ljava/lang/Float;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->d:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->e:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->f:D

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->g:D

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->h:Ljava/lang/Double;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->i:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->j:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->k:Ljava/lang/Float;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/LocationEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->h:Ljava/lang/Double;

    .line 33
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->k:Ljava/lang/Float;

    const-string v0, "location"

    .line 37
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->b:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/mapbox/android/telemetry/ak;->obtainCurrentDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->c:Ljava/lang/String;

    const-string v0, "mapbox"

    .line 39
    iput-object v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->d:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->e:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->f:D

    .line 42
    iput-wide p4, p0, Lcom/mapbox/android/telemetry/LocationEvent;->g:D

    .line 43
    sget-object p1, Lcom/mapbox/android/telemetry/LocationEvent;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->i:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/mapbox/android/telemetry/LocationEvent;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method obtainType()Lcom/mapbox/android/telemetry/Event$Type;
    .locals 1

    .line 49
    sget-object v0, Lcom/mapbox/android/telemetry/Event$Type;->LOCATION:Lcom/mapbox/android/telemetry/Event$Type;

    return-object v0
.end method

.method public setAccuracy(Ljava/lang/Float;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->k:Ljava/lang/Float;

    return-void
.end method

.method public setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mapbox/android/telemetry/LocationEvent;->h:Ljava/lang/Double;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 108
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-wide v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 113
    iget-wide v0, p0, Lcom/mapbox/android/telemetry/LocationEvent;->g:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 114
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->h:Ljava/lang/Double;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 118
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->h:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 120
    :goto_0
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->k:Ljava/lang/Float;

    if-nez p2, :cond_1

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    .line 125
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-object p2, p0, Lcom/mapbox/android/telemetry/LocationEvent;->k:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
