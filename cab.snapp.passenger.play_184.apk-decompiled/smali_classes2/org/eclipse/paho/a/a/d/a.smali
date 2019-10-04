.class public interface abstract Lorg/eclipse/paho/a/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createNetworkModule(Ljava/net/URI;Lorg/eclipse/paho/a/a/n;Ljava/lang/String;)Lorg/eclipse/paho/a/a/a/n;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation
.end method

.method public abstract getSupportedUriSchemes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract validateURI(Ljava/net/URI;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
