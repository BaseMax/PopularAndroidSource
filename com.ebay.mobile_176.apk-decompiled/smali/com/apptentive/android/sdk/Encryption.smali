.class public interface abstract Lcom/apptentive/android/sdk/Encryption;
.super Ljava/lang/Object;
.source "Encryption.java"


# virtual methods
.method public abstract decrypt([B)[B
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation
.end method

.method public abstract encrypt([B)[B
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation
.end method
