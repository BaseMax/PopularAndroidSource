.class public final Lorg/eclipse/paho/a/a/o;
.super Lorg/eclipse/paho/a/a/v;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/eclipse/paho/a/a/q;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/q;->setMessage(Lorg/eclipse/paho/a/a/q;)V

    return-void
.end method

.method public final getMessage()Lorg/eclipse/paho/a/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v0

    return-object v0
.end method
