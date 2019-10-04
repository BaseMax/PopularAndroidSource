.class final Lorg/eclipse/paho/android/service/e;
.super Lorg/eclipse/paho/android/service/g;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/f;


# instance fields
.field private b:Lorg/eclipse/paho/a/a/q;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;Lorg/eclipse/paho/a/a/q;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/a/a/c;)V

    .line 34
    iput-object p4, p0, Lorg/eclipse/paho/android/service/e;->b:Lorg/eclipse/paho/a/a/q;

    return-void
.end method


# virtual methods
.method public final getMessage()Lorg/eclipse/paho/a/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/eclipse/paho/android/service/e;->b:Lorg/eclipse/paho/a/a/q;

    return-object v0
.end method
