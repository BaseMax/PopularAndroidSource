.class Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;
.super Lcom/mapbox/mapboxsdk/module/telemetry/MapBaseEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$PerformanceAttribute;
    }
.end annotation


# static fields
.field private static final PERFORMANCE_TRACE:Ljava/lang/String; = "mobile.performance_trace"


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$PerformanceAttribute<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final counters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$PerformanceAttribute<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/google/gson/JsonObject;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/MapBaseEvent;-><init>(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;)V

    .line 58
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->sessionId:Ljava/lang/String;

    const-string p1, "attributes"

    .line 59
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$1;

    invoke-direct {p2, p0}, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$1;-><init>(Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;)V

    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->initList(Ljava/lang/String;Lcom/google/gson/b/a;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->attributes:Ljava/util/List;

    const-string p1, "counters"

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$2;

    invoke-direct {p2, p0}, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$2;-><init>(Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;)V

    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->initList(Ljava/lang/String;Lcom/google/gson/b/a;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->counters:Ljava/util/List;

    const-string p1, "metadata"

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->initMetaData(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->metadata:Lcom/google/gson/JsonObject;

    return-void
.end method

.method private initList(Ljava/lang/String;Lcom/google/gson/b/a;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/gson/b/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$PerformanceAttribute<",
            "TT;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/b/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    .line 70
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private initMetaData(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 2

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p1

    .line 79
    :cond_0
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 113
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;

    .line 115
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->attributes:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->attributes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->attributes:Ljava/util/List;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 121
    :cond_5
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->counters:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->counters:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->counters:Ljava/util/List;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 124
    :cond_7
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->metadata:Lcom/google/gson/JsonObject;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->metadata:Lcom/google/gson/JsonObject;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Lcom/google/gson/JsonObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    if-nez p1, :cond_9

    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$PerformanceAttribute<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->attributes:Ljava/util/List;

    return-object v0
.end method

.method getCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent$PerformanceAttribute<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->counters:Ljava/util/List;

    return-object v0
.end method

.method getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "mobile.performance_trace"

    return-object v0
.end method

.method getMetadata()Lcom/google/gson/JsonObject;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->metadata:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->sessionId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->attributes:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->counters:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->metadata:Lcom/google/gson/JsonObject;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerformanceEvent{sessionId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->attributes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", counters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->counters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;->metadata:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
