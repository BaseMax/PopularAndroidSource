.class public final Lc/e/a/b/h/b/jc;
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
    iput-object p1, p0, Lc/e/a/b/h/b/jc;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lc/e/a/b/h/b/jc;->a:Lc/e/a/b/g/f/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/jc;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc/e/a/b/h/b/Y;

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/jc;->a:Lc/e/a/b/g/f/fd;

    iget-object v2, p0, Lc/e/a/b/h/b/jc;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc/e/a/b/h/b/Y;

    .line 3
    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->u()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;Z)V

    return-void
.end method
