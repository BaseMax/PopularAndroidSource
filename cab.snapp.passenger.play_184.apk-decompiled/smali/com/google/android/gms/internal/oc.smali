.class public final Lcom/google/android/gms/internal/oc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$a$e;


# static fields
.field public static final zzkbs:Lcom/google/android/gms/internal/oc;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Ljava/lang/Long;

.field private final h:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/od;

    invoke-direct {v0}, Lcom/google/android/gms/internal/od;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/oc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/oc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/oc;->zzkbs:Lcom/google/android/gms/internal/oc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oc;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oc;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/oc;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oc;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oc;->f:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/oc;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/oc;->g:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/oc;->h:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oc;->b:Z

    return v0
.end method

.method public final zzbdc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oc;->a:Z

    return v0
.end method

.method public final zzbdd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oc;->d:Z

    return v0
.end method

.method public final zzbde()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbdf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oc;->f:Z

    return v0
.end method

.method public final zzbdg()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oc;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzbdh()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oc;->h:Ljava/lang/Long;

    return-object v0
.end method
