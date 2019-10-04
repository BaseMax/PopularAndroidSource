.class public final Lc/e/a/b/h/b/hc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/g/f/fd;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lc/e/a/b/g/f/fd;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/hc;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lc/e/a/b/h/b/hc;->a:Lc/e/a/b/g/f/fd;

    iput-object p3, p0, Lc/e/a/b/h/b/hc;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/hc;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lc/e/a/b/h/b/hc;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/hc;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc/e/a/b/h/b/Y;

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->D()Lc/e/a/b/h/b/gb;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/hc;->a:Lc/e/a/b/g/f/fd;

    iget-object v2, p0, Lc/e/a/b/h/b/hc;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/h/b/hc;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lc/e/a/b/h/b/hc;->d:Z

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/g/f/fd;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
