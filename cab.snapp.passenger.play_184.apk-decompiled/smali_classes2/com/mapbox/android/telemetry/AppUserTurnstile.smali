.class public Lcom/mapbox/android/telemetry/AppUserTurnstile;
.super Lcom/mapbox/android/telemetry/Event;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mapbox/android/telemetry/AppUserTurnstile;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "enabled.telemetry"
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->a:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/mapbox/android/telemetry/AppUserTurnstile$1;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/AppUserTurnstile$1;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->e:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->f:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->g:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->h:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->i:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->j:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->k:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/mapbox/android/telemetry/AppUserTurnstile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/mapbox/android/telemetry/AppUserTurnstile;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    .line 1113
    sget-object p3, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    if-eqz p3, :cond_0

    const-string p3, "appUserTurnstile"

    .line 38
    iput-object p3, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->b:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/mapbox/android/telemetry/ak;->obtainCurrentDate()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->c:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/mapbox/android/telemetry/ak;->retrieveVendorId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->d:Ljava/lang/String;

    .line 41
    new-instance p3, Lcom/mapbox/android/telemetry/TelemetryEnabler;

    invoke-direct {p3}, Lcom/mapbox/android/telemetry/TelemetryEnabler;-><init>()V

    .line 42
    sget-object v0, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/mapbox/android/telemetry/TelemetryEnabler;->a()Lcom/mapbox/android/telemetry/TelemetryEnabler$State;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->e:Z

    .line 43
    sget-object p3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->f:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->g:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->h:Ljava/lang/String;

    .line 46
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->i:Ljava/lang/String;

    .line 47
    sget-object p1, Lcom/mapbox/android/telemetry/AppUserTurnstile;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->j:Ljava/lang/String;

    return-void

    .line 1114
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Create a MapboxTelemetry instance before calling this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->k:Ljava/lang/String;

    return-object v0
.end method

.method obtainType()Lcom/mapbox/android/telemetry/Event$Type;
    .locals 1

    .line 64
    sget-object v0, Lcom/mapbox/android/telemetry/Event$Type;->TURNSTILE:Lcom/mapbox/android/telemetry/Event$Type;

    return-object v0
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->k:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 87
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-boolean p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/mapbox/android/telemetry/AppUserTurnstile;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
