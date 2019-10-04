.class public interface abstract Lcom/google/android/gms/auth/api/credentials/b;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVITY_RESULT_ADD_ACCOUNT:I = 0x3e8

.field public static final ACTIVITY_RESULT_NO_HINTS_AVAILABLE:I = 0x3ea

.field public static final ACTIVITY_RESULT_OTHER_ACCOUNT:I = 0x3e9

.field public static final CREDENTIAL_PICKER_REQUEST_CODE:I = 0x7d0


# virtual methods
.method public abstract delete(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disableAutoSignIn(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHintPickerIntent(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
.end method

.method public abstract request(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequest;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/auth/api/credentials/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract save(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ")",
            "Lcom/google/android/gms/common/api/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method
