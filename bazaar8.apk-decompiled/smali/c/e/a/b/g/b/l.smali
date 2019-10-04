.class public final Lc/e/a/b/g/b/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@17.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "user_consent"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lc/e/a/b/g/b/l;->a:Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sget-object v1, Lc/e/a/b/g/b/l;->a:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/e/a/b/g/b/l;->b:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
