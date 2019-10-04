.class public final Lorg/eclipse/paho/a/a/a/a/i;
.super Lorg/eclipse/paho/a/a/a/a/u;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "Ping"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 29
    invoke-direct {p0, v0}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0xc

    .line 33
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a/u;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final b()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "Ping"

    return-object v0
.end method

.method public final isMessageIdRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
