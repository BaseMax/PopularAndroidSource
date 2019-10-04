.class public final Lcom/google/android/gms/auth/api/a$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

.field protected b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzeft:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->a:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final forceEnableSaveDialog()Lcom/google/android/gms/auth/api/a$a$a;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzaat()Lcom/google/android/gms/auth/api/a$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/a$a;-><init>(Lcom/google/android/gms/auth/api/a$a$a;)V

    return-object v0
.end method
