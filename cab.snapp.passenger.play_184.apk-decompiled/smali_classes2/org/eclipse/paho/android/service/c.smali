.class interface abstract Lorg/eclipse/paho/android/service/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/c$a;
    }
.end annotation


# virtual methods
.method public abstract clearArrivedMessages(Ljava/lang/String;)V
.end method

.method public abstract close()V
.end method

.method public abstract discardArrived(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getAllArrivedMessages(Ljava/lang/String;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/paho/android/service/c$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract storeArrived(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)Ljava/lang/String;
.end method
