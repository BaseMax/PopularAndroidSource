.class public final Lc/e/a/b/h/b/ic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/g/f/fd;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lc/e/a/b/g/f/fd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ic;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lc/e/a/b/h/b/ic;->a:Lc/e/a/b/g/f/fd;

    iput-object p3, p0, Lc/e/a/b/h/b/ic;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/ic;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/ic;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc/e/a/b/h/b/Y;

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->D()Lc/e/a/b/h/b/gb;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/ic;->a:Lc/e/a/b/g/f/fd;

    iget-object v2, p0, Lc/e/a/b/h/b/ic;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/h/b/ic;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/g/f/fd;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
