.class public Lcom/mapbox/android/telemetry/CrashEvent;
.super Lcom/mapbox/android/telemetry/Event;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/Event;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mapbox/android/telemetry/CrashEvent;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/mapbox/android/telemetry/CrashEvent;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mapbox/android/telemetry/CrashEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mapbox/android/telemetry/CrashEvent;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/telemetry/CrashEvent;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/android/telemetry/CrashEvent;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method obtainType()Lcom/mapbox/android/telemetry/Event$Type;
    .locals 1

    .line 46
    sget-object v0, Lcom/mapbox/android/telemetry/Event$Type;->CRASH:Lcom/mapbox/android/telemetry/Event$Type;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
