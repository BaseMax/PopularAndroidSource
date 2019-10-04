.class public final Lc/e/a/b/h/b/gc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/g/f/fd;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzaj;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lc/e/a/b/g/f/fd;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/gc;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lc/e/a/b/h/b/gc;->a:Lc/e/a/b/g/f/fd;

    iput-object p3, p0, Lc/e/a/b/h/b/gc;->b:Lcom/google/android/gms/measurement/internal/zzaj;

    iput-object p4, p0, Lc/e/a/b/h/b/gc;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/gc;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->D()Lc/e/a/b/h/b/gb;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/gc;->a:Lc/e/a/b/g/f/fd;

    iget-object v2, p0, Lc/e/a/b/h/b/gc;->b:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v3, p0, Lc/e/a/b/h/b/gc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/g/f/fd;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V

    return-void
.end method
