.class public final Lcom/google/android/gms/internal/da;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/a$a;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/a$a;->zzaas()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/a$a;->zzaas()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzeft:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.api.credentials.PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "com.google.android.gms.credentials.hintRequestVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.credentials.RequestType"

    const-string v2, "Hints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.credentials.ClaimedCallingPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.credentials.PasswordSpecification"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/em;->zza(Lcom/google/android/gms/internal/zzbfq;Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "com.google.android.gms.credentials.HintRequest"

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/em;->zza(Lcom/google/android/gms/internal/zzbfq;Landroid/content/Intent;Ljava/lang/String;)V

    const/16 p1, 0x7d0

    const/high16 p2, 0x8000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
