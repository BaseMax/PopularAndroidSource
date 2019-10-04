.class public interface abstract Lcom/google/android/gms/auth/api/signin/b;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_SIGN_IN_ACCOUNT:Ljava/lang/String; = "signInAccount"


# virtual methods
.method public abstract getSignInIntent(Lcom/google/android/gms/common/api/f;)Landroid/content/Intent;
.end method

.method public abstract getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/e;
.end method

.method public abstract revokeAccess(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/h;
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

.method public abstract signOut(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/h;
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

.method public abstract silentSignIn(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            ")",
            "Lcom/google/android/gms/common/api/g<",
            "Lcom/google/android/gms/auth/api/signin/e;",
            ">;"
        }
    .end annotation
.end method
