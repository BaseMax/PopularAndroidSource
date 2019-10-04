.class public final Lc/e/a/b/h/b/fc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/g/f/fd;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lc/e/a/b/g/f/fd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/fc;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lc/e/a/b/h/b/fc;->a:Lc/e/a/b/g/f/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/fc;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->D()Lc/e/a/b/h/b/gb;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/fc;->a:Lc/e/a/b/g/f/fd;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/g/f/fd;)V

    return-void
.end method
