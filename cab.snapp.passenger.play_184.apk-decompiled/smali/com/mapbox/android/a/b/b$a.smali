.class final Lcom/mapbox/android/a/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/c/c;
.implements Lcom/google/android/gms/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/c;",
        "Lcom/google/android/gms/c/d<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/android/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/android/a/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/android/a/b/d<",
            "Lcom/mapbox/android/a/b/i;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/mapbox/android/a/b/b$a;->a:Lcom/mapbox/android/a/b/d;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mapbox/android/a/b/b$a;->a:Lcom/mapbox/android/a/b/d;

    invoke-interface {v0, p1}, Lcom/mapbox/android/a/b/d;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Landroid/location/Location;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mapbox/android/a/b/b$a;->a:Lcom/mapbox/android/a/b/d;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/mapbox/android/a/b/i;->create(Landroid/location/Location;)Lcom/mapbox/android/a/b/i;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/android/a/b/i;->create(Ljava/util/List;)Lcom/mapbox/android/a/b/i;

    move-result-object p1

    .line 132
    :goto_0
    invoke-interface {v0, p1}, Lcom/mapbox/android/a/b/d;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/mapbox/android/a/b/b$a;->onSuccess(Landroid/location/Location;)V

    return-void
.end method
