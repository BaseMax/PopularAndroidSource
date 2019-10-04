.class final Lcom/google/android/gms/maps/an;
.super Lcom/google/android/gms/maps/a/by;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/an;->a:Lcom/google/android/gms/maps/c$c;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/by;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/an;->a:Lcom/google/android/gms/maps/c$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$c;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method
