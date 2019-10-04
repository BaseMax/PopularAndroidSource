.class final Lorg/eclipse/paho/android/service/f;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:Lorg/eclipse/paho/android/service/MqttService;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/eclipse/paho/android/service/f;->b:Lorg/eclipse/paho/android/service/MqttService;

    return-void
.end method


# virtual methods
.method public final getActivityToken()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/eclipse/paho/android/service/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getService()Lorg/eclipse/paho/android/service/MqttService;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/eclipse/paho/android/service/f;->b:Lorg/eclipse/paho/android/service/MqttService;

    return-object v0
.end method
