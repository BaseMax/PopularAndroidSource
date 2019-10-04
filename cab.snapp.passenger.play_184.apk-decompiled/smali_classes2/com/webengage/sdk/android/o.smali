.class public abstract Lcom/webengage/sdk/android/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Intent;)Landroid/location/Location;
.end method

.method protected abstract a()V
.end method

.method public abstract a(DDFLjava/lang/String;Lcom/webengage/sdk/android/WebEngageConfig;)V
.end method

.method protected abstract a(JJFI)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Landroid/location/Location;
.end method

.method public abstract b(Landroid/content/Intent;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/q$a;",
            ">;"
        }
    .end annotation
.end method
