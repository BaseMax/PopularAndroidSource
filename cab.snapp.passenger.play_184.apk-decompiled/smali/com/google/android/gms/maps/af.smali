.class final Lcom/google/android/gms/maps/af;
.super Lcom/google/android/gms/maps/a/c$a;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/af;->a:Lcom/google/android/gms/maps/d;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final activate(Lcom/google/android/gms/maps/a/u;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/af;->a:Lcom/google/android/gms/maps/d;

    new-instance v1, Lcom/google/android/gms/maps/ag;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/ag;-><init>(Lcom/google/android/gms/maps/a/u;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/d;->activate(Lcom/google/android/gms/maps/d$a;)V

    return-void
.end method

.method public final deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/af;->a:Lcom/google/android/gms/maps/d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/d;->deactivate()V

    return-void
.end method
