.class public final Lcom/google/android/gms/internal/eo;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b<",
            "Lcom/google/android/gms/internal/ew;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzebf:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/ew;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzgbv:Lcom/google/android/gms/internal/eq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eo;->zzebf:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/internal/ep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/common/api/a$b;

    sget-object v2, Lcom/google/android/gms/internal/eo;->zzebf:Lcom/google/android/gms/common/api/a$g;

    const-string v3, "Common.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/internal/eo;->API:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/er;

    invoke-direct {v0}, Lcom/google/android/gms/internal/er;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/eo;->zzgbv:Lcom/google/android/gms/internal/eq;

    return-void
.end method
