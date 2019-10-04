.class public Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/offline/OfflineRegionError$ErrorReason;
    }
.end annotation


# static fields
.field public static final REASON_CONNECTION:Ljava/lang/String; = "REASON_CONNECTION"

.field public static final REASON_NOT_FOUND:Ljava/lang/String; = "REASON_NOT_FOUND"

.field public static final REASON_OTHER:Ljava/lang/String; = "REASON_OTHER"

.field public static final REASON_SERVER:Ljava/lang/String; = "REASON_SERVER"

.field public static final REASON_SUCCESS:Ljava/lang/String; = "REASON_SUCCESS"


# instance fields
.field private final message:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->reason:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;

    .line 72
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->reason:Ljava/lang/String;

    iget-object v2, p1, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineRegionError{reason=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/offline/OfflineRegionError;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
