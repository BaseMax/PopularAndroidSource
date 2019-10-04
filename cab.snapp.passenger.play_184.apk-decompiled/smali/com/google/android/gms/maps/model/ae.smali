.class final Lcom/google/android/gms/maps/model/ae;
.super Lcom/google/android/gms/maps/model/a/c;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/model/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/ae;->a:Lcom/google/android/gms/maps/model/l;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/ae;->a:Lcom/google/android/gms/maps/model/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/l;->getTile(III)Lcom/google/android/gms/maps/model/Tile;

    move-result-object p1

    return-object p1
.end method
