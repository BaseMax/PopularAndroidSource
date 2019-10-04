.class public final Lcom/google/android/gms/internal/cd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/au;


# instance fields
.field public zzdom:Ljava/lang/String;

.field public zzdzd:D

.field public zzdze:I

.field public zzdzf:I

.field public zzdzg:I

.field public zzdzh:I

.field public zzdzi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cd;->zzdzd:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/cd;->zzdze:I

    iput v0, p0, Lcom/google/android/gms/internal/cd;->zzdzf:I

    iput v0, p0, Lcom/google/android/gms/internal/cd;->zzdzg:I

    iput v0, p0, Lcom/google/android/gms/internal/cd;->zzdzh:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cd;->zzdzi:Ljava/util/Map;

    return-void
.end method
