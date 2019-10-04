.class public interface abstract Lcom/apptentive/android/sdk/storage/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# virtual methods
.method public abstract deserialize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation
.end method
