.class public final Lcom/google/android/gms/auth/api/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/a$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/auth/api/a$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/a$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/a$a$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/a$a$a;->zzaat()Lcom/google/android/gms/auth/api/a$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/a$a;->a:Lcom/google/android/gms/auth/api/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/a$a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/auth/api/a$a$a;->a:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->c:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/a$a;->d:Z

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/a$a;->c:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    const-string v2, "password_specification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/a$a;->d:Z

    const-string v2, "force_save_dialog"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final zzaas()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->c:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    return-object v0
.end method
