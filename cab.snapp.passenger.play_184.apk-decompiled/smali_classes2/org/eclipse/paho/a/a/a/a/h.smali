.class public abstract Lorg/eclipse/paho/a/a/a/a/h;
.super Lorg/eclipse/paho/a/a/a/a/u;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/r;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    return-void
.end method


# virtual methods
.method public getHeaderBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/h;->getHeader()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lorg/eclipse/paho/a/a/s;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/p;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHeaderLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/h;->getHeaderBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getHeaderOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getPayloadBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/a/h;->getPayload()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lorg/eclipse/paho/a/a/s;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/p;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/a/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPayloadLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getPayloadOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
