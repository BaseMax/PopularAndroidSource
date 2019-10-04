.class final Lorg/eclipse/paho/a/a/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Z

.field final synthetic b:Lorg/eclipse/paho/a/a/i;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/a/a/i;Z)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lorg/eclipse/paho/a/a/i$b;->b:Lorg/eclipse/paho/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    iput-boolean p2, p0, Lorg/eclipse/paho/a/a/i$b;->a:Z

    return-void
.end method


# virtual methods
.method public final connectComplete(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final connectionLost(Ljava/lang/Throwable;)V
    .locals 1

    .line 1356
    iget-boolean p1, p0, Lorg/eclipse/paho/a/a/i$b;->a:Z

    if-eqz p1, :cond_0

    .line 1359
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i$b;->b:Lorg/eclipse/paho/a/a/i;

    iget-object p1, p1, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/a/a/a/a;->setRestingState(Z)V

    .line 1360
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i$b;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/i;->c(Lorg/eclipse/paho/a/a/i;)V

    .line 1361
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i$b;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/i;->d(Lorg/eclipse/paho/a/a/i;)V

    :cond_0
    return-void
.end method

.method public final deliveryComplete(Lorg/eclipse/paho/a/a/f;)V
    .locals 0

    return-void
.end method

.method public final messageArrived(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
