.class Lorg/eclipse/paho/android/service/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field final synthetic c:Lorg/eclipse/paho/android/service/d;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput-object p2, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;B)V
    .locals 0

    .line 976
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 2

    .line 991
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    .line 992
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 991
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 997
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    .line 3067
    iget-object p1, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    .line 997
    iget-object p2, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    .line 4067
    iget-object p2, p2, Lorg/eclipse/paho/android/service/d;->b:Ljava/lang/String;

    .line 997
    sget-object v0, Lorg/eclipse/paho/android/service/i;->ERROR:Lorg/eclipse/paho/android/service/i;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 3

    .line 986
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    .line 1067
    iget-object p1, p1, Lorg/eclipse/paho/android/service/d;->d:Lorg/eclipse/paho/android/service/MqttService;

    .line 986
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    .line 2067
    iget-object v0, v0, Lorg/eclipse/paho/android/service/d;->b:Ljava/lang/String;

    .line 986
    sget-object v1, Lorg/eclipse/paho/android/service/i;->OK:Lorg/eclipse/paho/android/service/i;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    return-void
.end method
