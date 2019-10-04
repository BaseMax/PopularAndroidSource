.class final Lcom/google/android/gms/maps/aa;
.super Lcom/google/android/gms/maps/a/bu;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/c$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/c$b;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/maps/model/a/s;)Lcom/google/android/gms/a/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/c$b;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$b;->getInfoWindow(Lcom/google/android/gms/maps/model/g;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/a/m;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/maps/model/a/s;)Lcom/google/android/gms/a/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/c$b;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$b;->getInfoContents(Lcom/google/android/gms/maps/model/g;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/a/m;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object p1

    return-object p1
.end method
