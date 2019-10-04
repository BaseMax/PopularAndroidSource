.class final Lcom/google/android/gms/maps/ab;
.super Lcom/google/android/gms/maps/a/al;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/ab;->a:Lcom/google/android/gms/maps/c$t;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzy(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/ab;->a:Lcom/google/android/gms/maps/c$t;

    invoke-static {p1}, Lcom/google/android/gms/a/m;->zzx(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$t;->onMyLocationChange(Landroid/location/Location;)V

    return-void
.end method
